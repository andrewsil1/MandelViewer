namespace MandelViewer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 

    using System;
    using System.Diagnostics;
    using System.IO;
    using System.IO.Ports;
    using System.Text;
    using System.Threading;
    using System.Threading.Tasks;
    using System.Windows;
    using System.Windows.Automation.Peers;
    using System.Windows.Automation.Provider;
    using System.Windows.Controls;
    using System.Windows.Data;
    using System.Windows.Media;
    using System.Windows.Media.Imaging;
    using FixedPoint;

    public partial class MainWindow : Window
    {
        static private WriteableBitmap writeableBitmap;
        static private SerialPort _serialPort;
        static int x, y;
        private ImageParams imageParams;
        private Crc32 crc32;

        const int BAUD_RATE = 3000000;

        public delegate void SerialErrorReceivedHandler(object sender, SerialErrorReceivedEventArgs e);

        static void SerialErrorHandler(object sender, SerialErrorReceivedEventArgs e)
        {
            Debug.WriteLine(e.EventType.ToString());
        }

        public MainWindow()
        {
            InitializeComponent();

            crc32 = new Crc32();
            imageParams = new ImageParams(); //Set up standard "zoomed out" starting image coordinates.

            // Bind the UI controls to the object data.
            Binding X0Binding = new Binding("X0")
            {
                Source = imageParams,
                Converter = imageParams.X0
            };
            Binding X1Binding = new Binding("X1")
            {
                Source = imageParams,
                Converter = imageParams.X1
            };
            Binding Y0Binding = new Binding("Y0")
            {
                Source = imageParams,
                Converter = imageParams.Y0
            };

            X0.SetBinding(TextBox.TextProperty, X0Binding);
            X1.SetBinding(TextBox.TextProperty, X1Binding);
            Y0.SetBinding(TextBox.TextProperty, Y0Binding);

            _serialPort = new SerialPort();
            _serialPort.ErrorReceived += SerialErrorHandler;


            // Get a list of serial port names and open the first one we find.
            string[] ports = SerialPort.GetPortNames();
            foreach (string port in ports)
            {
                ComPortcomboBox.Items.Add(port);
            }
            ComPortcomboBox.SelectedItem = ComPortcomboBox.Items[0];

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

            AutomateGo();
        }

        /* Sends a command to the remote after packaging with message length and CRC.
         */
        private void SendCommand(Crc32 crc32, string command, FixedPoint sendParam)
        {
            MemoryStream buf = new MemoryStream();
            buf.Write(GetAscii(command), 0, 1);                             //Command
            buf.Write(BitConverter.GetBytes((uint)12), 0, sizeof(uint));    //Length of message is constant: FP5.35 (8) + CRC(4)
            byte[] val = BitConverter.GetBytes(sendParam.Value);
            buf.Write(val, 0, val.Length);
            uint crcOut = crc32.Get(val);
            byte[] crcBytes = BitConverter.GetBytes(crcOut);
            buf.Write(crcBytes, 0, crcBytes.Length);
            byte[] outBuf = new byte[buf.Length];
            buf.Seek(0, 0);
            buf.Read(outBuf, 0, (int)buf.Length);
            _serialPort.Write(outBuf, 0, outBuf.Length);
            Debug.WriteLine(string.Format("Sent command: {0} CRC:{1:X}", command, crcOut));
        }

        /* Helper function to turn default Unicode strings into ASCII for serial transmission.
         */
        private byte[] GetAscii(string str)
        {
            byte[] unicodeBytes = Encoding.Unicode.GetBytes(str);
            return Encoding.Convert(Encoding.Unicode, Encoding.ASCII, unicodeBytes);
        }

        /* Listen to the serial port for a "Ready" prompt.
         */
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
                    _serialPort.Write("Z"); //If read timed out, send a little NOP kick to the other end to try to make it prompt us again.
                }

            } while (!prompt.Equals("@"));
            Debug.WriteLine("Received Ready Prompt.");
        }

        #region Pixel Colors and Translation

        /* Takes an "N iterations" value from the calculator and translates to a monochromatic brightness value using a Sqrt function to enhance contrast.
         */
        private static int GetColor(UInt16 n)
        {
            const int MAX_ITERATIONS = 2000;
            int mapping = 0;
            if (n < MAX_ITERATIONS)
            {
                double quotient = Math.Sqrt((double)n / (double)MAX_ITERATIONS);
                int color = (int)Math.Round(0xFF * quotient);

                mapping = color << 16 | color << 8 | color;
            }
            return mapping;
        }

        /* The DrawPixel method updates the WriteableBitmap by using unsafe code to write a pixel into the back buffer.
         * Must run on the dispatcher thread.
        */
        private static void DrawPixel(int column, int row, int pixValue)
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

        /* Takes an entire CRC-validated chunk of received data and renders it to the screen on the Dispatcher thread.
         */
        private void DrawPayload(object data)
        {
            Dispatcher.Invoke(() =>
            {
                byte[] payload = (byte[]) data;

                for (int index = 0; index < payload.Length; index += 2)
                {
                    DrawPixel(x++, y, GetColor(BitConverter.ToUInt16(payload, index)));
                    if (x == Fractal.Width)
                    {
                        x = 0;
                        y++;
                    }
                    if (y == Fractal.Height) // This is true only when we start a new image after one has already been drawn.
                    {
                        y = 0;
                    }
                }
            });
        }
        #endregion

        /* This is the primary "work" method which waits for the calculation kicked off elsewhere to return data. 
         * As it comes in, we check the CRC of each packet, and then render it as a background task.
         */
        private void DoCalculation(Object stateInfo)
        {
            int size = 65536; //BUGBUG: Get this size from the FPGA.
            int payloadBytes = 0;
            byte[] buffer = new byte[size];
            bool done = false;
            bool firstPacket = true;

            while (!done) //TODO: Turn this into a fixed loop by having FPGA send us the total incoming number of packets first.
            {
                while (_serialPort.BytesToRead < 4) { Thread.Sleep(200); } //TODO: Properly #define the consts here.
                if (firstPacket)
                {
                    Debug.WriteLine("{0:hh:mm:ss.fff}: Data is returning.", DateTime.Now);
                    Dispatcher.Invoke(() =>
                    {
                        labelStatus.Content = "Receiving...";
                    });

                }
                firstPacket = false;

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

                    ThreadPool.QueueUserWorkItem(DrawPayload, payload);
                }
                else
                {
                    done = true;
                    Debug.WriteLine(string.Format("{0:hh:mm:ss.fff}: Total Bytes read: {1}", DateTime.Now, payloadBytes));
                    Dispatcher.Invoke(() =>
                    {
                        labelStatus.Content = "Ready";
                        ChangeButtonStates(true);
                    });
                }
            }
        }

        /* Allow all of the modal buttons to be enabled/disabled as a group. (Don't allow anyone to press while data is still incoming, for example.)
         */
        private void ChangeButtonStates(bool state)
        {
            buttonGo.IsEnabled = state;
            buttonZoom.IsEnabled = state;
            buttonUp.IsEnabled = state;
            buttonDown.IsEnabled = state;
            buttonLeft.IsEnabled = state;
            buttonRight.IsEnabled = state;
        }

        private void ButtonGo_Click(object sender, RoutedEventArgs e)
        {
            ChangeButtonStates(false);
            WaitForReady();
            SendCommand(crc32, "A", imageParams.X0);
            WaitForReady();
            SendCommand(crc32, "B", imageParams.X1);
            WaitForReady();
            SendCommand(crc32, "C", imageParams.Y0);
            WaitForReady();
            _serialPort.Write("G");
            Debug.WriteLine("{0:hh:mm:ss.fff}: Calculation launched.", DateTime.Now);
            this.labelStatus.Content = "Working...";

            ThreadPool.QueueUserWorkItem(DoCalculation);
        }


        /* When updating the bound controls programmatically, need to give them a kick to update the source data object.
         */
        private void UpdateBindings()
        {
            BindingExpression x0Expr = X0.GetBindingExpression(TextBox.TextProperty);
            BindingExpression x1Expr = X1.GetBindingExpression(TextBox.TextProperty);
            BindingExpression y0Expr = Y0.GetBindingExpression(TextBox.TextProperty);
            x0Expr.UpdateSource();
            x1Expr.UpdateSource();
            y0Expr.UpdateSource();
        }

        /* Helper function:Click the "Go" button automatically. WPF makes this a bit less than straightforward...
         */
        private void AutomateGo()
        {
            ButtonAutomationPeer peer = new ButtonAutomationPeer(this.buttonGo);
            IInvokeProvider invokeProv = peer.GetPattern(PatternInterface.Invoke) as IInvokeProvider;
            invokeProv.Invoke();
        }

        /* Handle all of the "move" buttons with a single event.  Move the window around and recalculate.*/
        private void MoveButtons_Click(object sender, RoutedEventArgs e)
        {
            //This is just easier than implementing actual fixed-point math on the underlying data for the time being,
            //although we may lose precision in the conversions back and forth. Something to do later...
            double.TryParse(X0.Text, out double x0);
            double.TryParse(X1.Text, out double x1);
            double.TryParse(Y0.Text, out double y0);
            double delta = (x1 - x0) * 0.15;

            if (e.Source.Equals(buttonLeft))
            {
                X0.Text = (x0 - delta).ToString();
                X1.Text = (x1 - delta).ToString();
            } else if (e.Source.Equals(buttonRight))
            {
                X0.Text = (x0 + delta).ToString();
                X1.Text = (x1 + delta).ToString();
            } else if (e.Source.Equals(buttonUp))
            {
                Y0.Text = (y0 + (delta * 0.75)).ToString();
            } else if (e.Source.Equals(buttonDown)) {
                Y0.Text = (y0 - (delta * 0.75)).ToString();
            } else
            {
                throw new Exception("Received MoveButtons_Click from an unknown source.");
            }
            UpdateBindings();
            AutomateGo();
        }

        /* The Zoom button closes in the sides to increase the zoom level.
         */
        private void ButtonZoom_Click(object sender, RoutedEventArgs e)
        {
            // By default, let's move the sides in by 15% and adjust the Y top line to match.
            double.TryParse(X0.Text, out double x0);
            double.TryParse(X1.Text, out double x1);
            double.TryParse(Y0.Text, out double y0);
            double width = x1 - x0;
            double delta = width * 0.15;
            X0.Text = (x0 + delta).ToString();
            X1.Text = (x1 - delta).ToString();
            Y0.Text = (y0 - (delta * .75)).ToString(); //Y delta is 3/4 of X in a 4:3 aspect ratio image.
            UpdateBindings();
            AutomateGo();
        }


        /* Used to open the selected COM port with the expected parameters.
         */
        private void ComPortcomboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _serialPort.Close();
            _serialPort.PortName = ComPortcomboBox.SelectedItem.ToString();
            _serialPort.DataBits = 8;
            _serialPort.BaudRate = BAUD_RATE;
            _serialPort.Parity = Parity.None;
            _serialPort.StopBits = StopBits.One;
            _serialPort.Handshake = Handshake.None;
            _serialPort.ReadBufferSize = 1 << 17; //receive buffer

            // Set the read/write timeouts
            _serialPort.ReadTimeout = 1000;
            _serialPort.WriteTimeout = 1000;

            _serialPort.Open();
        }
        
        private void MainWindow1_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _serialPort.Close();
        }
    }
}
