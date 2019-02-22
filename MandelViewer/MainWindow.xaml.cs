namespace MandelViewer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 

    using System;
    using System.Collections.Generic;
    using System.Diagnostics;
    using System.IO;
    using System.IO.Ports;
    using System.Linq;
    using System.Text;
    using System.Threading;
    using System.Threading.Tasks;
    using System.Windows;
    using System.Windows.Controls;
    using System.Windows.Data;
    using System.Windows.Documents;
    using System.Windows.Input;
    using System.Windows.Media;
    using System.Windows.Media.Imaging;
    using System.Windows.Navigation;
    using System.Windows.Shapes;
    using FixedPoint;
    
    public partial class MainWindow : Window
    {
        static WriteableBitmap writeableBitmap;
        static SerialPort _serialPort;

        const int BAUD_RATE = 3000000;

        public MainWindow()
        {
            InitializeComponent();

            ImageParams imageParams = new ImageParams(new FixedPoint(40,35,-2), new FixedPoint(40,35,1), new FixedPoint(40,35,1.25), (Int32)Fractal.Width); //Basic Mandelbrot image.
            Binding X0Binding = new Binding("X0")
            {
                Source = imageParams,
                Converter = imageParams.X0
            };
            X0.SetBinding(TextBox.TextProperty, X0Binding);

            Binding X1Binding = new Binding("X1")
            {
                Source = imageParams,
                Converter = imageParams.X1
            };
            X1.SetBinding(TextBox.TextProperty, X1Binding);

            Binding Y0Binding = new Binding("Y0")
            {
                Source = imageParams,
                Converter = imageParams.Y0
            };
            Y0.SetBinding(TextBox.TextProperty, Y0Binding);

            Crc32 crc32 = new Crc32();
            _serialPort = new SerialPort();
            using (_serialPort as SerialPort)
            {
                // Get a list of serial port names.
                string[] ports = SerialPort.GetPortNames();
                foreach (string port in ports)
                {
                    ComPortcomboBox.Items.Add(port);
                }

                Fractal.SnapsToDevicePixels = true;
                // Create a bitmap and tie it to the onscreen control.
                writeableBitmap = new WriteableBitmap(
                    (Int32)Fractal.Width,
                    (Int32)Fractal.Height,
                    96,
                    96,
                    PixelFormats.Bgr32,
                    null);

                RenderOptions.SetBitmapScalingMode(this.Fractal, BitmapScalingMode.HighQuality);
                RenderOptions.SetEdgeMode(this.Fractal, EdgeMode.Unspecified);

                this.Fractal.Stretch = Stretch.None;
                this.Fractal.Source = writeableBitmap;

                _serialPort.Close();
                _serialPort.PortName = "COM4";
                _serialPort.DataBits = 8;
                _serialPort.BaudRate = BAUD_RATE;
                _serialPort.Parity = Parity.None;
                _serialPort.StopBits = StopBits.One;
                _serialPort.Handshake = Handshake.None;
                _serialPort.ReadBufferSize = 1 << 17;

                // Set the read/write timeouts
                _serialPort.ReadTimeout = 1000;
                _serialPort.WriteTimeout = 1000;

                _serialPort.Open();
                FixedPoint fp = new FixedPoint(40, 35);

                WaitForReady();
                SendCommand(crc32, fp, "A", imageParams.X0);
                WaitForReady();
                SendCommand(crc32, fp, "B", imageParams.X1);
                WaitForReady();
                SendCommand(crc32, fp, "C", imageParams.Y0);
                WaitForReady();
                _serialPort.Write("G");

                int size = 65536; //BUGBUG: Get this size from the FPGA.
                int payloadBytes = 0;
                byte[] buffer = new byte[size];
                bool done = false;

                int y = 0;
                int x = 0;
                while (!done) //TODO: Turn this into a fixed loop by having FPGA send us the total incoming number of packets first.
                {
                    while (_serialPort.BytesToRead < 4) { } //TODO: Properly #define the consts here.

                    //How big is the incoming packet?
                    _serialPort.Read(buffer, 0, 4);
                    int packetSize = BitConverter.ToInt32(buffer, 0);

                    while (_serialPort.BytesToRead < packetSize) { Thread.Sleep(50); } //TODO: Properly #define the consts here.
                    _serialPort.Read(buffer, 0, packetSize);

                    string s = System.Text.Encoding.UTF8.GetString(buffer, 0, 4);
                    if (s != "DONE")
                    {
                        UInt32 incomingCrc = BitConverter.ToUInt32(buffer, packetSize - 4); //Extract CRC from the packet.
                        byte[] payload = new byte[packetSize - 4];                          //Copy bytes without the CRC tacked on to a new buffer
                        Array.Copy(buffer, payload, packetSize - 4);
                        payloadBytes += payload.Length;
                        UInt32 calcCrc = crc32.Get(payload);

                        if (calcCrc != incomingCrc)
                        {
                            Debug.Write(String.Format("Expected CRC: {0:X}  Received CRC: {1:X}\n", incomingCrc, calcCrc));
                            throw new Exception("CRC failure during reception.");
                        }

                        for (int index = 0; index < payload.Length; index += 2)
                        {
                            DrawPixel(x++, y, GetColor(BitConverter.ToUInt16(payload, index)));
                            if (x == Fractal.Width)
                            {
                                x = 0;
                                y++;
                            }
                        }
                    }
                    else
                    {
                        done = true;
                        Debug.WriteLine(string.Format("Total Bytes read: {0}", payloadBytes));
                    }
                }

                /*WaitForReady(_serialPort);
                _serialPort.Write("X");
                Debug.WriteLine("Sent Exit command.");*/
            }
        }

        private void SendCommand(Crc32 crc32, FixedPoint fp, string command, FixedPoint sendParam)
        {
            MemoryStream buf = new MemoryStream();
            buf.Write(GetAscii(command), 0, 1); //Command
            buf.Write(BitConverter.GetBytes((uint)12), 0, sizeof(uint)); //Length of message + CRC
            byte[] val = BitConverter.GetBytes(sendParam.Value);
            buf.Write(val, 0, val.Length); //X0
            uint crcOut = crc32.Get(val);
            byte[] crcBytes = BitConverter.GetBytes(crcOut);
            buf.Write(crcBytes, 0, crcBytes.Length);
            byte[] outBuf = new byte[buf.Length];
            buf.Seek(0, 0);
            buf.Read(outBuf, 0, (int)buf.Length);
            _serialPort.Write(outBuf, 0, outBuf.Length);
            Debug.WriteLine(string.Format("Sent command: {0} CRC:{1:X}",command,crcOut));
        }

        private byte[] GetAscii(string str)
        {
            byte[] unicodeBytes = Encoding.Unicode.GetBytes(str);
            return Encoding.Convert(Encoding.Unicode, Encoding.ASCII, unicodeBytes);
        }

        private static void WaitForReady()
        {
            string prompt = string.Empty;
            do
            {
                try
                {
                    prompt = _serialPort.ReadLine();
                }
                #pragma warning disable CS0168 // Variable is declared but never used
                catch (TimeoutException e)
                #pragma warning restore CS0168 // Variable is declared but never used
                {
                    _serialPort.Write("Z"); //If read timed out, send a little NOP kick to the other end to make it prompt us again.
                }

            } while (!prompt.Equals("@"));
            Debug.WriteLine("Received Ready Prompt.");
        }

        static int GetColor(UInt16 n)
        {
            const int MAX_ITERATIONS = 2000;
            int mapping = 0x00FFFFFF;
            if (n <= MAX_ITERATIONS)
            {
                double quotient = (double)n / (double)MAX_ITERATIONS;
                int color = Math.Min((int)(Math.Round(quotient * 256)),0xFF);

                if (quotient > 0.5)
                {
                    // Close to the mandelbrot set the color changes from green to white
                    mapping = color << 16 | 0xFF << 8 | color << 0;
                }
                else
                {
                    // Far away it changes from black to green
                    mapping = color << 8;
                }
            }
            return mapping;
        }

        // The DrawPixel method updates the WriteableBitmap by using
        // unsafe code to write a pixel into the back buffer.
        static void DrawPixel(int column, int row, int pixValue)
        {
            try
            {
                // Reserve the back buffer for updates.
                writeableBitmap.Lock();

                unsafe
                {
                    // Get a pointer to the back buffer.
                    IntPtr pBackBuffer = writeableBitmap.BackBuffer;

                    // Find the address of the pixel to draw.
                    pBackBuffer += row * writeableBitmap.BackBufferStride;
                    pBackBuffer += column * 4;

                    // Assign the color data to the pixel.
                    *(int*)pBackBuffer = pixValue;
                }

                // Specify the area of the bitmap that changed.
                writeableBitmap.AddDirtyRect(new Int32Rect(column, row, 1, 1));
            }
            finally
            {
                // Release the back buffer and make it available for display.
                writeableBitmap.Unlock();
            }
        }

        private void ComPortcomboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _serialPort.Close();
            _serialPort.PortName = ComPortcomboBox.SelectedItem.ToString();
            _serialPort.DataBits = 8;
            _serialPort.BaudRate = BAUD_RATE;
            _serialPort.Parity = Parity.None;
            _serialPort.StopBits = StopBits.One;
            _serialPort.Handshake = Handshake.None;
            _serialPort.ReadBufferSize = 1 << 17;

            // Set the read/write timeouts
            _serialPort.ReadTimeout = 1000;
            _serialPort.WriteTimeout = 1000;

            _serialPort.Open();

        }
    }
}
