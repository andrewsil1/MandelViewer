// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
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
// 0x10 : Data signal of setup
//        bit 0  - setup[0] (Read/Write)
//        others - reserved
// 0x14 : reserved
// 0x18 : Data signal of X0_V
//        bit 31~0 - X0_V[31:0] (Read/Write)
// 0x1c : Data signal of X0_V
//        bit 7~0 - X0_V[39:32] (Read/Write)
//        others  - reserved
// 0x20 : reserved
// 0x24 : Data signal of Y0_V
//        bit 31~0 - Y0_V[31:0] (Read/Write)
// 0x28 : Data signal of Y0_V
//        bit 7~0 - Y0_V[39:32] (Read/Write)
//        others  - reserved
// 0x2c : reserved
// 0x30 : Data signal of X1_V
//        bit 31~0 - X1_V[31:0] (Read/Write)
// 0x34 : Data signal of X1_V
//        bit 7~0 - X1_V[39:32] (Read/Write)
//        others  - reserved
// 0x38 : reserved
// 0x3c : Data signal of width_V
//        bit 11~0 - width_V[11:0] (Read/Write)
//        others   - reserved
// 0x40 : reserved
// 0x44 : Data signal of maxWidth_V
//        bit 11~0 - maxWidth_V[11:0] (Read)
//        others   - reserved
// 0x48 : Control signal of maxWidth_V
//        bit 0  - maxWidth_V_ap_vld (Read/COR)
//        others - reserved
// 0x4c : Data signal of unroll
//        bit 15~0 - unroll[15:0] (Read)
//        others   - reserved
// 0x50 : Control signal of unroll
//        bit 0  - unroll_ap_vld (Read/COR)
//        others - reserved
// 0x54 : Data signal of maxIter
//        bit 15~0 - maxIter[15:0] (Read/Write)
//        others   - reserved
// 0x58 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCALC_IN_PARMS_ADDR_AP_CTRL         0x00
#define XCALC_IN_PARMS_ADDR_GIE             0x04
#define XCALC_IN_PARMS_ADDR_IER             0x08
#define XCALC_IN_PARMS_ADDR_ISR             0x0c
#define XCALC_IN_PARMS_ADDR_SETUP_DATA      0x10
#define XCALC_IN_PARMS_BITS_SETUP_DATA      1
#define XCALC_IN_PARMS_ADDR_X0_V_DATA       0x18
#define XCALC_IN_PARMS_BITS_X0_V_DATA       40
#define XCALC_IN_PARMS_ADDR_Y0_V_DATA       0x24
#define XCALC_IN_PARMS_BITS_Y0_V_DATA       40
#define XCALC_IN_PARMS_ADDR_X1_V_DATA       0x30
#define XCALC_IN_PARMS_BITS_X1_V_DATA       40
#define XCALC_IN_PARMS_ADDR_WIDTH_V_DATA    0x3c
#define XCALC_IN_PARMS_BITS_WIDTH_V_DATA    12
#define XCALC_IN_PARMS_ADDR_MAXWIDTH_V_DATA 0x44
#define XCALC_IN_PARMS_BITS_MAXWIDTH_V_DATA 12
#define XCALC_IN_PARMS_ADDR_MAXWIDTH_V_CTRL 0x48
#define XCALC_IN_PARMS_ADDR_UNROLL_DATA     0x4c
#define XCALC_IN_PARMS_BITS_UNROLL_DATA     16
#define XCALC_IN_PARMS_ADDR_UNROLL_CTRL     0x50
#define XCALC_IN_PARMS_ADDR_MAXITER_DATA    0x54
#define XCALC_IN_PARMS_BITS_MAXITER_DATA    16

