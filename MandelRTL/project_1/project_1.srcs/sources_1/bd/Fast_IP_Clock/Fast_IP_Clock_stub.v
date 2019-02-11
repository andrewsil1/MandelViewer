// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan 29 15:56:33 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/andrewsi/OneDrive/fpgaproducts/Vivado/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/Fast_IP_Clock_stub.v
// Design      : Fast_IP_Clock
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Fast_IP_Clock(btnCpuReset, clk, psram_rtl_0_addr, 
  psram_rtl_0_adv_ldn, psram_rtl_0_ben, psram_rtl_0_ce_n, psram_rtl_0_cre, 
  psram_rtl_0_dq_i, psram_rtl_0_dq_o, psram_rtl_0_dq_t, psram_rtl_0_oen, psram_rtl_0_wen, 
  push_buttons_5bits_tri_i, usb_uart_rxd, usb_uart_txd)
/* synthesis syn_black_box black_box_pad_pin="btnCpuReset,clk,psram_rtl_0_addr[22:0],psram_rtl_0_adv_ldn,psram_rtl_0_ben[1:0],psram_rtl_0_ce_n,psram_rtl_0_cre,psram_rtl_0_dq_i[15:0],psram_rtl_0_dq_o[15:0],psram_rtl_0_dq_t[15:0],psram_rtl_0_oen,psram_rtl_0_wen,push_buttons_5bits_tri_i[4:0],usb_uart_rxd,usb_uart_txd" */;
  input btnCpuReset;
  input clk;
  output [22:0]psram_rtl_0_addr;
  output psram_rtl_0_adv_ldn;
  output [1:0]psram_rtl_0_ben;
  output psram_rtl_0_ce_n;
  output psram_rtl_0_cre;
  input [15:0]psram_rtl_0_dq_i;
  output [15:0]psram_rtl_0_dq_o;
  output [15:0]psram_rtl_0_dq_t;
  output psram_rtl_0_oen;
  output psram_rtl_0_wen;
  input [4:0]push_buttons_5bits_tri_i;
  input usb_uart_rxd;
  output usb_uart_txd;
endmodule
