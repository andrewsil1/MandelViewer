// ==============================================================
// File generated on Mon Mar 04 15:02:43 -0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
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

