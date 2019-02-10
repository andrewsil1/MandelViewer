namespace FixedPoint
{
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

    public class FixedPoint
    {
        private readonly uint width;
        private readonly uint fracBits;

        public FixedPoint(uint width, uint fracBits)
        {
            this.width = width;
            this.fracBits = fracBits;
        }

        public static void Main()
        {
            FixedPoint me = new FixedPoint(32, 16);
            Console.WriteLine("Pi: {0}", Math.PI);
            Console.WriteLine("Converted to 16.16: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(64, 32);
            Console.WriteLine("Converted to 32.32: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(40, 5);
            Console.WriteLine("Converted to 5.35: {0:X16}", me.Convert(Math.PI));
        }

        public ulong Convert(double inVal)
        {
            var temp = inVal * Math.Pow(2, this.fracBits);
            temp = Math.Round(temp);

            return (ulong)Math.Floor(temp);
        }
    }
}
