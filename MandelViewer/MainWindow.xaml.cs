namespace MandelViewer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>

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
    using K4os.Compression.LZ4.Streams;

    using FixedPoint;

    public partial class MainWindow : Window
    {
        private WriteableBitmap writeableBitmap;
        static private SerialPort _serialPort;
        private int x, y;
        private ushort maxIter = 2000;
        private int ImageBufferLength;
        private ImageParams imageParams;
        private Crc32 crc32;
        private int zoomPercent;
            
        const int BAUD_RATE = 3000000; //FTDI chip can't handle anything higher.

        public delegate void SerialErrorReceivedHandler(object sender, SerialErrorReceivedEventArgs e);
        

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
                (int)Fractal.Width,
                (int)Fractal.Height,
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

        #region Serial Processing
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

        //Overload sends params which are uShorts rather than FixedPoint.
        private void SendCommand(Crc32 crc32, string command, string sendParam)
        {
            bool OK = ushort.TryParse(sendParam, out ushort result);            // Hardware only supports 16-bit iteration values.
            if (OK)
            {
                MemoryStream buf = new MemoryStream();
                buf.Write(GetAscii(command), 0, 1);                            // Command
                buf.Write(BitConverter.GetBytes((uint)8), 0, sizeof(uint));    // Length of message is constant: uint(4) + CRC(4)
                byte[] val = BitConverter.GetBytes((uint)result);              // Send short as uint32.
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
            else
            {
                Debug.WriteLine("maxIterations was not parsable as a uShort.");
            }
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

        static void SerialErrorHandler(object sender, SerialErrorReceivedEventArgs e)
        {
            Debug.WriteLine(e.EventType.ToString());
        }
        #endregion

        #region Pixel Colors and Translation

        /* Stolen from Stack Exchange...
         */
        void HsvToRgb(double h, double S, double V, out int r, out int g, out int b)
        {
            double H = h;
            while (H < 0) { H += 360; };
            while (H >= 360) { H -= 360; };
            double R, G, B;
            if (V <= 0)
            { R = G = B = 0; }
            else if (S <= 0)
            {
                R = G = B = V;
            }
            else
            {
                double hf = H / 60.0;
                int i = (int)Math.Floor(hf);
                double f = hf - i;
                double pv = V * (1 - S);
                double qv = V * (1 - S * f);
                double tv = V * (1 - S * (1 - f));
                switch (i)
                {

                    // Red is the dominant color

                    case 0:
                        R = V;
                        G = tv;
                        B = pv;
                        break;

                    // Green is the dominant color

                    case 1:
                        R = qv;
                        G = V;
                        B = pv;
                        break;
                    case 2:
                        R = pv;
                        G = V;
                        B = tv;
                        break;

                    // Blue is the dominant color

                    case 3:
                        R = pv;
                        G = qv;
                        B = V;
                        break;
                    case 4:
                        R = tv;
                        G = pv;
                        B = V;
                        break;

                    // Red is the dominant color

                    case 5:
                        R = V;
                        G = pv;
                        B = qv;
                        break;

                    // Just in case we overshoot on our math by a little, we put these here. Since its a switch it won't slow us down at all to put these here.

                    case 6:
                        R = V;
                        G = tv;
                        B = pv;
                        break;
                    case -1:
                        R = V;
                        G = pv;
                        B = qv;
                        break;

                    // The color is not defined, we should throw an error.

                    default:
                        //LFATAL("i Value error in Pixel conversion, Value is %d", i);
                        R = G = B = V; // Just pretend its black/white
                        break;
                }
            }
            r = Clamp((int)(R * 255.0));
            g = Clamp((int)(G * 255.0));
            b = Clamp((int)(B * 255.0));
        }

        /// <summary>
        /// Clamp a value to 0-255
        /// </summary>
        int Clamp(int i)
        {
            if (i < 0) return 0;
            if (i > 255) return 255;
            return i;
        }

        /* Takes an entire CRC-validated chunk of received data and renders it to the screen on the Dispatcher thread,
         * using unsafe code to write pixels into the back buffer.
         */
        private void DrawPayload(object data)
        {
            byte[] payload = (byte[])data;
            int[] histo = new int[maxIter + 1];                             // For histogram of escape time values

            for (int index = 0; index < ImageBufferLength; index += 2)      // Build the histogram from the raw values.
            {
                ushort val = BitConverter.ToUInt16(payload, index);
                histo[val]++;
            }

            int total = 0;
            for (int index = 0; index <= maxIter; index++)
            {
                total += histo[index];                               // Get the overall total so individual histo bars have a scale to work against.
            }

            double[] hueTable = new double[maxIter + 1];            // Do a one-time conversion of each possible escape value to a histogram-based hue, in the range of 0-360 degrees.
            double hueTemp = 0;
            for (int i = 0; i <= maxIter; i++)
            {
                hueTemp += histo[i] / (double)total;
                hueTable[i] = hueTemp * 360.0;
            }

            Dispatcher.Invoke(() =>
            {
                // Reserve the back buffer for updates.
                writeableBitmap.Lock();

                for (int index = 0; index < ImageBufferLength; index += 2) //Loop through the escape value array again.
                {
                    unsafe
                    {
                        // Get a pointer to the back buffer.
                        IntPtr pBackBuffer = writeableBitmap.BackBuffer;

                        // Find the address of the pixel to draw.
                        pBackBuffer += y * writeableBitmap.BackBufferStride;
                        pBackBuffer += (x++) * 4;

                        // Assign the color data to the pixel.
                        ushort iters = BitConverter.ToUInt16(payload, index);
                        if (iters == maxIter) //Reserve black for maxIter pixels.
                        {
                            *(int*)pBackBuffer = 0;
                        }
                        else                //Otherwise use histogram color.
                        {
                            HsvToRgb(hueTable[iters], 0.5, 0.85, out int r, out int g, out int b);
                            *(int*)pBackBuffer = (byte)r << 16 | (byte)g << 8 | (byte)b;
                        }
                    }
                   
                    // Update our dirtyrects a line at a time, and update our target x/y value for the next pixel we draw.
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
        private void DoCalculation(object stateInfo)
        {
            int packetSize = 65536 * 2;                     //BUGBUG: Get this size from the FPGA.
            int payloadBytes = 0;                       //This will be a running count of how many compressed payload bytes we've received, not counting headers/CRCs.
            int failedAttempts = 0;
            byte[] buffer = new byte[packetSize];
            bool done = false;
            bool firstPacket = true;
            MemoryStream decompressedData = new MemoryStream(ImageBufferLength);
            MemoryStream incomingData = new MemoryStream(ImageBufferLength);     //We don't really know how well compressed the incoming data will be.
            byte[] drawBuffer = new byte[ImageBufferLength];                     //For the full decompressed data
            byte[] payload = new byte[ImageBufferLength];                        //For the full compressed-as-received data on the serial line

            while (!done) //TODO: Turn this into a fixed loop by having FPGA send us the total incoming number of packets first.
            {
                while (_serialPort.BytesToRead < 4)
                {
                    Thread.Sleep(200);
                } //TODO: Properly #define the consts here.

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
                    uint incomingCrc = BitConverter.ToUInt32(buffer, payloadSegmentEnd); //Extract CRC from the packet.
                    Array.Copy(buffer, 0, payload, payloadBytes, payloadSegmentEnd);       //Copy bytes without the CRC tacked on to the complete payload buffer
                    uint calcCrc = crc32.Get(new ArraySegment<byte>(payload, payloadBytes, payloadSegmentEnd));
                    payloadBytes += payloadSegmentEnd;

                    if (calcCrc != incomingCrc)
                    {
                        Debug.Write(string.Format("Incoming CRC: {0:X}  Calculated CRC: {1:X}\n", incomingCrc, calcCrc));
                        payloadBytes -= payloadSegmentEnd;
                        failedAttempts++;
                        _serialPort.Write(GetAscii("Z"), 0, 1); //Error
                        if (failedAttempts > 5)
                        {
                            Debug.WriteLine("Too many failed receive attempts.");
                            return;
                        }
                    }
                    else
                    {
                        _serialPort.Write(GetAscii("@"), 0, 1); //Acknowledge receipt.
                        failedAttempts = 0;                     //Reset for next packet.
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

        #region UI Event Processing

        /* Allow all of the modal buttons to be enabled/disabled as a group. (Don't allow anyone to press while data is still incoming, for example.)
         */
        private void ChangeButtonStates(bool state)
        {
            buttonGo.IsEnabled = state;
            buttonZoomIn.IsEnabled = state;
            buttonZoomOut.IsEnabled = state;
            buttonUp.IsEnabled = state;
            buttonDown.IsEnabled = state;
            buttonLeft.IsEnabled = state;
            buttonRight.IsEnabled = state;
        }

        private async void ButtonGo_Click(object sender, RoutedEventArgs e)
        {
            ChangeButtonStates(false);
            await Task.Run(() => WaitForReady());
            SendCommand(crc32, "A", imageParams.X0);
            await Task.Run(() => WaitForReady());
            SendCommand(crc32, "B", imageParams.X1);
            await Task.Run(() => WaitForReady());
            SendCommand(crc32, "C", imageParams.Y0);
            await Task.Run(() => WaitForReady());
            SendCommand(crc32, "D", maxItersTextBox.Text);
            await Task.Run(() => WaitForReady());
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
            bool OK = int.TryParse(ZoomPercent.Text, out int movePercent);
            if (OK)
            {
                double delta = (x1 - x0) * movePercent / 100;

                if (e.Source.Equals(buttonLeft))
                {
                    X0.Text = (x0 - delta).ToString();
                    X1.Text = (x1 - delta).ToString();
                }
                else if (e.Source.Equals(buttonRight))
                {
                    X0.Text = (x0 + delta).ToString();
                    X1.Text = (x1 + delta).ToString();
                }
                else if (e.Source.Equals(buttonUp))
                {
                    Y0.Text = (y0 + (delta * 0.75)).ToString();
                }
                else if (e.Source.Equals(buttonDown))
                {
                    Y0.Text = (y0 - (delta * 0.75)).ToString();
                }
                else
                {
                    throw new Exception("Received MoveButtons_Click from an unknown source.");
                }
                UpdateBindings();
                AutomateGo();
            }
        }

        /* The Zoom button closes in or expands the sides to increase the zoom level.
         */
        private void ButtonZoom_Click(object sender, RoutedEventArgs e)
        {
            // By default, let's move the sides in by 15% and adjust the Y top line to match.
            double.TryParse(X0.Text, out double x0);
            double.TryParse(X1.Text, out double x1);
            double.TryParse(Y0.Text, out double y0);
            double width = x1 - x0;
            bool OK = int.TryParse(ZoomPercent.Text,out zoomPercent);
            if (OK)
            {
                double delta = width * zoomPercent / 100;
                if (sender.Equals(buttonZoomOut)) {
                    delta = -delta;
                }
                X0.Text = (x0 + delta).ToString();
                X1.Text = (x1 - delta).ToString();
                Y0.Text = (y0 - (delta * .75)).ToString(); //Y delta is 3/4 of X in a 4:3 aspect ratio image.
                UpdateBindings();
                AutomateGo();
            }
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

        private void MaxItersTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            bool OK = ushort.TryParse(maxItersTextBox.Text, out ushort result);
            if (OK)
            {
                maxIter = result;
            }
        }

        private void MainWindow1_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            _serialPort.Close();
        }
        #endregion
    }
}
