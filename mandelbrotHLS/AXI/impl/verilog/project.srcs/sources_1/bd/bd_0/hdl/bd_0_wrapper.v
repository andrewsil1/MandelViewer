//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun  4 11:34:56 2019
//Host        : AndrewSi64 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_buf_r_araddr,
    m_axi_buf_r_arburst,
    m_axi_buf_r_arcache,
    m_axi_buf_r_arlen,
    m_axi_buf_r_arlock,
    m_axi_buf_r_arprot,
    m_axi_buf_r_arqos,
    m_axi_buf_r_arready,
    m_axi_buf_r_arregion,
    m_axi_buf_r_arsize,
    m_axi_buf_r_arvalid,
    m_axi_buf_r_awaddr,
    m_axi_buf_r_awburst,
    m_axi_buf_r_awcache,
    m_axi_buf_r_awlen,
    m_axi_buf_r_awlock,
    m_axi_buf_r_awprot,
    m_axi_buf_r_awqos,
    m_axi_buf_r_awready,
    m_axi_buf_r_awregion,
    m_axi_buf_r_awsize,
    m_axi_buf_r_awvalid,
    m_axi_buf_r_bready,
    m_axi_buf_r_bresp,
    m_axi_buf_r_bvalid,
    m_axi_buf_r_rdata,
    m_axi_buf_r_rlast,
    m_axi_buf_r_rready,
    m_axi_buf_r_rresp,
    m_axi_buf_r_rvalid,
    m_axi_buf_r_wdata,
    m_axi_buf_r_wlast,
    m_axi_buf_r_wready,
    m_axi_buf_r_wstrb,
    m_axi_buf_r_wvalid,
    s_axi_in_parms_araddr,
    s_axi_in_parms_arready,
    s_axi_in_parms_arvalid,
    s_axi_in_parms_awaddr,
    s_axi_in_parms_awready,
    s_axi_in_parms_awvalid,
    s_axi_in_parms_bready,
    s_axi_in_parms_bresp,
    s_axi_in_parms_bvalid,
    s_axi_in_parms_rdata,
    s_axi_in_parms_rready,
    s_axi_in_parms_rresp,
    s_axi_in_parms_rvalid,
    s_axi_in_parms_wdata,
    s_axi_in_parms_wready,
    s_axi_in_parms_wstrb,
    s_axi_in_parms_wvalid);
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_buf_r_araddr;
  output [1:0]m_axi_buf_r_arburst;
  output [3:0]m_axi_buf_r_arcache;
  output [7:0]m_axi_buf_r_arlen;
  output [1:0]m_axi_buf_r_arlock;
  output [2:0]m_axi_buf_r_arprot;
  output [3:0]m_axi_buf_r_arqos;
  input m_axi_buf_r_arready;
  output [3:0]m_axi_buf_r_arregion;
  output [2:0]m_axi_buf_r_arsize;
  output m_axi_buf_r_arvalid;
  output [31:0]m_axi_buf_r_awaddr;
  output [1:0]m_axi_buf_r_awburst;
  output [3:0]m_axi_buf_r_awcache;
  output [7:0]m_axi_buf_r_awlen;
  output [1:0]m_axi_buf_r_awlock;
  output [2:0]m_axi_buf_r_awprot;
  output [3:0]m_axi_buf_r_awqos;
  input m_axi_buf_r_awready;
  output [3:0]m_axi_buf_r_awregion;
  output [2:0]m_axi_buf_r_awsize;
  output m_axi_buf_r_awvalid;
  output m_axi_buf_r_bready;
  input [1:0]m_axi_buf_r_bresp;
  input m_axi_buf_r_bvalid;
  input [31:0]m_axi_buf_r_rdata;
  input m_axi_buf_r_rlast;
  output m_axi_buf_r_rready;
  input [1:0]m_axi_buf_r_rresp;
  input m_axi_buf_r_rvalid;
  output [31:0]m_axi_buf_r_wdata;
  output m_axi_buf_r_wlast;
  input m_axi_buf_r_wready;
  output [3:0]m_axi_buf_r_wstrb;
  output m_axi_buf_r_wvalid;
  input [6:0]s_axi_in_parms_araddr;
  output s_axi_in_parms_arready;
  input s_axi_in_parms_arvalid;
  input [6:0]s_axi_in_parms_awaddr;
  output s_axi_in_parms_awready;
  input s_axi_in_parms_awvalid;
  input s_axi_in_parms_bready;
  output [1:0]s_axi_in_parms_bresp;
  output s_axi_in_parms_bvalid;
  output [31:0]s_axi_in_parms_rdata;
  input s_axi_in_parms_rready;
  output [1:0]s_axi_in_parms_rresp;
  output s_axi_in_parms_rvalid;
  input [31:0]s_axi_in_parms_wdata;
  output s_axi_in_parms_wready;
  input [3:0]s_axi_in_parms_wstrb;
  input s_axi_in_parms_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [31:0]m_axi_buf_r_araddr;
  wire [1:0]m_axi_buf_r_arburst;
  wire [3:0]m_axi_buf_r_arcache;
  wire [7:0]m_axi_buf_r_arlen;
  wire [1:0]m_axi_buf_r_arlock;
  wire [2:0]m_axi_buf_r_arprot;
  wire [3:0]m_axi_buf_r_arqos;
  wire m_axi_buf_r_arready;
  wire [3:0]m_axi_buf_r_arregion;
  wire [2:0]m_axi_buf_r_arsize;
  wire m_axi_buf_r_arvalid;
  wire [31:0]m_axi_buf_r_awaddr;
  wire [1:0]m_axi_buf_r_awburst;
  wire [3:0]m_axi_buf_r_awcache;
  wire [7:0]m_axi_buf_r_awlen;
  wire [1:0]m_axi_buf_r_awlock;
  wire [2:0]m_axi_buf_r_awprot;
  wire [3:0]m_axi_buf_r_awqos;
  wire m_axi_buf_r_awready;
  wire [3:0]m_axi_buf_r_awregion;
  wire [2:0]m_axi_buf_r_awsize;
  wire m_axi_buf_r_awvalid;
  wire m_axi_buf_r_bready;
  wire [1:0]m_axi_buf_r_bresp;
  wire m_axi_buf_r_bvalid;
  wire [31:0]m_axi_buf_r_rdata;
  wire m_axi_buf_r_rlast;
  wire m_axi_buf_r_rready;
  wire [1:0]m_axi_buf_r_rresp;
  wire m_axi_buf_r_rvalid;
  wire [31:0]m_axi_buf_r_wdata;
  wire m_axi_buf_r_wlast;
  wire m_axi_buf_r_wready;
  wire [3:0]m_axi_buf_r_wstrb;
  wire m_axi_buf_r_wvalid;
  wire [6:0]s_axi_in_parms_araddr;
  wire s_axi_in_parms_arready;
  wire s_axi_in_parms_arvalid;
  wire [6:0]s_axi_in_parms_awaddr;
  wire s_axi_in_parms_awready;
  wire s_axi_in_parms_awvalid;
  wire s_axi_in_parms_bready;
  wire [1:0]s_axi_in_parms_bresp;
  wire s_axi_in_parms_bvalid;
  wire [31:0]s_axi_in_parms_rdata;
  wire s_axi_in_parms_rready;
  wire [1:0]s_axi_in_parms_rresp;
  wire s_axi_in_parms_rvalid;
  wire [31:0]s_axi_in_parms_wdata;
  wire s_axi_in_parms_wready;
  wire [3:0]s_axi_in_parms_wstrb;
  wire s_axi_in_parms_wvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .m_axi_buf_r_araddr(m_axi_buf_r_araddr),
        .m_axi_buf_r_arburst(m_axi_buf_r_arburst),
        .m_axi_buf_r_arcache(m_axi_buf_r_arcache),
        .m_axi_buf_r_arlen(m_axi_buf_r_arlen),
        .m_axi_buf_r_arlock(m_axi_buf_r_arlock),
        .m_axi_buf_r_arprot(m_axi_buf_r_arprot),
        .m_axi_buf_r_arqos(m_axi_buf_r_arqos),
        .m_axi_buf_r_arready(m_axi_buf_r_arready),
        .m_axi_buf_r_arregion(m_axi_buf_r_arregion),
        .m_axi_buf_r_arsize(m_axi_buf_r_arsize),
        .m_axi_buf_r_arvalid(m_axi_buf_r_arvalid),
        .m_axi_buf_r_awaddr(m_axi_buf_r_awaddr),
        .m_axi_buf_r_awburst(m_axi_buf_r_awburst),
        .m_axi_buf_r_awcache(m_axi_buf_r_awcache),
        .m_axi_buf_r_awlen(m_axi_buf_r_awlen),
        .m_axi_buf_r_awlock(m_axi_buf_r_awlock),
        .m_axi_buf_r_awprot(m_axi_buf_r_awprot),
        .m_axi_buf_r_awqos(m_axi_buf_r_awqos),
        .m_axi_buf_r_awready(m_axi_buf_r_awready),
        .m_axi_buf_r_awregion(m_axi_buf_r_awregion),
        .m_axi_buf_r_awsize(m_axi_buf_r_awsize),
        .m_axi_buf_r_awvalid(m_axi_buf_r_awvalid),
        .m_axi_buf_r_bready(m_axi_buf_r_bready),
        .m_axi_buf_r_bresp(m_axi_buf_r_bresp),
        .m_axi_buf_r_bvalid(m_axi_buf_r_bvalid),
        .m_axi_buf_r_rdata(m_axi_buf_r_rdata),
        .m_axi_buf_r_rlast(m_axi_buf_r_rlast),
        .m_axi_buf_r_rready(m_axi_buf_r_rready),
        .m_axi_buf_r_rresp(m_axi_buf_r_rresp),
        .m_axi_buf_r_rvalid(m_axi_buf_r_rvalid),
        .m_axi_buf_r_wdata(m_axi_buf_r_wdata),
        .m_axi_buf_r_wlast(m_axi_buf_r_wlast),
        .m_axi_buf_r_wready(m_axi_buf_r_wready),
        .m_axi_buf_r_wstrb(m_axi_buf_r_wstrb),
        .m_axi_buf_r_wvalid(m_axi_buf_r_wvalid),
        .s_axi_in_parms_araddr(s_axi_in_parms_araddr),
        .s_axi_in_parms_arready(s_axi_in_parms_arready),
        .s_axi_in_parms_arvalid(s_axi_in_parms_arvalid),
        .s_axi_in_parms_awaddr(s_axi_in_parms_awaddr),
        .s_axi_in_parms_awready(s_axi_in_parms_awready),
        .s_axi_in_parms_awvalid(s_axi_in_parms_awvalid),
        .s_axi_in_parms_bready(s_axi_in_parms_bready),
        .s_axi_in_parms_bresp(s_axi_in_parms_bresp),
        .s_axi_in_parms_bvalid(s_axi_in_parms_bvalid),
        .s_axi_in_parms_rdata(s_axi_in_parms_rdata),
        .s_axi_in_parms_rready(s_axi_in_parms_rready),
        .s_axi_in_parms_rresp(s_axi_in_parms_rresp),
        .s_axi_in_parms_rvalid(s_axi_in_parms_rvalid),
        .s_axi_in_parms_wdata(s_axi_in_parms_wdata),
        .s_axi_in_parms_wready(s_axi_in_parms_wready),
        .s_axi_in_parms_wstrb(s_axi_in_parms_wstrb),
        .s_axi_in_parms_wvalid(s_axi_in_parms_wvalid));
endmodule
