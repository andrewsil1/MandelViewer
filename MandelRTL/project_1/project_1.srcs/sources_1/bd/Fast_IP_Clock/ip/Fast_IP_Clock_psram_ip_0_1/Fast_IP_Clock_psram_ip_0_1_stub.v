// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jul 17 22:13:34 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_psram_ip_0_1/Fast_IP_Clock_psram_ip_0_1_stub.v
// Design      : Fast_IP_Clock_psram_ip_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "psram_ip_v1_1,Vivado 2019.1" *)
module Fast_IP_Clock_psram_ip_0_1(MEM_ADDR_OUT, MEM_CEN, MEM_OEN, MEM_WEN, MEM_BEN, 
  MEM_ADV, MEM_CRE, MEM_DATA_I, MEM_DATA_O, MEM_DATA_T, s00_axi_aclk, s00_axi_aresetn, 
  s00_axi_awid, s00_axi_awaddr, s00_axi_awlen, s00_axi_awsize, s00_axi_awburst, 
  s00_axi_awlock, s00_axi_awcache, s00_axi_awprot, s00_axi_awqos, s00_axi_awregion, 
  s00_axi_awuser, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wlast, s00_axi_wuser, s00_axi_wvalid, s00_axi_wready, s00_axi_bid, s00_axi_bresp, 
  s00_axi_buser, s00_axi_bvalid, s00_axi_bready, s00_axi_arid, s00_axi_araddr, s00_axi_arlen, 
  s00_axi_arsize, s00_axi_arburst, s00_axi_arlock, s00_axi_arcache, s00_axi_arprot, 
  s00_axi_arqos, s00_axi_arregion, s00_axi_aruser, s00_axi_arvalid, s00_axi_arready, 
  s00_axi_rid, s00_axi_rdata, s00_axi_rresp, s00_axi_rlast, s00_axi_ruser, s00_axi_rvalid, 
  s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="MEM_ADDR_OUT[22:0],MEM_CEN,MEM_OEN,MEM_WEN,MEM_BEN[1:0],MEM_ADV,MEM_CRE,MEM_DATA_I[15:0],MEM_DATA_O[15:0],MEM_DATA_T[15:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awid[0:0],s00_axi_awaddr[23:0],s00_axi_awlen[7:0],s00_axi_awsize[2:0],s00_axi_awburst[1:0],s00_axi_awlock,s00_axi_awcache[3:0],s00_axi_awprot[2:0],s00_axi_awqos[3:0],s00_axi_awregion[3:0],s00_axi_awuser[0:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wlast,s00_axi_wuser[0:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bid[0:0],s00_axi_bresp[1:0],s00_axi_buser[0:0],s00_axi_bvalid,s00_axi_bready,s00_axi_arid[0:0],s00_axi_araddr[23:0],s00_axi_arlen[7:0],s00_axi_arsize[2:0],s00_axi_arburst[1:0],s00_axi_arlock,s00_axi_arcache[3:0],s00_axi_arprot[2:0],s00_axi_arqos[3:0],s00_axi_arregion[3:0],s00_axi_aruser[0:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rid[0:0],s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rlast,s00_axi_ruser[0:0],s00_axi_rvalid,s00_axi_rready" */;
  output [22:0]MEM_ADDR_OUT;
  output MEM_CEN;
  output MEM_OEN;
  output MEM_WEN;
  output [1:0]MEM_BEN;
  output MEM_ADV;
  output MEM_CRE;
  input [15:0]MEM_DATA_I;
  output [15:0]MEM_DATA_O;
  output [15:0]MEM_DATA_T;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [0:0]s00_axi_awid;
  input [23:0]s00_axi_awaddr;
  input [7:0]s00_axi_awlen;
  input [2:0]s00_axi_awsize;
  input [1:0]s00_axi_awburst;
  input s00_axi_awlock;
  input [3:0]s00_axi_awcache;
  input [2:0]s00_axi_awprot;
  input [3:0]s00_axi_awqos;
  input [3:0]s00_axi_awregion;
  input [0:0]s00_axi_awuser;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wlast;
  input [0:0]s00_axi_wuser;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [0:0]s00_axi_bid;
  output [1:0]s00_axi_bresp;
  output [0:0]s00_axi_buser;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [0:0]s00_axi_arid;
  input [23:0]s00_axi_araddr;
  input [7:0]s00_axi_arlen;
  input [2:0]s00_axi_arsize;
  input [1:0]s00_axi_arburst;
  input s00_axi_arlock;
  input [3:0]s00_axi_arcache;
  input [2:0]s00_axi_arprot;
  input [3:0]s00_axi_arqos;
  input [3:0]s00_axi_arregion;
  input [0:0]s00_axi_aruser;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [0:0]s00_axi_rid;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rlast;
  output [0:0]s00_axi_ruser;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
