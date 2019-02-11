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

// IP VLNV: QuickSilver:hls:calc:1.0
// IP Revision: 1902102243

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
calc_0 your_instance_name (
  .s_axi_in_parms_AWADDR(s_axi_in_parms_AWADDR),    // input wire [5 : 0] s_axi_in_parms_AWADDR
  .s_axi_in_parms_AWVALID(s_axi_in_parms_AWVALID),  // input wire s_axi_in_parms_AWVALID
  .s_axi_in_parms_AWREADY(s_axi_in_parms_AWREADY),  // output wire s_axi_in_parms_AWREADY
  .s_axi_in_parms_WDATA(s_axi_in_parms_WDATA),      // input wire [31 : 0] s_axi_in_parms_WDATA
  .s_axi_in_parms_WSTRB(s_axi_in_parms_WSTRB),      // input wire [3 : 0] s_axi_in_parms_WSTRB
  .s_axi_in_parms_WVALID(s_axi_in_parms_WVALID),    // input wire s_axi_in_parms_WVALID
  .s_axi_in_parms_WREADY(s_axi_in_parms_WREADY),    // output wire s_axi_in_parms_WREADY
  .s_axi_in_parms_BRESP(s_axi_in_parms_BRESP),      // output wire [1 : 0] s_axi_in_parms_BRESP
  .s_axi_in_parms_BVALID(s_axi_in_parms_BVALID),    // output wire s_axi_in_parms_BVALID
  .s_axi_in_parms_BREADY(s_axi_in_parms_BREADY),    // input wire s_axi_in_parms_BREADY
  .s_axi_in_parms_ARADDR(s_axi_in_parms_ARADDR),    // input wire [5 : 0] s_axi_in_parms_ARADDR
  .s_axi_in_parms_ARVALID(s_axi_in_parms_ARVALID),  // input wire s_axi_in_parms_ARVALID
  .s_axi_in_parms_ARREADY(s_axi_in_parms_ARREADY),  // output wire s_axi_in_parms_ARREADY
  .s_axi_in_parms_RDATA(s_axi_in_parms_RDATA),      // output wire [31 : 0] s_axi_in_parms_RDATA
  .s_axi_in_parms_RRESP(s_axi_in_parms_RRESP),      // output wire [1 : 0] s_axi_in_parms_RRESP
  .s_axi_in_parms_RVALID(s_axi_in_parms_RVALID),    // output wire s_axi_in_parms_RVALID
  .s_axi_in_parms_RREADY(s_axi_in_parms_RREADY),    // input wire s_axi_in_parms_RREADY
  .ap_clk(ap_clk),                                  // input wire ap_clk
  .ap_rst_n(ap_rst_n),                              // input wire ap_rst_n
  .interrupt(interrupt),                            // output wire interrupt
  .m_axi_buf_r_AWADDR(m_axi_buf_r_AWADDR),          // output wire [31 : 0] m_axi_buf_r_AWADDR
  .m_axi_buf_r_AWLEN(m_axi_buf_r_AWLEN),            // output wire [7 : 0] m_axi_buf_r_AWLEN
  .m_axi_buf_r_AWSIZE(m_axi_buf_r_AWSIZE),          // output wire [2 : 0] m_axi_buf_r_AWSIZE
  .m_axi_buf_r_AWBURST(m_axi_buf_r_AWBURST),        // output wire [1 : 0] m_axi_buf_r_AWBURST
  .m_axi_buf_r_AWLOCK(m_axi_buf_r_AWLOCK),          // output wire [1 : 0] m_axi_buf_r_AWLOCK
  .m_axi_buf_r_AWREGION(m_axi_buf_r_AWREGION),      // output wire [3 : 0] m_axi_buf_r_AWREGION
  .m_axi_buf_r_AWCACHE(m_axi_buf_r_AWCACHE),        // output wire [3 : 0] m_axi_buf_r_AWCACHE
  .m_axi_buf_r_AWPROT(m_axi_buf_r_AWPROT),          // output wire [2 : 0] m_axi_buf_r_AWPROT
  .m_axi_buf_r_AWQOS(m_axi_buf_r_AWQOS),            // output wire [3 : 0] m_axi_buf_r_AWQOS
  .m_axi_buf_r_AWVALID(m_axi_buf_r_AWVALID),        // output wire m_axi_buf_r_AWVALID
  .m_axi_buf_r_AWREADY(m_axi_buf_r_AWREADY),        // input wire m_axi_buf_r_AWREADY
  .m_axi_buf_r_WDATA(m_axi_buf_r_WDATA),            // output wire [31 : 0] m_axi_buf_r_WDATA
  .m_axi_buf_r_WSTRB(m_axi_buf_r_WSTRB),            // output wire [3 : 0] m_axi_buf_r_WSTRB
  .m_axi_buf_r_WLAST(m_axi_buf_r_WLAST),            // output wire m_axi_buf_r_WLAST
  .m_axi_buf_r_WVALID(m_axi_buf_r_WVALID),          // output wire m_axi_buf_r_WVALID
  .m_axi_buf_r_WREADY(m_axi_buf_r_WREADY),          // input wire m_axi_buf_r_WREADY
  .m_axi_buf_r_BRESP(m_axi_buf_r_BRESP),            // input wire [1 : 0] m_axi_buf_r_BRESP
  .m_axi_buf_r_BVALID(m_axi_buf_r_BVALID),          // input wire m_axi_buf_r_BVALID
  .m_axi_buf_r_BREADY(m_axi_buf_r_BREADY),          // output wire m_axi_buf_r_BREADY
  .m_axi_buf_r_ARADDR(m_axi_buf_r_ARADDR),          // output wire [31 : 0] m_axi_buf_r_ARADDR
  .m_axi_buf_r_ARLEN(m_axi_buf_r_ARLEN),            // output wire [7 : 0] m_axi_buf_r_ARLEN
  .m_axi_buf_r_ARSIZE(m_axi_buf_r_ARSIZE),          // output wire [2 : 0] m_axi_buf_r_ARSIZE
  .m_axi_buf_r_ARBURST(m_axi_buf_r_ARBURST),        // output wire [1 : 0] m_axi_buf_r_ARBURST
  .m_axi_buf_r_ARLOCK(m_axi_buf_r_ARLOCK),          // output wire [1 : 0] m_axi_buf_r_ARLOCK
  .m_axi_buf_r_ARREGION(m_axi_buf_r_ARREGION),      // output wire [3 : 0] m_axi_buf_r_ARREGION
  .m_axi_buf_r_ARCACHE(m_axi_buf_r_ARCACHE),        // output wire [3 : 0] m_axi_buf_r_ARCACHE
  .m_axi_buf_r_ARPROT(m_axi_buf_r_ARPROT),          // output wire [2 : 0] m_axi_buf_r_ARPROT
  .m_axi_buf_r_ARQOS(m_axi_buf_r_ARQOS),            // output wire [3 : 0] m_axi_buf_r_ARQOS
  .m_axi_buf_r_ARVALID(m_axi_buf_r_ARVALID),        // output wire m_axi_buf_r_ARVALID
  .m_axi_buf_r_ARREADY(m_axi_buf_r_ARREADY),        // input wire m_axi_buf_r_ARREADY
  .m_axi_buf_r_RDATA(m_axi_buf_r_RDATA),            // input wire [31 : 0] m_axi_buf_r_RDATA
  .m_axi_buf_r_RRESP(m_axi_buf_r_RRESP),            // input wire [1 : 0] m_axi_buf_r_RRESP
  .m_axi_buf_r_RLAST(m_axi_buf_r_RLAST),            // input wire m_axi_buf_r_RLAST
  .m_axi_buf_r_RVALID(m_axi_buf_r_RVALID),          // input wire m_axi_buf_r_RVALID
  .m_axi_buf_r_RREADY(m_axi_buf_r_RREADY)          // output wire m_axi_buf_r_RREADY
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

