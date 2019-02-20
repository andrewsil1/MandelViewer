
/***************************** Include Files *********************************/

#include "xparameters.h"
#include <climits>
#include <stdio.h>
#include "xil_exception.h"
#include "xuartns550.h"
#include "xuartlite.h"
#include "xintc.h"
//#include "xgpio_l.h"
#include "psram_ip.h"
#include "xcalc.h"
#include "microblaze_sleep.h"
#include "uartfuncs.h"
#include "xuartlite.h"

#ifdef DEBUG
	#include <xil_printf.h>
#endif

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
#define FRAC_BITS				35
#define BAUD_RATE				3000000U
#define LED_CHANNEL				1
#define	CHUNK_SIZE				32768 //Serial packet chunks for sending image data

/************************** Function Prototypes ******************************/

int CalcMandelbrot(INTC *IntcInstancePtr,	XUartNs550 *UartInstancePtr, u16 UartDeviceId, u16 UartIntrId);

uint32_t rc_crc32(uint32_t crc, const char *buf, size_t len);

/************************** Variable Definitions *****************************/

 XUartNs550 UartNs550Instance;	 /* Instance of the UART Device */
 XUartLite DbgInstance;			 /* Instance of the MDM_1 UartLite for console */
 INTC IntcInstance;				 /* Instance of the Interrupt Controller */
 XIntc InterruptController;      /* The instance of the Interrupt Controller */
 XCalc Calc;					 /* The instance of the Mandelbrot Calc device */
 XCalc_Config *Calc_Cfg;		 /* The instance of the Calc config */

 /*
  * The following buffers are used in this example to send and receive data
  * with the Uart.
  */
 u8 ReceiveBuffer[TEST_BUFFER_SIZE];

 /* Here are the pointers to the buffer */
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
 u32 WIDTH = 1024;  // Hardware supports up to 1920 wide. Do not exceed.
 u32 HEIGHT = WIDTH * 3U / 4U;

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
		 xil_printf("Received CRC invalid: %H",recCRC);
#endif
		 return XST_FAILURE;
	 }

 	 return (*(u64*)ReceiveBufferPtr); //Return the data.
 }

 void SerialSend(XUartNs550 *UartInstancePtr, u8 *sendBuffer, u32 TotalToSend) {
/* This function returns the entire calculated image (iteration) buffer over the serial port
 * using chunks of a few kilobytes, with a CRC appended at the end to guarantee data integrity.
 */

	 uint size = CHUNK_SIZE;

	 for (uint i = 0; i < TotalToSend; i += CHUNK_SIZE) {					// Break up the image buffer into chunks.
		 u32 crc = rc_crc32(0, (const char*) sendBuffer+i, CHUNK_SIZE);		// Calculate CRC at current offset into the buffer.

		 int size = CHUNK_SIZE+sizeof(u32); 								// Total packet size is chunk bytes + CRC32
		 while (XUartNs550_IsSending(UartInstancePtr)) {}
		 XUartNs550_Send(UartInstancePtr, (u8 *) &size, sizeof(int)); 		// Tell receiver how big the packet will be.

		 while (XUartNs550_IsSending(UartInstancePtr)) {}
		 XUartNs550_Send(UartInstancePtr, sendBuffer+i, CHUNK_SIZE); 		// Send the payload bytes from the buffer.

		 while (XUartNs550_IsSending(UartInstancePtr)) {}
		 XUartNs550_Send(UartInstancePtr, (u8 *) &crc, sizeof(u32));		// Tack the CRC onto the end of the sent packet.
	 }

	 // Finish up the transmission after all packets sent.
	 size = 4;
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
 		Values are 5.35-bit fixed point: Uppermost bytes of ULL are not used.
 	*/

 	/*u64 X10 = -2ULL << FRAC_BITS;//-2;
 	u64 X11 = 1ULL << FRAC_BITS; //2;
 	u64 Y01 = 5ULL << (FRAC_BITS - 2); //1.25;*/

 	XCalc_Set_X0_V(&Calc, X0);
 	XCalc_Set_X1_V(&Calc, X1);
 	XCalc_Set_Y0_V(&Calc, Y0);
 	XCalc_Set_width_V(&Calc, WIDTH);
    XCalc_Start(&Calc);

    // Wait for the full image to iterate.
    while (!XCalc_IsDone(&Calc)) {};

#ifdef DEBUG
    xil_printf("Calc IP is done, returning data.\r\n");
#endif

    // Send the contents of image memory to the serial port.
    TotalSentCount = 0;
    uint TotalToSend = HEIGHT * WIDTH * 2;//sizeof(u16);
    XUartNs550_ClearStats(UartInstancePtr);

    SerialSend(UartInstancePtr, (u8 *) PSRAM_BASE, TotalToSend);

#ifdef DEBUG
    xil_printf("Send complete, waiting for command.\r\n");
#endif

  }

int main()
{

	//Variable definitions
	int Status = CalcMandelbrot(&IntcInstance, &UartNs550Instance, UART_DEVICE_ID, UART_IRPT_INTR);

	if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

	return Status;
}


int CalcMandelbrot(INTC *IntcInstancePtr,	XUartNs550 *UartInstancePtr, u16 UartDeviceId, u16 UartIntrId)
{
	int Status;

    //Set up the UART and configure the interrupt handler for bytes in RX buffer
	Status = UartSetup(IntcInstancePtr, UartInstancePtr, UartDeviceId, UartIntrId);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

	// Change the baud rate of the UART and indicate that incoming AXI clock is 100MHz.
	XUartNs550_SetBaud(UART_BASE, UART_CLOCK, BAUD_RATE);

	// Reinitialize the Debug UART
	Status = XUartLite_Initialize(&DbgInstance, DBG_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

    XUartLite_ResetFifos(&DbgInstance);

#ifdef DEBUG
	//Fill 16MB empty memory with a recognizable pattern.
	xil_printf("Initializing memory\r\n");
	for (u32* x = (u32 *)PSRAM_BASE; x <= (u32 *)PSRAM_END - 1; x++) {
		 *x = 0xDEADBEEF;
	}
#endif

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
			case 'X' :
#ifdef DEBUG
				xil_printf("Got X\r\n");
#endif
				quit = true;
				break;
		}
	} while (!quit);

	UartNs550DisableIntrSystem(IntcInstancePtr, UartIntrId);
#ifdef DEBUG
	xil_printf("Exiting.\r\n");
#endif

    return Status;

}
