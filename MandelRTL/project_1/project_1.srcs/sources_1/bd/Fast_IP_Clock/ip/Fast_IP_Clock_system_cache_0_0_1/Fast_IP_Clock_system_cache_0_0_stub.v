// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jul 19 22:36:21 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_system_cache_0_0_1/Fast_IP_Clock_system_cache_0_0_stub.v
// Design      : Fast_IP_Clock_system_cache_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "system_cache,Vivado 2019.1" *)
module Fast_IP_Clock_system_cache_0_0(ACLK, ARESETN, S0_AXI_AWID, S0_AXI_AWADDR, 
  S0_AXI_AWLEN, S0_AXI_AWSIZE, S0_AXI_AWBURST, S0_AXI_AWLOCK, S0_AXI_AWCACHE, S0_AXI_AWPROT, 
  S0_AXI_AWQOS, S0_AXI_AWVALID, S0_AXI_AWREADY, S0_AXI_WDATA, S0_AXI_WSTRB, S0_AXI_WLAST, 
  S0_AXI_WVALID, S0_AXI_WREADY, S0_AXI_BRESP, S0_AXI_BID, S0_AXI_BVALID, S0_AXI_BREADY, 
  S0_AXI_ARID, S0_AXI_ARADDR, S0_AXI_ARLEN, S0_AXI_ARSIZE, S0_AXI_ARBURST, S0_AXI_ARLOCK, 
  S0_AXI_ARCACHE, S0_AXI_ARPROT, S0_AXI_ARQOS, S0_AXI_ARVALID, S0_AXI_ARREADY, S0_AXI_RID, 
  S0_AXI_RDATA, S0_AXI_RRESP, S0_AXI_RLAST, S0_AXI_RVALID, S0_AXI_RREADY, S0_AXI_GEN_AWID, 
  S0_AXI_GEN_AWADDR, S0_AXI_GEN_AWLEN, S0_AXI_GEN_AWSIZE, S0_AXI_GEN_AWBURST, 
  S0_AXI_GEN_AWLOCK, S0_AXI_GEN_AWCACHE, S0_AXI_GEN_AWPROT, S0_AXI_GEN_AWQOS, 
  S0_AXI_GEN_AWVALID, S0_AXI_GEN_AWREADY, S0_AXI_GEN_WDATA, S0_AXI_GEN_WSTRB, 
  S0_AXI_GEN_WLAST, S0_AXI_GEN_WVALID, S0_AXI_GEN_WREADY, S0_AXI_GEN_BRESP, S0_AXI_GEN_BID, 
  S0_AXI_GEN_BVALID, S0_AXI_GEN_BREADY, S0_AXI_GEN_ARID, S0_AXI_GEN_ARADDR, 
  S0_AXI_GEN_ARLEN, S0_AXI_GEN_ARSIZE, S0_AXI_GEN_ARBURST, S0_AXI_GEN_ARLOCK, 
  S0_AXI_GEN_ARCACHE, S0_AXI_GEN_ARPROT, S0_AXI_GEN_ARQOS, S0_AXI_GEN_ARVALID, 
  S0_AXI_GEN_ARREADY, S0_AXI_GEN_RID, S0_AXI_GEN_RDATA, S0_AXI_GEN_RRESP, S0_AXI_GEN_RLAST, 
  S0_AXI_GEN_RVALID, S0_AXI_GEN_RREADY, M0_AXI_AWID, M0_AXI_AWADDR, M0_AXI_AWLEN, 
  M0_AXI_AWSIZE, M0_AXI_AWBURST, M0_AXI_AWLOCK, M0_AXI_AWCACHE, M0_AXI_AWPROT, M0_AXI_AWQOS, 
  M0_AXI_AWVALID, M0_AXI_AWREADY, M0_AXI_WDATA, M0_AXI_WSTRB, M0_AXI_WLAST, M0_AXI_WVALID, 
  M0_AXI_WREADY, M0_AXI_BRESP, M0_AXI_BID, M0_AXI_BVALID, M0_AXI_BREADY, M0_AXI_ARID, 
  M0_AXI_ARADDR, M0_AXI_ARLEN, M0_AXI_ARSIZE, M0_AXI_ARBURST, M0_AXI_ARLOCK, M0_AXI_ARCACHE, 
  M0_AXI_ARPROT, M0_AXI_ARQOS, M0_AXI_ARVALID, M0_AXI_ARREADY, M0_AXI_RID, M0_AXI_RDATA, 
  M0_AXI_RRESP, M0_AXI_RLAST, M0_AXI_RVALID, M0_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="ACLK,ARESETN,S0_AXI_AWID[0:0],S0_AXI_AWADDR[31:0],S0_AXI_AWLEN[7:0],S0_AXI_AWSIZE[2:0],S0_AXI_AWBURST[1:0],S0_AXI_AWLOCK,S0_AXI_AWCACHE[3:0],S0_AXI_AWPROT[2:0],S0_AXI_AWQOS[3:0],S0_AXI_AWVALID,S0_AXI_AWREADY,S0_AXI_WDATA[31:0],S0_AXI_WSTRB[3:0],S0_AXI_WLAST,S0_AXI_WVALID,S0_AXI_WREADY,S0_AXI_BRESP[1:0],S0_AXI_BID[0:0],S0_AXI_BVALID,S0_AXI_BREADY,S0_AXI_ARID[0:0],S0_AXI_ARADDR[31:0],S0_AXI_ARLEN[7:0],S0_AXI_ARSIZE[2:0],S0_AXI_ARBURST[1:0],S0_AXI_ARLOCK,S0_AXI_ARCACHE[3:0],S0_AXI_ARPROT[2:0],S0_AXI_ARQOS[3:0],S0_AXI_ARVALID,S0_AXI_ARREADY,S0_AXI_RID[0:0],S0_AXI_RDATA[31:0],S0_AXI_RRESP[1:0],S0_AXI_RLAST,S0_AXI_RVALID,S0_AXI_RREADY,S0_AXI_GEN_AWID[0:0],S0_AXI_GEN_AWADDR[31:0],S0_AXI_GEN_AWLEN[7:0],S0_AXI_GEN_AWSIZE[2:0],S0_AXI_GEN_AWBURST[1:0],S0_AXI_GEN_AWLOCK,S0_AXI_GEN_AWCACHE[3:0],S0_AXI_GEN_AWPROT[2:0],S0_AXI_GEN_AWQOS[3:0],S0_AXI_GEN_AWVALID,S0_AXI_GEN_AWREADY,S0_AXI_GEN_WDATA[31:0],S0_AXI_GEN_WSTRB[3:0],S0_AXI_GEN_WLAST,S0_AXI_GEN_WVALID,S0_AXI_GEN_WREADY,S0_AXI_GEN_BRESP[1:0],S0_AXI_GEN_BID[0:0],S0_AXI_GEN_BVALID,S0_AXI_GEN_BREADY,S0_AXI_GEN_ARID[0:0],S0_AXI_GEN_ARADDR[31:0],S0_AXI_GEN_ARLEN[7:0],S0_AXI_GEN_ARSIZE[2:0],S0_AXI_GEN_ARBURST[1:0],S0_AXI_GEN_ARLOCK,S0_AXI_GEN_ARCACHE[3:0],S0_AXI_GEN_ARPROT[2:0],S0_AXI_GEN_ARQOS[3:0],S0_AXI_GEN_ARVALID,S0_AXI_GEN_ARREADY,S0_AXI_GEN_RID[0:0],S0_AXI_GEN_RDATA[31:0],S0_AXI_GEN_RRESP[1:0],S0_AXI_GEN_RLAST,S0_AXI_GEN_RVALID,S0_AXI_GEN_RREADY,M0_AXI_AWID[0:0],M0_AXI_AWADDR[31:0],M0_AXI_AWLEN[7:0],M0_AXI_AWSIZE[2:0],M0_AXI_AWBURST[1:0],M0_AXI_AWLOCK,M0_AXI_AWCACHE[3:0],M0_AXI_AWPROT[2:0],M0_AXI_AWQOS[3:0],M0_AXI_AWVALID,M0_AXI_AWREADY,M0_AXI_WDATA[31:0],M0_AXI_WSTRB[3:0],M0_AXI_WLAST,M0_AXI_WVALID,M0_AXI_WREADY,M0_AXI_BRESP[1:0],M0_AXI_BID[0:0],M0_AXI_BVALID,M0_AXI_BREADY,M0_AXI_ARID[0:0],M0_AXI_ARADDR[31:0],M0_AXI_ARLEN[7:0],M0_AXI_ARSIZE[2:0],M0_AXI_ARBURST[1:0],M0_AXI_ARLOCK,M0_AXI_ARCACHE[3:0],M0_AXI_ARPROT[2:0],M0_AXI_ARQOS[3:0],M0_AXI_ARVALID,M0_AXI_ARREADY,M0_AXI_RID[0:0],M0_AXI_RDATA[31:0],M0_AXI_RRESP[1:0],M0_AXI_RLAST,M0_AXI_RVALID,M0_AXI_RREADY" */;
  input ACLK;
  input ARESETN;
  input [0:0]S0_AXI_AWID;
  input [31:0]S0_AXI_AWADDR;
  input [7:0]S0_AXI_AWLEN;
  input [2:0]S0_AXI_AWSIZE;
  input [1:0]S0_AXI_AWBURST;
  input S0_AXI_AWLOCK;
  input [3:0]S0_AXI_AWCACHE;
  input [2:0]S0_AXI_AWPROT;
  input [3:0]S0_AXI_AWQOS;
  input S0_AXI_AWVALID;
  output S0_AXI_AWREADY;
  input [31:0]S0_AXI_WDATA;
  input [3:0]S0_AXI_WSTRB;
  input S0_AXI_WLAST;
  input S0_AXI_WVALID;
  output S0_AXI_WREADY;
  output [1:0]S0_AXI_BRESP;
  output [0:0]S0_AXI_BID;
  output S0_AXI_BVALID;
  input S0_AXI_BREADY;
  input [0:0]S0_AXI_ARID;
  input [31:0]S0_AXI_ARADDR;
  input [7:0]S0_AXI_ARLEN;
  input [2:0]S0_AXI_ARSIZE;
  input [1:0]S0_AXI_ARBURST;
  input S0_AXI_ARLOCK;
  input [3:0]S0_AXI_ARCACHE;
  input [2:0]S0_AXI_ARPROT;
  input [3:0]S0_AXI_ARQOS;
  input S0_AXI_ARVALID;
  output S0_AXI_ARREADY;
  output [0:0]S0_AXI_RID;
  output [31:0]S0_AXI_RDATA;
  output [1:0]S0_AXI_RRESP;
  output S0_AXI_RLAST;
  output S0_AXI_RVALID;
  input S0_AXI_RREADY;
  input [0:0]S0_AXI_GEN_AWID;
  input [31:0]S0_AXI_GEN_AWADDR;
  input [7:0]S0_AXI_GEN_AWLEN;
  input [2:0]S0_AXI_GEN_AWSIZE;
  input [1:0]S0_AXI_GEN_AWBURST;
  input S0_AXI_GEN_AWLOCK;
  input [3:0]S0_AXI_GEN_AWCACHE;
  input [2:0]S0_AXI_GEN_AWPROT;
  input [3:0]S0_AXI_GEN_AWQOS;
  input S0_AXI_GEN_AWVALID;
  output S0_AXI_GEN_AWREADY;
  input [31:0]S0_AXI_GEN_WDATA;
  input [3:0]S0_AXI_GEN_WSTRB;
  input S0_AXI_GEN_WLAST;
  input S0_AXI_GEN_WVALID;
  output S0_AXI_GEN_WREADY;
  output [1:0]S0_AXI_GEN_BRESP;
  output [0:0]S0_AXI_GEN_BID;
  output S0_AXI_GEN_BVALID;
  input S0_AXI_GEN_BREADY;
  input [0:0]S0_AXI_GEN_ARID;
  input [31:0]S0_AXI_GEN_ARADDR;
  input [7:0]S0_AXI_GEN_ARLEN;
  input [2:0]S0_AXI_GEN_ARSIZE;
  input [1:0]S0_AXI_GEN_ARBURST;
  input S0_AXI_GEN_ARLOCK;
  input [3:0]S0_AXI_GEN_ARCACHE;
  input [2:0]S0_AXI_GEN_ARPROT;
  input [3:0]S0_AXI_GEN_ARQOS;
  input S0_AXI_GEN_ARVALID;
  output S0_AXI_GEN_ARREADY;
  output [0:0]S0_AXI_GEN_RID;
  output [31:0]S0_AXI_GEN_RDATA;
  output [1:0]S0_AXI_GEN_RRESP;
  output S0_AXI_GEN_RLAST;
  output S0_AXI_GEN_RVALID;
  input S0_AXI_GEN_RREADY;
  output [0:0]M0_AXI_AWID;
  output [31:0]M0_AXI_AWADDR;
  output [7:0]M0_AXI_AWLEN;
  output [2:0]M0_AXI_AWSIZE;
  output [1:0]M0_AXI_AWBURST;
  output M0_AXI_AWLOCK;
  output [3:0]M0_AXI_AWCACHE;
  output [2:0]M0_AXI_AWPROT;
  output [3:0]M0_AXI_AWQOS;
  output M0_AXI_AWVALID;
  input M0_AXI_AWREADY;
  output [31:0]M0_AXI_WDATA;
  output [3:0]M0_AXI_WSTRB;
  output M0_AXI_WLAST;
  output M0_AXI_WVALID;
  input M0_AXI_WREADY;
  input [1:0]M0_AXI_BRESP;
  input [0:0]M0_AXI_BID;
  input M0_AXI_BVALID;
  output M0_AXI_BREADY;
  output [0:0]M0_AXI_ARID;
  output [31:0]M0_AXI_ARADDR;
  output [7:0]M0_AXI_ARLEN;
  output [2:0]M0_AXI_ARSIZE;
  output [1:0]M0_AXI_ARBURST;
  output M0_AXI_ARLOCK;
  output [3:0]M0_AXI_ARCACHE;
  output [2:0]M0_AXI_ARPROT;
  output [3:0]M0_AXI_ARQOS;
  output M0_AXI_ARVALID;
  input M0_AXI_ARREADY;
  input [0:0]M0_AXI_RID;
  input [31:0]M0_AXI_RDATA;
  input [1:0]M0_AXI_RRESP;
  input M0_AXI_RLAST;
  input M0_AXI_RVALID;
  output M0_AXI_RREADY;
endmodule
