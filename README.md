# MandelViewer
FPGA-Accelerated Windows Mandelbrot viewer

This is a personal project that was meant to self-educate me on usage of the Vivado HLS C++ compiler to create
accelerated IP for a Xilinx FPGA.  In particular, it performs calculation of Mandelbrot set values (pixels) up to a user-
defined maximum number of iterations, and stores a 2D buffer of those values for use in generating graphical images.
The project has dependencies on the Digilent Nexys-4 board, which has a 16MB PSRAM rather than DDR, and also makes use
of an IP I created several years ago to interface that PSRAM to AXI4LITE, allowing it to be used transparently with a
Microblaze design or any other IP that needs access to the RAM via AXI.

The project is made up of four main sections:
- The C++ code for the Mandelbrot Set calculation is contained in a Vivado HLS project, with the associated pragmas 
necessary to produce HDL output that calculates 8 pixels in parallel, which is the most I was able to coax the tool 
to fit into the Artix-7-100 on this development board.  Note: The project fails to meet the requested timing, but the
constraint causes the tool to generate more compact hardware.  The anticipated timing problem is resolved simply by 
loosening the actual clock rate supplied to the module as incorporated into the final design.
- A Vivado project that incorporates the generated IP into a Microblaze project design.  The Vivado block diagram includes other
typical components such as the PSRAM IP mentioned above, an interrupt controller, 16550 UART, a clock generator and 
multiple reset modules to handle the different clock domains used here.
- A Vivado SDK C++ project for the Microblaze, which uses the "standalone" BSP, and which handles communication via UART
between a host PC and the calculator IP module.  Several serial commands are implemented to pass parameters from the host to
the IP in order to change the coordinates and therefore the zoom level of the generated image, and to kick off the calculation.
When the calculation is finished, the program attempts to transfer the 2D results buffer back to the host PC.  This program
implements CRC checking of packets transferred in either direction to ensure data integrity, and also performs LZ4
compression on the buffer data before sending, which results in significant reductions in transfer time at a relatively
minor computational time cost. In most cases this seems to generally be win for total time compared to sending the data in raw form.
- A C# .NET application for Windows, which provides a user interface to the FPGA system, allowing the user to see the
visualized Mandelbrot set with a histogram-based color selection algorithm, and allowing the user to zoom and pan to
regions of interest in the image, and recalculate.

The calculator itself makes use of 40-bit fixed point math with only 5 bits dedicated to the integer portion, given the limited
range of complex values required for the application.  This provides a reasonable tradeoff between maximum zoom depth, chip area
required for the math (only 240 DSP blocks are available in the Artix-7), and the performance of the calculation.  The
algorithm was adapted initially from the Wikipedia pseudocode, including a few simple optimizations mentioned there. These include
first-order periodicity checking to allow early loop termination, as well as pre-testing of whether the current pixel
is located within the primary cardioid bulbs of the set, which allows the calc loop to be skipped altogether for many points which
would otherwise require a maximum-duration calculation.

While a modern desktop CPU that makes use of vector floating point operations and/or a GPU to perform similar calculations can
easily outstrip the performance of this FPGA, that wasn't really the point of the exercise.  However, given the slow speed
grade and extremely small power consumption of the FPGA in comparison to the big iron, the performance achieved still feels 
pretty satisfying to me.

There are three clock domains used in the design: one for the Microblaze (which is notably cranky about meeting timing at
frequencies much above 80Mhz when when a lot of BRAM is needed for the application), one for the AXI bus and most peripherals 
at 100Mhz, and one for the Mandelbrot calculator IP, which has been tuned to run at 133Mhz, a bit quicker than the rest of 
the design.  The AXI bus crossbar automatically inserts the necessary synchronizers to move data between the different clock domains.
