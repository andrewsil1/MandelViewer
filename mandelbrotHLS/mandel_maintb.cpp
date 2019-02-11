#include "mandel.h"
#include <iostream>
#include "ap_fixed.h"

#define WIDTH 100

using namespace std;

int main() {

	real X0, Y0, X1;
	const int HEIGHT = WIDTH * 3 / 4;

	pixval mem[HEIGHT * WIDTH];

	//The set goes from -2 to 2 on the X axis, and -1 to 1 on the Y axis. Pick a 4:3 window specified by Top Left X/Y coordinate, Top Right X value. The rest is calculated.
	X0 = -2;
	Y0 = 1; //1;
	X1 = 2; //1;


    calc(X0, Y0, X1, WIDTH, mem);  // Calculate the full array, store in mem.

	for (int y = 0; y < HEIGHT; y++) {
	   for (int x = 0; x < WIDTH; x++)
	   {
	       string foo = mem[y*WIDTH + x] == MAXITER ? "B" : (mem[y*WIDTH + x] > 500 ? "X" : std::to_string(mem[y*WIDTH + x])); // Replace points with iter > 500 with "X"
	       cout << foo;
	       }
	   cout << endl;
    }

	return 0;
}
