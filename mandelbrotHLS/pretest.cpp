#include "mandel.h"
#include <iostream>

using namespace std;

bool pretest(real x, real y) {
#pragma HLS INLINE region recursive
//TODO:  Can we limit the perf/area impact by rounding towards zero and working with less-wide data?

// These two mathematical tests determine if [x,y] is inside the main cardioid or bulb regions of the Mandelbrot set.
// If so, there is no need to perform the full iterative algorithm, we can simply assume that MAXITER will take place if we were to proceed, and save a lot of computation time.

    real y2 = y * y;
    real x_1 = x - (real) 0.25;
    real q = x_1 * x_1 + y2;

    if ((q * (q + (x_1)) <= (y2 / 4) || (x + 1) * (x + 1) + y2 <= (real) 0.0625))
    {
        #ifndef __SYNTHESIS__
            printf("Inside main set cardioid or bulb at ");
            cout << std::setprecision(14) << x << "," << y << endl;
        #endif
        return true;
    } else
        return false;
}
