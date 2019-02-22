namespace FixedPoint
{
    using System;
    using System.Collections.Generic;
    using System.Globalization;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using System.Windows.Data;

    [ValueConversion(typeof(FixedPoint), typeof(string))]
    public class FixedPoint : IValueConverter
    {
        #region Properties
        private int Width { get; }
        public int FracBits { get; }
        public ulong Value { get; }
        public int IntBits => Width - FracBits;
        #endregion

        #region Constructors
        public FixedPoint(int width, int fracBits)
        {
            if (width > sizeof(ulong) * 8)
            {
                throw new ArgumentOutOfRangeException("width", "FixedPoint only supports up to a maximum of 64 bits in width.");
            }

            if (fracBits > width)
            {
                throw new ArgumentOutOfRangeException("fracBits", "Fractional bits cannot be more than total FixedPoint width.");
            }

            this.Width = width;
            this.FracBits = fracBits;
            this.Value = 0;
        }
        public FixedPoint(int width, int fracBits, double value) : this(width, fracBits)
        {
            this.Value = Convert(value);
        }
        #endregion

        #region Private Methods
        /* Convert a double to a FixedPoint using a previously constructed template object of known radixes. */
        private ulong Convert(double inVal)
        {
            var temp = inVal * Math.Pow(2, this.FracBits);
            temp = Math.Round(temp);
            return (ulong)Math.Floor(temp);
        }
        #endregion

        public static void Main()
        {
            FixedPoint me = new FixedPoint(32, 16);
            Console.WriteLine("Pi: {0}", Math.PI);
            Console.WriteLine("Converted to 16.16: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(64, 32);
            Console.WriteLine("Converted to 32.32: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(40, 5);
            Console.WriteLine("Converted to 5.35: {0:X16}", me.Convert(Math.PI));

            //Test IValueConverter methods
            me = new FixedPoint(40, 5, 2.25);
            Console.WriteLine("2.25 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
        }

        #region IValueConverter methods

        /* Converts FixedPoint to decimal String */
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            FixedPoint input = (FixedPoint)value;
            ulong sign = input.Value >> 63;                     // Determine sign bit
            long intPart = (long)input.Value >> input.FracBits; // Shift right to lop off the fractional part.

            string SignStr = string.Empty;
            if (sign == 1)                                      // If negative convert to string representation of integer abs value.
            {
               intPart = Math.Abs(intPart);
               SignStr = "-";
            }
            string stringInt = SignStr + intPart.ToString();

            // Now create double representation of fractional part by evaluating each bit's contribution.
            // Align all the fractional bits left to the MSB of the containing ulong.
            ulong frac = input.Value << ((sizeof(ulong)*8) - input.FracBits);    
            double fracDbl = 0;                                 
            for (int x = -1; x >= -FracBits; x--)
            {
                if (frac >> 63 == 1)
                {
                    fracDbl += Math.Pow(2, x);                  // Raise all 1 bits to the 2^(-x) power to get its contribution to the fraction
                }
                frac = frac << 1;
            }

            if (fracDbl == 0)
            {
                return stringInt + ".0";
            }
            else
            {
                return stringInt + "." + fracDbl.ToString().Substring(2);
            }
        }

        /* Converts string back into Fixed Point */
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            Double.TryParse((string)value, out double result);
            return new FixedPoint(Width, FracBits, result);
        }
        #endregion
    }
}
