// ==============================================================
// File generated on Sat Feb 23 12:26:17 -0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCALC_H
#define XCALC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcalc_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 In_parms_BaseAddress;
} XCalc_Config;
#endif

typedef struct {
    u32 In_parms_BaseAddress;
    u32 IsReady;
} XCalc;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCalc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCalc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCalc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCalc_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCalc_Initialize(XCalc *InstancePtr, u16 DeviceId);
XCalc_Config* XCalc_LookupConfig(u16 DeviceId);
int XCalc_CfgInitialize(XCalc *InstancePtr, XCalc_Config *ConfigPtr);
#else
int XCalc_Initialize(XCalc *InstancePtr, const char* InstanceName);
int XCalc_Release(XCalc *InstancePtr);
#endif

void XCalc_Start(XCalc *InstancePtr);
u32 XCalc_IsDone(XCalc *InstancePtr);
u32 XCalc_IsIdle(XCalc *InstancePtr);
u32 XCalc_IsReady(XCalc *InstancePtr);
void XCalc_EnableAutoRestart(XCalc *InstancePtr);
void XCalc_DisableAutoRestart(XCalc *InstancePtr);

void XCalc_Set_X0_V(XCalc *InstancePtr, u64 Data);
u64 XCalc_Get_X0_V(XCalc *InstancePtr);
void XCalc_Set_Y0_V(XCalc *InstancePtr, u64 Data);
u64 XCalc_Get_Y0_V(XCalc *InstancePtr);
void XCalc_Set_X1_V(XCalc *InstancePtr, u64 Data);
u64 XCalc_Get_X1_V(XCalc *InstancePtr);
void XCalc_Set_width_V(XCalc *InstancePtr, u32 Data);
u32 XCalc_Get_width_V(XCalc *InstancePtr);

void XCalc_InterruptGlobalEnable(XCalc *InstancePtr);
void XCalc_InterruptGlobalDisable(XCalc *InstancePtr);
void XCalc_InterruptEnable(XCalc *InstancePtr, u32 Mask);
void XCalc_InterruptDisable(XCalc *InstancePtr, u32 Mask);
void XCalc_InterruptClear(XCalc *InstancePtr, u32 Mask);
u32 XCalc_InterruptGetEnabled(XCalc *InstancePtr);
u32 XCalc_InterruptGetStatus(XCalc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
