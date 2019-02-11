/*
 * uartfuncs.h
 *
 *  Created on: Jan 30, 2019
 *      Author: AndrewSi
 */

/************************** Type Definitions    ******************************/
#define INTC			XIntc
#define INTC_HANDLER	XIntc_InterruptHandler
#define INTC_DEVICE_ID  XPAR_INTC_0_DEVICE_ID
#define UART_DEVICE_ID	XPAR_UARTNS550_0_DEVICE_ID

/************************** Function prototypes ******************************/
void UartNs550IntrHandler(void *CallBackRef, u32 Event, unsigned int EventData);
int UartNs550SetupIntrSystem(INTC *IntcInstancePtr, XUartNs550 *UartInstancePtr, u16 UartIntrId);
void UartNs550DisableIntrSystem(INTC *IntcInstancePtr, u16 UartIntrId);
int UartSetup(INTC *IntcInstancePtr, XUartNs550 *UartInstancePtr, u16 UartDeviceId, u16 UartIntrId);

