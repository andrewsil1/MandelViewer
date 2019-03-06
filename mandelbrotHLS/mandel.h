#include <hls_video.h>
#include "ap_fixed.h"

//Raising COORD_WIDTH will exceed available 240 DSPs for an Artix-7A100T
#define COORD_WIDTH 40	//5 bits for integer portion (+15d/-16d), 35 bits for fractional portion
#define COORD_INT 5
#define MAXWIDTH 1920
//#define MAXITER 2000 -- No longer hardcoded but passed to IP as a parameter.


using namespace hls;

typedef ap_fixed<COORD_WIDTH,COORD_INT,AP_RND_CONV,AP_SAT> real;
typedef ap_uint<12> res;
typedef unsigned short int pixval;

void calc(real X0, real Y0, real X1, res width, pixval maxIter, pixval *buf);
