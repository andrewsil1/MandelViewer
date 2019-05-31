// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcalc.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCalc_CfgInitialize(XCalc *InstancePtr, XCalc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->In_parms_BaseAddress = ConfigPtr->In_parms_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCalc_Start(XCalc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_AP_CTRL) & 0x80;
    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCalc_IsDone(XCalc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCalc_IsIdle(XCalc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCalc_IsReady(XCalc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCalc_EnableAutoRestart(XCalc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_AP_CTRL, 0x80);
}

void XCalc_DisableAutoRestart(XCalc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_AP_CTRL, 0);
}

void XCalc_Set_X0_V(XCalc *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X0_V_DATA, (u32)(Data));
    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X0_V_DATA + 4, (u32)(Data >> 32));
}

u64 XCalc_Get_X0_V(XCalc *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X0_V_DATA);
    Data += (u64)XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X0_V_DATA + 4) << 32;
    return Data;
}

void XCalc_Set_Y0_V(XCalc *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_Y0_V_DATA, (u32)(Data));
    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_Y0_V_DATA + 4, (u32)(Data >> 32));
}

u64 XCalc_Get_Y0_V(XCalc *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_Y0_V_DATA);
    Data += (u64)XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_Y0_V_DATA + 4) << 32;
    return Data;
}

void XCalc_Set_X1_V(XCalc *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X1_V_DATA, (u32)(Data));
    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X1_V_DATA + 4, (u32)(Data >> 32));
}

u64 XCalc_Get_X1_V(XCalc *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X1_V_DATA);
    Data += (u64)XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_X1_V_DATA + 4) << 32;
    return Data;
}

void XCalc_Set_width_V(XCalc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_WIDTH_V_DATA, Data);
}

u32 XCalc_Get_width_V(XCalc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_WIDTH_V_DATA);
    return Data;
}

void XCalc_Set_maxIter(XCalc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_MAXITER_DATA, Data);
}

u32 XCalc_Get_maxIter(XCalc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_MAXITER_DATA);
    return Data;
}

void XCalc_InterruptGlobalEnable(XCalc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_GIE, 1);
}

void XCalc_InterruptGlobalDisable(XCalc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_GIE, 0);
}

void XCalc_InterruptEnable(XCalc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_IER);
    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_IER, Register | Mask);
}

void XCalc_InterruptDisable(XCalc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_IER);
    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_IER, Register & (~Mask));
}

void XCalc_InterruptClear(XCalc *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalc_WriteReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_ISR, Mask);
}

u32 XCalc_InterruptGetEnabled(XCalc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_IER);
}

u32 XCalc_InterruptGetStatus(XCalc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalc_ReadReg(InstancePtr->In_parms_BaseAddress, XCALC_IN_PARMS_ADDR_ISR);
}

