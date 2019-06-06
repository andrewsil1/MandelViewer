// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: QuickSilver:hls:calc:1.01
// IP Revision: 1906051351

(* X_CORE_INFO = "calc,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,calc,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  s_axi_in_parms_AWADDR,
  s_axi_in_parms_AWVALID,
  s_axi_in_parms_AWREADY,
  s_axi_in_parms_WDATA,
  s_axi_in_parms_WSTRB,
  s_axi_in_parms_WVALID,
  s_axi_in_parms_WREADY,
  s_axi_in_parms_BRESP,
  s_axi_in_parms_BVALID,
  s_axi_in_parms_BREADY,
  s_axi_in_parms_ARADDR,
  s_axi_in_parms_ARVALID,
  s_axi_in_parms_ARREADY,
  s_axi_in_parms_RDATA,
  s_axi_in_parms_RRESP,
  s_axi_in_parms_RVALID,
  s_axi_in_parms_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_buf_r_AWADDR,
  m_axi_buf_r_AWLEN,
  m_axi_buf_r_AWSIZE,
  m_axi_buf_r_AWBURST,
  m_axi_buf_r_AWLOCK,
  m_axi_buf_r_AWREGION,
  m_axi_buf_r_AWCACHE,
  m_axi_buf_r_AWPROT,
  m_axi_buf_r_AWQOS,
  m_axi_buf_r_AWVALID,
  m_axi_buf_r_AWREADY,
  m_axi_buf_r_WDATA,
  m_axi_buf_r_WSTRB,
  m_axi_buf_r_WLAST,
  m_axi_buf_r_WVALID,
  m_axi_buf_r_WREADY,
  m_axi_buf_r_BRESP,
  m_axi_buf_r_BVALID,
  m_axi_buf_r_BREADY,
  m_axi_buf_r_ARADDR,
  m_axi_buf_r_ARLEN,
  m_axi_buf_r_ARSIZE,
  m_axi_buf_r_ARBURST,
  m_axi_buf_r_ARLOCK,
  m_axi_buf_r_ARREGION,
  m_axi_buf_r_ARCACHE,
  m_axi_buf_r_ARPROT,
  m_axi_buf_r_ARQOS,
  m_axi_buf_r_ARVALID,
  m_axi_buf_r_ARREADY,
  m_axi_buf_r_RDATA,
  m_axi_buf_r_RRESP,
  m_axi_buf_r_RLAST,
  m_axi_buf_r_RVALID,
  m_axi_buf_r_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms AWADDR" *)
input wire [6 : 0] s_axi_in_parms_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms AWVALID" *)
input wire s_axi_in_parms_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms AWREADY" *)
output wire s_axi_in_parms_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms WDATA" *)
input wire [31 : 0] s_axi_in_parms_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms WSTRB" *)
input wire [3 : 0] s_axi_in_parms_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms WVALID" *)
input wire s_axi_in_parms_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms WREADY" *)
output wire s_axi_in_parms_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms BRESP" *)
output wire [1 : 0] s_axi_in_parms_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms BVALID" *)
output wire s_axi_in_parms_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms BREADY" *)
input wire s_axi_in_parms_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms ARADDR" *)
input wire [6 : 0] s_axi_in_parms_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms ARVALID" *)
input wire s_axi_in_parms_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms ARREADY" *)
output wire s_axi_in_parms_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms RDATA" *)
output wire [31 : 0] s_axi_in_parms_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms RRESP" *)
output wire [1 : 0] s_axi_in_parms_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms RVALID" *)
output wire s_axi_in_parms_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_in_parms, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 166000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THR\
EADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms RREADY" *)
input wire s_axi_in_parms_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_in_parms:m_axi_buf_r, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 166000000.0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWADDR" *)
output wire [31 : 0] m_axi_buf_r_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWLEN" *)
output wire [7 : 0] m_axi_buf_r_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWSIZE" *)
output wire [2 : 0] m_axi_buf_r_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWBURST" *)
output wire [1 : 0] m_axi_buf_r_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWLOCK" *)
output wire [1 : 0] m_axi_buf_r_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWREGION" *)
output wire [3 : 0] m_axi_buf_r_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWCACHE" *)
output wire [3 : 0] m_axi_buf_r_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWPROT" *)
output wire [2 : 0] m_axi_buf_r_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWQOS" *)
output wire [3 : 0] m_axi_buf_r_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWVALID" *)
output wire m_axi_buf_r_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWREADY" *)
input wire m_axi_buf_r_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r WDATA" *)
output wire [31 : 0] m_axi_buf_r_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r WSTRB" *)
output wire [3 : 0] m_axi_buf_r_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r WLAST" *)
output wire m_axi_buf_r_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r WVALID" *)
output wire m_axi_buf_r_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r WREADY" *)
input wire m_axi_buf_r_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r BRESP" *)
input wire [1 : 0] m_axi_buf_r_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r BVALID" *)
input wire m_axi_buf_r_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r BREADY" *)
output wire m_axi_buf_r_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARADDR" *)
output wire [31 : 0] m_axi_buf_r_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARLEN" *)
output wire [7 : 0] m_axi_buf_r_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARSIZE" *)
output wire [2 : 0] m_axi_buf_r_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARBURST" *)
output wire [1 : 0] m_axi_buf_r_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARLOCK" *)
output wire [1 : 0] m_axi_buf_r_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARREGION" *)
output wire [3 : 0] m_axi_buf_r_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARCACHE" *)
output wire [3 : 0] m_axi_buf_r_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARPROT" *)
output wire [2 : 0] m_axi_buf_r_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARQOS" *)
output wire [3 : 0] m_axi_buf_r_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARVALID" *)
output wire m_axi_buf_r_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARREADY" *)
input wire m_axi_buf_r_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r RDATA" *)
input wire [31 : 0] m_axi_buf_r_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r RRESP" *)
input wire [1 : 0] m_axi_buf_r_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r RLAST" *)
input wire m_axi_buf_r_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r RVALID" *)
input wire m_axi_buf_r_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_buf_r, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 166000000.0, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMA\
IN bd_0_ap_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r RREADY" *)
output wire m_axi_buf_r_RREADY;

  calc #(
    .C_S_AXI_IN_PARMS_ADDR_WIDTH(7),
    .C_S_AXI_IN_PARMS_DATA_WIDTH(32),
    .C_M_AXI_BUF_R_ID_WIDTH(1),
    .C_M_AXI_BUF_R_ADDR_WIDTH(32),
    .C_M_AXI_BUF_R_DATA_WIDTH(32),
    .C_M_AXI_BUF_R_AWUSER_WIDTH(1),
    .C_M_AXI_BUF_R_ARUSER_WIDTH(1),
    .C_M_AXI_BUF_R_WUSER_WIDTH(1),
    .C_M_AXI_BUF_R_RUSER_WIDTH(1),
    .C_M_AXI_BUF_R_BUSER_WIDTH(1),
    .C_M_AXI_BUF_R_USER_VALUE(32'H00000000),
    .C_M_AXI_BUF_R_PROT_VALUE(3'B000),
    .C_M_AXI_BUF_R_CACHE_VALUE(4'B0011),
    .C_M_AXI_BUF_R_TARGET_ADDR(32'H00000000)
  ) inst (
    .s_axi_in_parms_AWADDR(s_axi_in_parms_AWADDR),
    .s_axi_in_parms_AWVALID(s_axi_in_parms_AWVALID),
    .s_axi_in_parms_AWREADY(s_axi_in_parms_AWREADY),
    .s_axi_in_parms_WDATA(s_axi_in_parms_WDATA),
    .s_axi_in_parms_WSTRB(s_axi_in_parms_WSTRB),
    .s_axi_in_parms_WVALID(s_axi_in_parms_WVALID),
    .s_axi_in_parms_WREADY(s_axi_in_parms_WREADY),
    .s_axi_in_parms_BRESP(s_axi_in_parms_BRESP),
    .s_axi_in_parms_BVALID(s_axi_in_parms_BVALID),
    .s_axi_in_parms_BREADY(s_axi_in_parms_BREADY),
    .s_axi_in_parms_ARADDR(s_axi_in_parms_ARADDR),
    .s_axi_in_parms_ARVALID(s_axi_in_parms_ARVALID),
    .s_axi_in_parms_ARREADY(s_axi_in_parms_ARREADY),
    .s_axi_in_parms_RDATA(s_axi_in_parms_RDATA),
    .s_axi_in_parms_RRESP(s_axi_in_parms_RRESP),
    .s_axi_in_parms_RVALID(s_axi_in_parms_RVALID),
    .s_axi_in_parms_RREADY(s_axi_in_parms_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_buf_r_AWID(),
    .m_axi_buf_r_AWADDR(m_axi_buf_r_AWADDR),
    .m_axi_buf_r_AWLEN(m_axi_buf_r_AWLEN),
    .m_axi_buf_r_AWSIZE(m_axi_buf_r_AWSIZE),
    .m_axi_buf_r_AWBURST(m_axi_buf_r_AWBURST),
    .m_axi_buf_r_AWLOCK(m_axi_buf_r_AWLOCK),
    .m_axi_buf_r_AWREGION(m_axi_buf_r_AWREGION),
    .m_axi_buf_r_AWCACHE(m_axi_buf_r_AWCACHE),
    .m_axi_buf_r_AWPROT(m_axi_buf_r_AWPROT),
    .m_axi_buf_r_AWQOS(m_axi_buf_r_AWQOS),
    .m_axi_buf_r_AWUSER(),
    .m_axi_buf_r_AWVALID(m_axi_buf_r_AWVALID),
    .m_axi_buf_r_AWREADY(m_axi_buf_r_AWREADY),
    .m_axi_buf_r_WID(),
    .m_axi_buf_r_WDATA(m_axi_buf_r_WDATA),
    .m_axi_buf_r_WSTRB(m_axi_buf_r_WSTRB),
    .m_axi_buf_r_WLAST(m_axi_buf_r_WLAST),
    .m_axi_buf_r_WUSER(),
    .m_axi_buf_r_WVALID(m_axi_buf_r_WVALID),
    .m_axi_buf_r_WREADY(m_axi_buf_r_WREADY),
    .m_axi_buf_r_BID(1'B0),
    .m_axi_buf_r_BRESP(m_axi_buf_r_BRESP),
    .m_axi_buf_r_BUSER(1'B0),
    .m_axi_buf_r_BVALID(m_axi_buf_r_BVALID),
    .m_axi_buf_r_BREADY(m_axi_buf_r_BREADY),
    .m_axi_buf_r_ARID(),
    .m_axi_buf_r_ARADDR(m_axi_buf_r_ARADDR),
    .m_axi_buf_r_ARLEN(m_axi_buf_r_ARLEN),
    .m_axi_buf_r_ARSIZE(m_axi_buf_r_ARSIZE),
    .m_axi_buf_r_ARBURST(m_axi_buf_r_ARBURST),
    .m_axi_buf_r_ARLOCK(m_axi_buf_r_ARLOCK),
    .m_axi_buf_r_ARREGION(m_axi_buf_r_ARREGION),
    .m_axi_buf_r_ARCACHE(m_axi_buf_r_ARCACHE),
    .m_axi_buf_r_ARPROT(m_axi_buf_r_ARPROT),
    .m_axi_buf_r_ARQOS(m_axi_buf_r_ARQOS),
    .m_axi_buf_r_ARUSER(),
    .m_axi_buf_r_ARVALID(m_axi_buf_r_ARVALID),
    .m_axi_buf_r_ARREADY(m_axi_buf_r_ARREADY),
    .m_axi_buf_r_RID(1'B0),
    .m_axi_buf_r_RDATA(m_axi_buf_r_RDATA),
    .m_axi_buf_r_RRESP(m_axi_buf_r_RRESP),
    .m_axi_buf_r_RLAST(m_axi_buf_r_RLAST),
    .m_axi_buf_r_RUSER(1'B0),
    .m_axi_buf_r_RVALID(m_axi_buf_r_RVALID),
    .m_axi_buf_r_RREADY(m_axi_buf_r_RREADY)
  );
endmodule
