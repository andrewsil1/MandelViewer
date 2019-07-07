
/***************************** Include Files *********************************/

#include "xparameters.h"
#include "xil_assert.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xuartns550.h"
#include "xuartlite.h"
#include "xintc.h"
#include "xcalc.h"
#include "microblaze_sleep.h"
#include "malloc.h"

#include <stdio.h>

#include "uartfuncs.h"
#include "lz4frame.h"
#include "xxhash.h"

extern u32 CompressOutput(u32 compressBuffer, u32 imageSize);

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define UART_IRPT_INTR			XPAR_INTC_0_UARTNS550_0_VEC_ID
#define UART_BASE				XPAR_UARTNS550_0_BASEADDR
#define DBG_BASE				XPAR_UARTLITE_0_BASEADDR
#define DBG_DEVICE_ID			XPAR_UARTLITE_0_DEVICE_ID
#define UART_CLOCK				XPAR_AXI_UART16550_0_CLOCK_FREQ_HZ
#define PSRAM_BASE				XPAR_PSRAM_IP_0_S00_AXI_BASEADDR
#define PSRAM_END				XPAR_PSRAM_IP_0_S00_AXI_HIGHADDR
#define CALC_DEVICE_ID			XPAR_CALC_0_DEVICE_ID

/*
 * The following constant controls the length of the buffers to be sent
 * and received with the Uart device.
 */
#define TEST_BUFFER_SIZE        100
#define BAUD_RATE				3000000U //3Mbps is the maximum the FTDI USB UART can handle.
#define	CHUNK_SIZE				65536    //Serial packet chunks for sending image data
//TODO: Tell receiver how big the chunks are over the wire so the rx buffer can be sized appropriately.

/************************** Function Prototypes ******************************/
uint32_t rc_crc32(uint32_t crc, const char *buf, size_t len);
int SetupCalc();

/************************** Variable Definitions *****************************/

XUartNs550 UartNs550Instance;	 /* Instance of the UART Device */
XUartLite DbgInstance;			 /* Instance of the MDM_1 UartLite for console */
XIntc InterruptController;       /* The instance of the Interrupt Controller */
XCalc Calc;					     /* The instance of the Mandelbrot Calc device */
XCalc_Config *Calc_Cfg;		     /* The instance of the Calc config */

/*
 * The following buffer is used to receive data with the Uart.
 */
volatile u8 ReceiveBuffer[TEST_BUFFER_SIZE];
u8* ReceiveBufferPtr = &ReceiveBuffer[0];

/*
 * The following counters are used to determine when the entire buffer has
 * been sent and received.
 */
volatile int TotalReceivedCount;
volatile int TotalSentCount;
volatile int TotalErrorCount;
static XUartNs550Stats Stats;

// Coordinates for Mandelbrot set calculation to pass to the hardware - Upper left X/Y, Upper right X.
u64 X0, X1, Y0;
u32 maxIter = 2000;
u32 MAXWIDTH = 0; // Retrieved from hardware later.
u32 UNROLL = 0;   // Retrieved from hardware later. Width % UNROLL must be 0.
u32 WIDTH = 1920; // Initial width of image. Can be changed by host with command 'E'
u32 HEIGHT = WIDTH * 3U / 4U;

u8* compressBuffer;							// Space to compress data prior to transmission.

// For the serial port...
u16 Options;
u8 Errors;


void GetCommand(XUartNs550 *UartInstancePtr, u8 *ReceiveBufferPtr) {

	XUartNs550_ClearStats(UartInstancePtr);
	static char SendStat[] = "@\n";
	ReceiveBufferPtr[0] = 0;

	//Send "Ready" Prompt
	XUartNs550_Send(UartInstancePtr, (u8 *)SendStat, 2);
	while (XUartNs550_IsSending(UartInstancePtr)) {}

	//Wait for an incoming character
	XUartNs550_Recv(UartInstancePtr, ReceiveBufferPtr, 1);
	do {
		XUartNs550_GetStats(UartInstancePtr,&Stats);
	} while (Stats.CharactersReceived == 0);

 }

u32 GetUIntParam (XUartNs550 *UartInstancePtr, u8 *ReceiveBufferPtr) {

	 XUartNs550_ClearStats(UartInstancePtr);
	 XUartNs550_Recv(UartInstancePtr, ReceiveBufferPtr, 4);  // Get length of packet
		do {
			XUartNs550_GetStats(UartInstancePtr,&Stats);
		} while (Stats.CharactersReceived < 4);

	 int length = *(u32 *)ReceiveBufferPtr;

	 XUartNs550_Recv(UartInstancePtr, ReceiveBufferPtr, length); //Get the bytes
	 do {
		 	XUartNs550_GetStats(UartInstancePtr,&Stats);
	 } while (Stats.CharactersReceived < length);

	 u32 recCRC = rc_crc32(0, (char *)ReceiveBufferPtr, length-4); //Calculate received CRC

	 if (recCRC != *(u32 *)(ReceiveBufferPtr + length - 4)) {
		#ifdef DEBUG
		 xil_printf("Received CRC invalid: %H\r\n",recCRC);
		 #endif
		 return -1;
	 }

 	 return (*(u32*)ReceiveBufferPtr); //Return the data.
 }

u64 GetParam (XUartNs550 *UartInstancePtr, u8 *ReceiveBufferPtr) {

	 XUartNs550_ClearStats(UartInstancePtr);
	 XUartNs550_Recv(UartInstancePtr, ReceiveBufferPtr, 4);  // Get length of packet
		do {
			XUartNs550_GetStats(UartInstancePtr,&Stats);
		} while (Stats.CharactersReceived < 4);

	 int length = *(u32 *)ReceiveBufferPtr;

	 XUartNs550_Recv(UartInstancePtr, ReceiveBufferPtr, length); //Get the bytes
	 do {
		 	XUartNs550_GetStats(UartInstancePtr,&Stats);
	 } while (Stats.CharactersReceived < length);

	 u32 recCRC = rc_crc32(0, (char *)ReceiveBufferPtr, length-4); //Calculate received CRC

	 if (recCRC != *(u32 *)(ReceiveBufferPtr + length - 4)) {
#ifdef DEBUG
		 xil_printf("Received CRC invalid: %H\r\n",recCRC);
#endif
		 return XST_FAILURE;
	 }

 	 return (*(u64*)ReceiveBufferPtr); //Return the data.
}

void SerialSend(XUartNs550 *UartInstancePtr, u8* sendBuffer, u32 TotalToSend) {
/* This function returns the entire calculated image (iteration) buffer over the serial port
 * using chunks of about 64K, with a CRC appended at the end to guarantee data integrity, Xmodem style.
 */

	 uint totalSent = 0;

	 for (uint i = 0; i < TotalToSend; i += CHUNK_SIZE) {					// Break up the image buffer into chunks.

		 int actualToSend;

		 bool receivedOK = false;
		 u8 sendAttempts = 0;
		 while (!receivedOK) {
			 if (totalSent + CHUNK_SIZE > TotalToSend)
				 {
					 actualToSend = TotalToSend % CHUNK_SIZE; //Size of leftover end packet
				 }
			 else
				 {
					 actualToSend = CHUNK_SIZE;
				 }

			 u32 crc = rc_crc32(0, (const char*) sendBuffer+i, actualToSend);	// Calculate CRC at current offset into the buffer.

			 int size = actualToSend+sizeof(u32); 								// Total packet size is chunk bytes + CRC32: //BUGBUG: Last chunk might be smaller!
			 while (XUartNs550_IsSending(UartInstancePtr)) {}
			 XUartNs550_Send(UartInstancePtr, (u8 *) &size, sizeof(int)); 		// Tell receiver how big the packet will be.

			 while (XUartNs550_IsSending(UartInstancePtr)) {}
			 XUartNs550_Send(UartInstancePtr, (sendBuffer+i), actualToSend);	// Send the payload bytes from the buffer.

			 while (XUartNs550_IsSending(UartInstancePtr)) {}
			 XUartNs550_Send(UartInstancePtr, (u8 *) &crc, sizeof(u32));		// Tack the CRC onto the end of the sent packet.
			 sendAttempts++;

			 while (XUartNs550_IsSending(UartInstancePtr)) {}
			 XUartNs550_ClearStats(UartInstancePtr);
			 //Wait for an incoming character after transmission completes
			 XUartNs550_Recv(UartInstancePtr, ReceiveBufferPtr, 1);
			 do {
					XUartNs550_GetStats(UartInstancePtr,&Stats);
			 } while (Stats.CharactersReceived == 0);

			 if (*ReceiveBufferPtr == '@') {
				 receivedOK = true;
			 }
			 #ifdef DEBUG
			 else {
				 //Not received OK.
				 if (*ReceiveBufferPtr == 'Z') {
					 xil_printf("Receiver indicated CRC failure, retrying.");
				 } else
			     Xil_AssertVoidAlways(); //We got some kind of garbage from the receiver, must bail and fail.
			 }
			 #endif

			 if (sendAttempts > 5) {
				 #ifdef DEBUG
				 xil_printf("5 send attempts failed.");
				 #endif
				 Xil_AssertVoidAlways(); //Bail and fail.
			 }
		 }

		 totalSent += actualToSend;
	 }

	 // Finish up the transmission after all packets sent.
	 uint size = 4;
	 while (XUartNs550_IsSending(UartInstancePtr)) {}
	 XUartNs550_Send(UartInstancePtr, (u8 *) &size, sizeof(uint)); 			// Tell receiver how big the packet will be (4 characters)


	 static char done[] = "DONE";
	 while (XUartNs550_IsSending(UartInstancePtr)) {}
	 XUartNs550_Send(UartInstancePtr, (u8 *) done, 4);						// Send the "DONE" tag.
}

void StartCalc(XUartNs550 *UartInstancePtr) {
 #ifdef DEBUG
 	xil_printf("Calc IP starting.\r\n");
 #endif

 	/*	The set goes from -2 to 2 on the X axis, and -1 to 1 on the Y axis.
 		Pick a 4:3 window specified by Top Left X/Y coordinate, Top Right X value. The rest is calculated.
 		Values are 4.32-bit fixed point: Uppermost bytes of ULL are not used.
 	*/

 	if (WIDTH > MAXWIDTH) {
		#ifdef DEBUG
 			xil_printf("Specified image width of %d exceeds MAXWIDTH of %d.",WIDTH,MAXWIDTH);
		#endif
 		return;
 	}

 	if (WIDTH % UNROLL != 0) {
		#ifdef DEBUG
			xil_printf("Specified image width of %d is not divisible by unroll of %d.",WIDTH,UNROLL);
		#endif
	return;
 	}
 	XCalc_Set_X0_V(&Calc, X0);
 	XCalc_Set_X1_V(&Calc, X1);
 	XCalc_Set_Y0_V(&Calc, Y0);
 	XCalc_Set_width_V(&Calc, WIDTH);
 	XCalc_Set_maxIter(&Calc, maxIter);
    XCalc_Start(&Calc);

    // Wait for the full image to iterate.
    while (!XCalc_IsDone(&Calc)) {};

#ifdef DEBUG
    xil_printf("Calc IP is done, returning data.\r\n");
#endif

    // Compress contents of image memory
    u32 compressBufferSize = MAXWIDTH * (MAXWIDTH * 3U /4U) * sizeof(u16);
    u32 imageSize = WIDTH * HEIGHT * sizeof(u16);
    uint TotalToSend = CompressOutput(compressBufferSize,imageSize);

    // Send the contents of image memory to the serial port.
    TotalSentCount = 0;
    XUartNs550_ClearStats(UartInstancePtr);
    SerialSend(UartInstancePtr, compressBuffer, TotalToSend);

#ifdef DEBUG
    xil_printf("Send complete, waiting for command.\r\n");
#endif
}

int CalcMandelbrot(INTC *IntcInstancePtr, XUartNs550 *UartInstancePtr, u16 UartDeviceId, u16 UartIntrId)
{
	int Status;

    // Reinitialize the Debug UART
	Status = XUartLite_Initialize(&DbgInstance, DBG_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

    XUartLite_ResetFifos(&DbgInstance);

	Xil_DCacheEnable();
#ifdef DEBUG
	//Fill 16MB empty memory with a recognizable pattern.
	xil_printf("Initializing memory\r\n");
	for (volatile u32* x = (u32 *)PSRAM_BASE; x <= (u32 *)PSRAM_END - 1; x++) {
		 *x = 0xDEADBEEF;
	}
#endif



	//Set up the external UART and configure the interrupt handler for bytes in RX buffer
		Status = UartSetup(IntcInstancePtr, UartInstancePtr, UartDeviceId, UartIntrId);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}

	// Change the baud rate of the UART and indicate that incoming AXI clock is 100MHz.
	XUartNs550_SetBaud(UART_BASE, UART_CLOCK, BAUD_RATE);

	// Set up the Mandelbrot calculator IP
	Status = XCalc_Initialize(&Calc, CALC_DEVICE_ID);

	if (Status != XST_SUCCESS) {
#ifdef DEBUG
		xil_printf("Failed to initialize Calc IP\r\n");
#endif
		return XST_FAILURE;
	}

	while (!XCalc_IsIdle(&Calc)) {} // Wait for IP to be Idle

#ifdef DEBUG
	xil_printf("Calc IP is ready.\r\n");
#endif

	// Wait for Go command.
	SetupCalc();

	XUartNs550_ClearStats(UartInstancePtr);

	bool quit = false;
	do {
		GetCommand(UartInstancePtr, ReceiveBufferPtr);

		switch (ReceiveBuffer[0]) {
			case 'G':
#ifdef DEBUG
				xil_printf("Go!\r\n");
#endif
				StartCalc(UartInstancePtr);
				break;
			case 'A' :
#ifdef DEBUG
				xil_printf("Got A\r\n");
#endif
				X0 = GetParam(UartInstancePtr, ReceiveBufferPtr);
				break;
			case 'B' :
#ifdef DEBUG
				xil_printf("Got B\r\n");
#endif
				X1 = GetParam(UartInstancePtr, ReceiveBufferPtr);
				break;
			case 'C' :
#ifdef DEBUG
				xil_printf("Got C\r\n");
#endif
				Y0 = GetParam(UartInstancePtr, ReceiveBufferPtr);
				break;
			case 'D' :
#ifdef DEBUG
				xil_printf("Got D\r\n");
#endif
				maxIter = GetUIntParam(UartInstancePtr, ReceiveBufferPtr);
				break;
			case 'E' :
#ifdef DEBUG
				xil_printf("Got E\r\n");
#endif
				WIDTH = GetUIntParam(UartInstancePtr, ReceiveBufferPtr);
				HEIGHT = WIDTH * 3U / 4U;
				break;
			case 'X' :
#ifdef DEBUG
				xil_printf("Got X\r\n");
#endif
				quit = true;
				break;
			default : break;
		}
	} while (!quit);

	UartNs550DisableIntrSystem(IntcInstancePtr, UartIntrId);
#ifdef DEBUG
	xil_printf("Exiting.\r\n");
#endif

    return Status;

}

int SetupCalc() {
 #ifdef DEBUG
 	xil_printf("Retrieving HW constants from calculator.\r\n");
 #endif

 	/*	The set goes from -2 to 2 on the X axis, and -1 to 1 on the Y axis.
 		Pick a 4:3 window specified by Top Left X/Y coordinate, Top Right X value. The rest is calculated.
 		Values are 4.32-bit fixed point: Uppermost bytes of ULL are not used.
 	*/

 	XCalc_Set_setup(&Calc, (u32) true);
    XCalc_Start(&Calc);

    // Wait for the data to come back.
    while (!XCalc_IsDone(&Calc)) {};

    u32 valid = XCalc_Get_maxWidth_V_vld(&Calc);
    if (valid) {
     	MAXWIDTH = XCalc_Get_maxWidth_V(&Calc);
     	if (compressBuffer == NULL) {
     		compressBuffer = (u8*) malloc(MAXWIDTH * (MAXWIDTH * 3U /4U) * sizeof(u16));
     	}
    }
    else {
       	return XST_FAILURE;
    }

    valid = XCalc_Get_unroll_vld(&Calc);
    if (valid) {
    	UNROLL = XCalc_Get_unroll(&Calc);
    }
    else
    {
    	return XST_FAILURE;
    }

	#ifdef DEBUG
    	xil_printf("Retrieved successfully: MaxWidth: %d, Unroll: %d.\r\n",MAXWIDTH,UNROLL);
	#endif

    XCalc_Set_setup(&Calc, (u32) false);
    return XST_SUCCESS;
}

int main()
{
	//Variable definitions
	int Status = CalcMandelbrot(&InterruptController, &UartNs550Instance, UART_DEVICE_ID, UART_IRPT_INTR);

	if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

	return Status;
}
