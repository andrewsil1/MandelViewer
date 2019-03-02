// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Mar  1 16:15:27 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_clk_wiz_0_0/Fast_IP_Clock_clk_wiz_0_0_stub.v
// Design      : Fast_IP_Clock_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Fast_IP_Clock_clk_wiz_0_0(AXIclk, MBClk, CalcClk, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="AXIclk,MBClk,CalcClk,locked,clk_in1" */;
  output AXIclk;
  output MBClk;
  output CalcClk;
  output locked;
  input clk_in1;
endmodule
