#include "xintc.h"
#include "xil_exception.h"
#include "xuartns550.h"
#include "uartfuncs.h"

	/*****************************************************************************/
	/**
	*
	* This function is the handler which performs processing to handle data events
	* from the UartNs550.  It is called from an interrupt context such that the
	* amount of processing performed should be minimized.
	*
	* This handler provides an example of how to handle data for the UART and
	* is application specific.
	*
	* @param	CallBackRef contains a callback reference from the driver,
	*		in this case it is the instance pointer for the UART driver.
	* @param	Event contains the specific kind of event that has occurred.
	* @param	EventData contains the number of bytes sent or received for sent
	*		and receive events.
	*
	* @return	None.
	*
	* @note		None.
	*
	*******************************************************************************/
extern int Errors;
extern volatile int TotalErrorCount;
extern volatile int TotalReceivedCount;
extern volatile int TotalSentCount;
extern INTC *IntcInstancePtr;


	void UartNs550IntrHandler(void *CallBackRef, u32 Event, unsigned int EventData)
	{
		XUartNs550 *UartNs550Ptr = (XUartNs550 *)CallBackRef;

		/*
		 * All of the data has been sent.
		 */
		if (Event == XUN_EVENT_SENT_DATA) {
			TotalSentCount = EventData;
		}

		/*
		 * All of the data has been received.
		 */
		if (Event == XUN_EVENT_RECV_DATA) {
			TotalReceivedCount = EventData;
		}

		/*
		 * Data was received, but not the expected number of bytes, a
		 * timeout just indicates the data stopped for 4 character times.
		 */
		if (Event == XUN_EVENT_RECV_TIMEOUT) {
			TotalReceivedCount = EventData;
		}

		/*
		 * Data was received with an error, keep the data but determine
		 * what kind of errors occurred.
		 */
		if (Event == XUN_EVENT_RECV_ERROR) {
			TotalReceivedCount = EventData;
			TotalErrorCount++;
			Errors = XUartNs550_GetLastErrors(UartNs550Ptr);
		}
	}

	/******************************************************************************/
	/**
	*
	* This function setups the interrupt system such that interrupts can occur
	* for the UART.  This function is application specific since the actual
	* system may or may not have an interrupt controller.  The UART could be
	* directly connected to a processor without an interrupt controller.  The
	* user should modify this function to fit the application.
	*
	* @param	IntcInstancePtr is a pointer to the instance of the Interrupt
	*		Controller.
	* @param	UartInstancePtr is a pointer to the instance of the UART.
	* @param	UartIntrId is the interrupt Id and is typically
	*		XPAR_<INTC_instance>_<UARTNS550_instance>_VEC_ID value from
	*		xparameters.h.
	*
	* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
	*
	* @note		None.
	*
	*******************************************************************************/
	int UartNs550SetupIntrSystem(INTC *IntcInstancePtr,
						XUartNs550 *UartInstancePtr,
						u16 UartIntrId)
	{
		int Status;
		/*
		 * Initialize the interrupt controller driver so that it is ready
		 * to use.
		 */
		Status = XIntc_Initialize(IntcInstancePtr, INTC_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Connect a device driver handler that will be called when an interrupt
		 * for the device occurs, the device driver handler performs the
		 * specific interrupt processing for the device.
		 */
		Status = XIntc_Connect(IntcInstancePtr, UartIntrId,
				   (XInterruptHandler)XUartNs550_InterruptHandler,
				   (void *)UartInstancePtr);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Start the interrupt controller such that interrupts are enabled for
		 * all devices that cause interrupts, specific real mode so that
		 * the UART can cause interrupts thru the interrupt controller.
		 */
		Status = XIntc_Start(IntcInstancePtr, XIN_REAL_MODE);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Enable the interrupt for the UartNs550.
		 */
		XIntc_Enable(IntcInstancePtr, UartIntrId);

		/*
		 * Initialize the exception table.
		 */
		Xil_ExceptionInit();

		/*
		 * Register the interrupt controller handler with the exception table.
		 */
		Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				 (Xil_ExceptionHandler)INTC_HANDLER,
				 IntcInstancePtr);

		/*
		 * Enable exceptions.
		 */
		Xil_ExceptionEnable();

		return XST_SUCCESS;
	}


	/*****************************************************************************/
	/**
	*
	* This function disables the interrupts that occur for the UartNs550 device.
	*
	* @param	IntcInstancePtr is the pointer to the instance of the Interrupt
	*		Controller.
	* @param	UartIntrId is the interrupt Id and is typically
	*		XPAR_<INTC_instance>_<UARTNS550_instance>_VEC_ID
	*		value from xparameters.h.
	*
	* @return	None.
	*
	* @note		None.
	*
	******************************************************************************/
	void UartNs550DisableIntrSystem(INTC *IntcInstancePtr, u16 UartIntrId)
	{

		/*
		 * Disconnect and disable the interrupt for the UartNs550 device.
		 */
			XIntc_Disconnect(IntcInstancePtr, UartIntrId);

	}

	int UartSetup(INTC *IntcInstancePtr, XUartNs550 *UartInstancePtr, u16 UartDeviceId, u16 UartIntrId) {
		//Set up the UART and configure the interrupt handler for bytes in RX buffer
		int Status;
		u16 Options;

		Status = XUartNs550_Initialize(UartInstancePtr, UartDeviceId);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}

		/*
		 * Connect the UART to the interrupt subsystem such that interrupts can
		 * occur. This function is application specific.
		 */
		Status = UartNs550SetupIntrSystem(IntcInstancePtr, UartInstancePtr, UartIntrId);
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		/*
		 * Setup the handlers for the UART that will be called from the
		 * interrupt context when data has been sent and received, specify a
		 * pointer to the UART driver instance as the callback reference so
		 * the handlers are able to access the instance data.
		 */
		XUartNs550_SetHandler(UartInstancePtr, UartNs550IntrHandler, UartInstancePtr);

		/*
		 * Enable the interrupt of the UART so interrupts will occur, and keep the
		 * FIFOs enabled.  Set receive FIFO to trigger on every character.
		 */
		Options = XUN_OPTION_DATA_INTR | XUN_OPTION_FIFOS_ENABLE | XUN_OPTION_RESET_TX_FIFO | XUN_OPTION_RESET_RX_FIFO;
		XUartNs550_SetOptions(UartInstancePtr, Options);
		XUartNs550_SetFifoThreshold(UartInstancePtr, XUN_FIFO_TRIGGER_01);

		return XST_SUCCESS;
	}
