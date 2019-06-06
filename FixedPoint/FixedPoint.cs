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
        public long Value { get; }
        public int IntBits => Width - FracBits;
        #endregion

        #region Constructors
        public FixedPoint(int width, int fracBits)
        {
            if (width > sizeof(long) * 8)
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
        private long Convert(double inVal)
        {
            return (long)Math.Round(inVal * (1L << FracBits));
        }
        #endregion

        public static void Main()
        {
            FixedPoint me = new FixedPoint(32, 16);
            Console.WriteLine("Pi: {0}", Math.PI);
            Console.WriteLine("Converted to 16.16: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(64, 32);
            Console.WriteLine("Converted to 32.32: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(40, 35);
            Console.WriteLine("Converted to 5.35: {0:X16}", me.Convert(Math.PI));

            //Test IValueConverter methods
            me = new FixedPoint(40, 35, 2.25);
            Console.WriteLine("2.25 (5.35) reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            me = new FixedPoint(40, 35, -2.0);
            Console.WriteLine("-2.0 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            me = new FixedPoint(40, 35, -2.5);
            Console.WriteLine("-2.5 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            me = new FixedPoint(40, 35, -3.0);
            Console.WriteLine("-3.0 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            me = new FixedPoint(40, 35, 3.5);
            Console.WriteLine("3.5 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            me = new FixedPoint(40, 35, -3.5);
            Console.WriteLine("-3.5 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            me = new FixedPoint(40, 35, 1);
            Console.WriteLine("1 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            me = new FixedPoint(40, 35, -1);
            Console.WriteLine("-1 reverse converted to string: {0}", me.Convert(me, typeof(FixedPoint), null, CultureInfo.CurrentCulture));
            Console.ReadLine();
        }

        #region IValueConverter methods

        /* Converts FixedPoint to decimal String */
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            FixedPoint input = (FixedPoint)value;
            return (input.Value / (double) (1L << input.FracBits)).ToString("F10");
        }

        /* Converts string back into Fixed Point */
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            double.TryParse((string)value, out double result);
            return new FixedPoint(Width, FracBits, result);
        }
        #endregion
    }
}
