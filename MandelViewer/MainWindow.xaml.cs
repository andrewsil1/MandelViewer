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
    using System.Windows;
    using System.Windows.Automation.Peers;
    using System.Windows.Automation.Provider;
    using System.Windows.Controls;
    using System.Windows.Data;
    using System.Windows.Media;
    using System.Windows.Media.Imaging;
    using K4os.Compression.LZ4.Streams;

    using FixedPoint;

    public partial class MainWindow : Window
    {
        private WriteableBitmap writeableBitmap;
        static private SerialPort _serialPort;
        int x, y;
        private int ImageBufferLength;
        private ImageParams imageParams;
        private Crc32 crc32;
        double zoomPercent = 0.3;
    
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
            Binding ZoomBinding = new Binding("ZoomPercent")
            {
                Source = zoomPercent
            };

            X0.SetBinding(TextBox.TextProperty, X0Binding);
            X1.SetBinding(TextBox.TextProperty, X1Binding);
            Y0.SetBinding(TextBox.TextProperty, Y0Binding);
            ZoomPercent.SetBinding(TextBox.TextProperty, ZoomBinding);

            _serialPort = new SerialPort();
            _serialPort.ErrorReceived += SerialErrorHandler;
            
            ImageBufferLength = (int)Fractal.Height * (int)Fractal.Width * sizeof(short);

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

        /* Takes an entire CRC-validated chunk of received data and renders it to the screen on the Dispatcher thread,
         * using unsafe code to write pixels into the back buffer.
         */
        private void DrawPayload(object data)
        {
            Dispatcher.Invoke(() =>
            {
                byte[] payload = (byte[]) data;
                
                // Reserve the back buffer for updates.
                writeableBitmap.Lock();

                for (int index = 0; index < ImageBufferLength; index += 2)
                {
                    unsafe
                    {
                        // Get a pointer to the back buffer.
                        IntPtr pBackBuffer = writeableBitmap.BackBuffer;

                        // Find the address of the pixel to draw.
                        pBackBuffer += y * writeableBitmap.BackBufferStride;
                        pBackBuffer += (x++) * 4;

                        // Assign the color data to the pixel.
                        *(int*)pBackBuffer = GetColor(BitConverter.ToUInt16(payload, index));
                    }
                   
                    if (x == (int)Fractal.Width)
                    {
                        x = 0;
                        writeableBitmap.AddDirtyRect(new Int32Rect(x, y, (int)Fractal.Width, 1));  // Specify the area of the bitmap that changed.
                        y++;
                    }
                    if (y == (int)Fractal.Height) // This is true only when we start a new image after one has already been drawn.
                    {
                        y = 0;
                    }
                }
                
                // Release the back buffer and make it available for display.
                writeableBitmap.Unlock();
            });
        }
        #endregion

        /* This is the primary "work" method which waits for the calculation kicked off elsewhere to return data. 
         * As it comes in, we check the CRC of each packet, decompress the data from its LZ4 frame, and then render it.
         */
        private void DoCalculation(Object stateInfo)
        {
            int packetSize = 65536;                     //BUGBUG: Get this size from the FPGA.
            int payloadBytes = 0;                       //This will be a running count of how many compressed payload bytes we've received, not counting headers/CRCs.
            byte[] buffer = new byte[packetSize];
            bool done = false;
            bool firstPacket = true;
            MemoryStream decompressedData = new MemoryStream(ImageBufferLength);
            MemoryStream incomingData = new MemoryStream(ImageBufferLength);// / 2); //Assume we'll get at least a 2x ratio.
            Byte[] drawBuffer = new byte[ImageBufferLength]; //For the full decompressed data
            byte[] payload = new byte[ImageBufferLength];// / 2];//For the full compressed-as-received data om the serial line

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

                    firstPacket = false;
                }

                //How big is the incoming packet?
                _serialPort.Read(buffer, 0, 4);
                int packetLength = BitConverter.ToInt32(buffer, 0);

                while (_serialPort.BytesToRead < packetLength) { Thread.Sleep(50); } //TODO: Properly #define the consts here.
                _serialPort.Read(buffer, 0, packetLength);

                string s = System.Text.Encoding.UTF8.GetString(buffer, 0, 4);
                if (s != "DONE")
                {
                    int payloadSegmentEnd = packetLength - 4;
                    UInt32 incomingCrc = BitConverter.ToUInt32(buffer, payloadSegmentEnd); //Extract CRC from the packet.
                    Array.Copy(buffer, 0, payload, payloadBytes, payloadSegmentEnd);       //Copy bytes without the CRC tacked on to the complete payload buffer
                    UInt32 calcCrc = crc32.Get(new ArraySegment<Byte>(payload, payloadBytes, payloadSegmentEnd));
                    payloadBytes += payloadSegmentEnd;

                    if (calcCrc != incomingCrc)
                    {
                        Debug.Write(String.Format("Incoming CRC: {0:X}  Calculated CRC: {1:X}\n", incomingCrc, calcCrc));
                        throw new Exception("CRC failure during reception.");
                    }
                }
                else
                {
                    done = true;
                    incomingData.Write(payload, 0, payloadBytes);                   //Put compressed buffer into a memory stream.
                    incomingData.Seek(0, 0);
                    using (var source = LZ4Stream.Decode(incomingData, 0, false))
                    {
                        source.Read(drawBuffer, 0, ImageBufferLength);              //Pass the stream through the decompressor and store in the drawBuffer.
                    }
                    ThreadPool.QueueUserWorkItem(DrawPayload, drawBuffer);
                    Debug.WriteLine(string.Format("{0:hh:mm:ss.fff}: Total Compressed Bytes read: {1}", DateTime.Now, payloadBytes));
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
            double delta = width * zoomPercent;
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
