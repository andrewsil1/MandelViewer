#include "mandel.h"
#include "pretest.h"
#include <iostream>
#include "ap_fixed.h"
#include "assert.h"

using namespace std;

pixval mandel_calc(real x_in, real y_in) {

    real x = 0.0;
    real y = 0.0;
    pixval iter = 0;

    // Fixed iteration loops allow better unrolling/pipelining.
   if (pretest(x_in,y_in)) {
        iter = MAXITER;
   } else {
        for (iter = 0; iter < MAXITER; iter++) {
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
                    iter = MAXITER;
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
void calc(real X0, real Y0, real X1, res width, pixval *buf) {

   	real delta = (real) 0.0;
    real x,y;
    res height;
    int index;
    pixval mem[MAXWIDTH];


	//Divide the specified X range of the desired image by the pixel count to figure out how much to step the
    //coordinates by in each iteration. We assume square pixels, so delta is the same for both axes.
    //We want to save the delta between calls (lines calculated) unless the width changes, so we use statics to
    //hold onto the old values and avoid an expensive division for every line.

	    delta = (X1 - X0) /  width;
        #ifndef __SYNTHESIS__
	        cout << "Delta:" << std::setprecision(16) << delta << endl;
        #endif

        height = width * 3 / 4;
        index = 0;
	    y = Y0;
	    assert (height <= MAXWIDTH * 3 / 4);
  y_for:for (res line = 0; line < height; line++) {
            assert (width % 4 == 0); // Line width must be multiple of 4 or it is not safe to turn off exit check on partial unroll of factor 4.
            assert (width <= MAXWIDTH);
      x_for:for (res pix_x = 0; pix_x < width; pix_x++) {
                // -X,+Y (quadrant II), across each line, then finally down to +X,-Y (quadrant IV)
                // Calculate Mandelbrot escape value, using the current x,y real values.

                x = X0 + (pix_x * delta); // This form allows parallelism in unrolling, switching to an incremental add of delta to the initial x during each iteration seems to ruin parallel unrolling.

                mem[pix_x] = mandel_calc(x,y); // When pre-test is performed inside function call, parallelism from loop unrolling works.  When outside, it breaks.
            }

        assert (width <= MAXWIDTH);
        //Write the line of computed data from internal BRAM out to the larger PSRAM.
        burst_out:for (int i = 0; i < width; i++)
        {
            #pragma HLS PIPELINE
            buf[index++] = mem[i];
        }

        // Continue with the next line
        y -= delta;
	}

    #ifndef __SYNTHESIS__
        cout << "Bottom right X:" << std::setprecision(14) << x << endl;
        cout << "Bottom right Y:" << std::setprecision(14) << y << endl;
    #endif
}
