// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcalc.h"

extern XCalc_Config XCalc_ConfigTable[];

XCalc_Config *XCalc_LookupConfig(u16 DeviceId) {
	XCalc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCALC_NUM_INSTANCES; Index++) {
		if (XCalc_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCalc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalc_Initialize(XCalc *InstancePtr, u16 DeviceId) {
	XCalc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalc_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalc_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

