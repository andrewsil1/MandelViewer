#include <hls_video.h>
#include "ap_fixed.h"

//Raising COORD_WIDTH will exceed available 240 DSPs for an Artix-7A100T
#define COORD_WIDTH 40	//4 bits for integer portion (+7/-8d), 36 bits for fractional portion
#define COORD_INT 4
#define MAXWIDTH 1920
//#define MAXITER 2000 -- No longer hardcoded but passed to IP as a parameter.


using namespace hls;

typedef ap_fixed<COORD_WIDTH,COORD_INT,AP_RND_CONV,AP_SAT> real;
typedef ap_uint<12> res;
typedef unsigned short int pixval;

void calc(bool setup, real X0, real Y0, real X1, res width, res* maxWidth, unsigned short* unroll, pixval maxIter, pixval *buf, \
          unsigned long *LEDControl, unsigned long *LED);

