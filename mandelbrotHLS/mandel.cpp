#include "mandel.h"
#include "pretest.h"
#include <iostream>
#include "ap_fixed.h"
#include "assert.h"

using namespace std;

// This is the base Mandelbrot set calculation algorithm for a given complex coordinate Z given as euclidean X/Y,
// and a maximum number of iterations to use prior to giving up.  Higher iteration counts reveal more detail in the image
// at the expense of computation time.
// This version of the algorithm includes two optimizations to minimize calculation time:
// 1. A "pretest" that determines whether the input coordinate is inside the bounds of the two primary cardioid bulbs
//    of the Mandelbrot set, in which case we know we will reach the maximum number of iterations without having to do
//    anything more.
// 2. Checking for first-order periodicity (i.e. the results of iteration n are the same as iteration n-1), in which case
//    we can also assume we will reach maximum iterations and can stop immediately.

pixval mandel_calc(real x_in, real y_in, pixval maxIter) {

    real x = 0.0;
    real y = 0.0;
    pixval iter = 0;

    // Fixed iteration loops allow better unrolling/pipelining.
   if (pretest(x_in,y_in)) {
        iter = maxIter;
   } else {
        mandel_calc_loop:for (iter = 0; iter < maxIter; iter++) {
            real x2 = x*x;
            real y2 = y*y;

            //Loop ends "normally" when this condition is not met.
            if (x2 + y2 <= 4) {

                real xtemp = x2 - y2 + x_in;
                real ytemp = 2*x*y + y_in;
                if (x == xtemp && y == ytemp) { //Loop ends early if this situation is detected and result is MAXITER.
                    #ifndef __SYNTHESIS__
                        printf("Periodicity detected at ");
                        cout << std::setprecision(16) << x_in << "," << y_in << endl;
                    #endif
                    iter = maxIter;
                    break;
                }
                x = xtemp;
                y = ytemp;
            }
            else
                break;
        }
    }
    return iter;
}

//Calculates entire Mandelbrot Set 2D array and returns a completed buffer of iterations per pixel
void calc(bool setup, real X0, real Y0, real X1, res width, res *maxWidth, unsigned short *unroll, pixval maxIter, pixval *buf) {

   	real delta = (X1 - X0) /  width;            // Fractional cartesian distance between adjacent physical pixels
    real y = Y0;
    real x = X0;
    res height = width / 4 * 3;
    int index = 0;                              // Points to next output memory location

    *maxWidth = MAXWIDTH;  //Tell the Microblaze what the maximum width we will accept is.
    *unroll = 8;           //BUGBUG: Compiler doesn't allow a way to automatically sync this with HLS Directives

    if (setup) { // Bail now if we're in "setup" mode and not ready to run yet.
        return;
    }

    #ifndef __SYNTHESIS__
        cout << "Delta:" << std::setprecision(16) << delta << endl;
    #endif

        // Begin in the -X,+Y quadrant (II), iterate across each line, then down, and finally end in +X,-Y quadrant (IV)
        // Calculate the Mandelbrot escape value at each pixel, using the corresponding x/y fixed point values.
y_for:  for (res line = 0; line < height; line++) {
x_for:      for (res pix_x = 0; pix_x < width; pix_x++) {

                x = X0 + (pix_x * delta); // This form (multiply the pixel x value by delta) allows parallelism in unrolling.
                // Trying to lower the cost of a multiplier by instead using an incremental add of delta during each iteration
                // seems to ruin parallel unrolling, probably due to each iteration relying on the addition result from the prior iteration.

                buf[index++] = mandel_calc(x,y,maxIter);
                // When pre-test is performed inside this function call, parallelism from loop unrolling works.  When trying to do it outside, it serializes all of the calls.
            }

            // Continue with the next line
            y -= delta;
	    }

    #ifndef __SYNTHESIS__
        cout << "Bottom right X:" << std::setprecision(14) << x << endl;
        cout << "Bottom right Y:" << std::setprecision(14) << y << endl;
    #endif
}
