// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jul  5 12:16:02 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_calc_0_0/Fast_IP_Clock_calc_0_0_stub.v
// Design      : Fast_IP_Clock_calc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "calc,Vivado 2019.1" *)
module Fast_IP_Clock_calc_0_0(s_axi_in_parms_AWADDR, 
  s_axi_in_parms_AWVALID, s_axi_in_parms_AWREADY, s_axi_in_parms_WDATA, 
  s_axi_in_parms_WSTRB, s_axi_in_parms_WVALID, s_axi_in_parms_WREADY, 
  s_axi_in_parms_BRESP, s_axi_in_parms_BVALID, s_axi_in_parms_BREADY, 
  s_axi_in_parms_ARADDR, s_axi_in_parms_ARVALID, s_axi_in_parms_ARREADY, 
  s_axi_in_parms_RDATA, s_axi_in_parms_RRESP, s_axi_in_parms_RVALID, 
  s_axi_in_parms_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_gmem_AWADDR, m_axi_gmem_AWLEN, 
  m_axi_gmem_AWSIZE, m_axi_gmem_AWBURST, m_axi_gmem_AWLOCK, m_axi_gmem_AWREGION, 
  m_axi_gmem_AWCACHE, m_axi_gmem_AWPROT, m_axi_gmem_AWQOS, m_axi_gmem_AWVALID, 
  m_axi_gmem_AWREADY, m_axi_gmem_WDATA, m_axi_gmem_WSTRB, m_axi_gmem_WLAST, 
  m_axi_gmem_WVALID, m_axi_gmem_WREADY, m_axi_gmem_BRESP, m_axi_gmem_BVALID, 
  m_axi_gmem_BREADY, m_axi_gmem_ARADDR, m_axi_gmem_ARLEN, m_axi_gmem_ARSIZE, 
  m_axi_gmem_ARBURST, m_axi_gmem_ARLOCK, m_axi_gmem_ARREGION, m_axi_gmem_ARCACHE, 
  m_axi_gmem_ARPROT, m_axi_gmem_ARQOS, m_axi_gmem_ARVALID, m_axi_gmem_ARREADY, 
  m_axi_gmem_RDATA, m_axi_gmem_RRESP, m_axi_gmem_RLAST, m_axi_gmem_RVALID, 
  m_axi_gmem_RREADY, m_axi_buf_r_AWADDR, m_axi_buf_r_AWLEN, m_axi_buf_r_AWSIZE, 
  m_axi_buf_r_AWBURST, m_axi_buf_r_AWLOCK, m_axi_buf_r_AWREGION, m_axi_buf_r_AWCACHE, 
  m_axi_buf_r_AWPROT, m_axi_buf_r_AWQOS, m_axi_buf_r_AWVALID, m_axi_buf_r_AWREADY, 
  m_axi_buf_r_WDATA, m_axi_buf_r_WSTRB, m_axi_buf_r_WLAST, m_axi_buf_r_WVALID, 
  m_axi_buf_r_WREADY, m_axi_buf_r_BRESP, m_axi_buf_r_BVALID, m_axi_buf_r_BREADY, 
  m_axi_buf_r_ARADDR, m_axi_buf_r_ARLEN, m_axi_buf_r_ARSIZE, m_axi_buf_r_ARBURST, 
  m_axi_buf_r_ARLOCK, m_axi_buf_r_ARREGION, m_axi_buf_r_ARCACHE, m_axi_buf_r_ARPROT, 
  m_axi_buf_r_ARQOS, m_axi_buf_r_ARVALID, m_axi_buf_r_ARREADY, m_axi_buf_r_RDATA, 
  m_axi_buf_r_RRESP, m_axi_buf_r_RLAST, m_axi_buf_r_RVALID, m_axi_buf_r_RREADY, LEDControl, 
  LED)
/* synthesis syn_black_box black_box_pad_pin="s_axi_in_parms_AWADDR[6:0],s_axi_in_parms_AWVALID,s_axi_in_parms_AWREADY,s_axi_in_parms_WDATA[31:0],s_axi_in_parms_WSTRB[3:0],s_axi_in_parms_WVALID,s_axi_in_parms_WREADY,s_axi_in_parms_BRESP[1:0],s_axi_in_parms_BVALID,s_axi_in_parms_BREADY,s_axi_in_parms_ARADDR[6:0],s_axi_in_parms_ARVALID,s_axi_in_parms_ARREADY,s_axi_in_parms_RDATA[31:0],s_axi_in_parms_RRESP[1:0],s_axi_in_parms_RVALID,s_axi_in_parms_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_AWADDR[31:0],m_axi_gmem_AWLEN[7:0],m_axi_gmem_AWSIZE[2:0],m_axi_gmem_AWBURST[1:0],m_axi_gmem_AWLOCK[1:0],m_axi_gmem_AWREGION[3:0],m_axi_gmem_AWCACHE[3:0],m_axi_gmem_AWPROT[2:0],m_axi_gmem_AWQOS[3:0],m_axi_gmem_AWVALID,m_axi_gmem_AWREADY,m_axi_gmem_WDATA[31:0],m_axi_gmem_WSTRB[3:0],m_axi_gmem_WLAST,m_axi_gmem_WVALID,m_axi_gmem_WREADY,m_axi_gmem_BRESP[1:0],m_axi_gmem_BVALID,m_axi_gmem_BREADY,m_axi_gmem_ARADDR[31:0],m_axi_gmem_ARLEN[7:0],m_axi_gmem_ARSIZE[2:0],m_axi_gmem_ARBURST[1:0],m_axi_gmem_ARLOCK[1:0],m_axi_gmem_ARREGION[3:0],m_axi_gmem_ARCACHE[3:0],m_axi_gmem_ARPROT[2:0],m_axi_gmem_ARQOS[3:0],m_axi_gmem_ARVALID,m_axi_gmem_ARREADY,m_axi_gmem_RDATA[31:0],m_axi_gmem_RRESP[1:0],m_axi_gmem_RLAST,m_axi_gmem_RVALID,m_axi_gmem_RREADY,m_axi_buf_r_AWADDR[31:0],m_axi_buf_r_AWLEN[7:0],m_axi_buf_r_AWSIZE[2:0],m_axi_buf_r_AWBURST[1:0],m_axi_buf_r_AWLOCK[1:0],m_axi_buf_r_AWREGION[3:0],m_axi_buf_r_AWCACHE[3:0],m_axi_buf_r_AWPROT[2:0],m_axi_buf_r_AWQOS[3:0],m_axi_buf_r_AWVALID,m_axi_buf_r_AWREADY,m_axi_buf_r_WDATA[31:0],m_axi_buf_r_WSTRB[3:0],m_axi_buf_r_WLAST,m_axi_buf_r_WVALID,m_axi_buf_r_WREADY,m_axi_buf_r_BRESP[1:0],m_axi_buf_r_BVALID,m_axi_buf_r_BREADY,m_axi_buf_r_ARADDR[31:0],m_axi_buf_r_ARLEN[7:0],m_axi_buf_r_ARSIZE[2:0],m_axi_buf_r_ARBURST[1:0],m_axi_buf_r_ARLOCK[1:0],m_axi_buf_r_ARREGION[3:0],m_axi_buf_r_ARCACHE[3:0],m_axi_buf_r_ARPROT[2:0],m_axi_buf_r_ARQOS[3:0],m_axi_buf_r_ARVALID,m_axi_buf_r_ARREADY,m_axi_buf_r_RDATA[31:0],m_axi_buf_r_RRESP[1:0],m_axi_buf_r_RLAST,m_axi_buf_r_RVALID,m_axi_buf_r_RREADY,LEDControl[31:0],LED[31:0]" */;
  input [6:0]s_axi_in_parms_AWADDR;
  input s_axi_in_parms_AWVALID;
  output s_axi_in_parms_AWREADY;
  input [31:0]s_axi_in_parms_WDATA;
  input [3:0]s_axi_in_parms_WSTRB;
  input s_axi_in_parms_WVALID;
  output s_axi_in_parms_WREADY;
  output [1:0]s_axi_in_parms_BRESP;
  output s_axi_in_parms_BVALID;
  input s_axi_in_parms_BREADY;
  input [6:0]s_axi_in_parms_ARADDR;
  input s_axi_in_parms_ARVALID;
  output s_axi_in_parms_ARREADY;
  output [31:0]s_axi_in_parms_RDATA;
  output [1:0]s_axi_in_parms_RRESP;
  output s_axi_in_parms_RVALID;
  input s_axi_in_parms_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_gmem_AWADDR;
  output [7:0]m_axi_gmem_AWLEN;
  output [2:0]m_axi_gmem_AWSIZE;
  output [1:0]m_axi_gmem_AWBURST;
  output [1:0]m_axi_gmem_AWLOCK;
  output [3:0]m_axi_gmem_AWREGION;
  output [3:0]m_axi_gmem_AWCACHE;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  output m_axi_gmem_AWVALID;
  input m_axi_gmem_AWREADY;
  output [31:0]m_axi_gmem_WDATA;
  output [3:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WLAST;
  output m_axi_gmem_WVALID;
  input m_axi_gmem_WREADY;
  input [1:0]m_axi_gmem_BRESP;
  input m_axi_gmem_BVALID;
  output m_axi_gmem_BREADY;
  output [31:0]m_axi_gmem_ARADDR;
  output [7:0]m_axi_gmem_ARLEN;
  output [2:0]m_axi_gmem_ARSIZE;
  output [1:0]m_axi_gmem_ARBURST;
  output [1:0]m_axi_gmem_ARLOCK;
  output [3:0]m_axi_gmem_ARREGION;
  output [3:0]m_axi_gmem_ARCACHE;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  output m_axi_gmem_ARVALID;
  input m_axi_gmem_ARREADY;
  input [31:0]m_axi_gmem_RDATA;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  output m_axi_gmem_RREADY;
  output [31:0]m_axi_buf_r_AWADDR;
  output [7:0]m_axi_buf_r_AWLEN;
  output [2:0]m_axi_buf_r_AWSIZE;
  output [1:0]m_axi_buf_r_AWBURST;
  output [1:0]m_axi_buf_r_AWLOCK;
  output [3:0]m_axi_buf_r_AWREGION;
  output [3:0]m_axi_buf_r_AWCACHE;
  output [2:0]m_axi_buf_r_AWPROT;
  output [3:0]m_axi_buf_r_AWQOS;
  output m_axi_buf_r_AWVALID;
  input m_axi_buf_r_AWREADY;
  output [31:0]m_axi_buf_r_WDATA;
  output [3:0]m_axi_buf_r_WSTRB;
  output m_axi_buf_r_WLAST;
  output m_axi_buf_r_WVALID;
  input m_axi_buf_r_WREADY;
  input [1:0]m_axi_buf_r_BRESP;
  input m_axi_buf_r_BVALID;
  output m_axi_buf_r_BREADY;
  output [31:0]m_axi_buf_r_ARADDR;
  output [7:0]m_axi_buf_r_ARLEN;
  output [2:0]m_axi_buf_r_ARSIZE;
  output [1:0]m_axi_buf_r_ARBURST;
  output [1:0]m_axi_buf_r_ARLOCK;
  output [3:0]m_axi_buf_r_ARREGION;
  output [3:0]m_axi_buf_r_ARCACHE;
  output [2:0]m_axi_buf_r_ARPROT;
  output [3:0]m_axi_buf_r_ARQOS;
  output m_axi_buf_r_ARVALID;
  input m_axi_buf_r_ARREADY;
  input [31:0]m_axi_buf_r_RDATA;
  input [1:0]m_axi_buf_r_RRESP;
  input m_axi_buf_r_RLAST;
  input m_axi_buf_r_RVALID;
  output m_axi_buf_r_RREADY;
  input [31:0]LEDControl;
  input [31:0]LED;
endmodule
