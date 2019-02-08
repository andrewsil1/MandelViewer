using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FixedPoint
{
    public class FixedPoint
    {
        readonly uint Width;
        readonly uint FracBits;
        public FixedPoint(uint Width, uint FracBits)
        {
            this.Width = Width;
            this.FracBits = FracBits;
        }

        public UInt64 Convert(double inVal)
        {
            var temp = inVal * (Math.Pow(2,FracBits));
            temp = Math.Round(temp);

            return (UInt64) Math.Floor(temp);
        }

        public static void Main()
        {
            FixedPoint me = new FixedPoint(32, 16);
            Console.WriteLine("Pi: {0}", Math.PI);
            Console.WriteLine("Converted to 16.16: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(64, 32);
            Console.WriteLine("Converted to 32.32: {0:X16}", me.Convert(Math.PI));
            me = new FixedPoint(40,5);
            Console.WriteLine("Converted to 5.35: {0:X16}", me.Convert(Math.PI));
            
        }
    }
}
