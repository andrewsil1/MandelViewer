// ==============================================================
// File generated on Thu Feb 14 15:44:13 -0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// in_parms
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of X0_V
//        bit 31~0 - X0_V[31:0] (Read/Write)
// 0x14 : Data signal of X0_V
//        bit 7~0 - X0_V[39:32] (Read/Write)
//        others  - reserved
// 0x18 : reserved
// 0x1c : Data signal of Y0_V
//        bit 31~0 - Y0_V[31:0] (Read/Write)
// 0x20 : Data signal of Y0_V
//        bit 7~0 - Y0_V[39:32] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// 0x28 : Data signal of X1_V
//        bit 31~0 - X1_V[31:0] (Read/Write)
// 0x2c : Data signal of X1_V
//        bit 7~0 - X1_V[39:32] (Read/Write)
//        others  - reserved
// 0x30 : reserved
// 0x34 : Data signal of width_V
//        bit 11~0 - width_V[11:0] (Read/Write)
//        others   - reserved
// 0x38 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCALC_IN_PARMS_ADDR_AP_CTRL      0x00
#define XCALC_IN_PARMS_ADDR_GIE          0x04
#define XCALC_IN_PARMS_ADDR_IER          0x08
#define XCALC_IN_PARMS_ADDR_ISR          0x0c
#define XCALC_IN_PARMS_ADDR_X0_V_DATA    0x10
#define XCALC_IN_PARMS_BITS_X0_V_DATA    40
#define XCALC_IN_PARMS_ADDR_Y0_V_DATA    0x1c
#define XCALC_IN_PARMS_BITS_Y0_V_DATA    40
#define XCALC_IN_PARMS_ADDR_X1_V_DATA    0x28
#define XCALC_IN_PARMS_BITS_X1_V_DATA    40
#define XCALC_IN_PARMS_ADDR_WIDTH_V_DATA 0x34
#define XCALC_IN_PARMS_BITS_WIDTH_V_DATA 12

