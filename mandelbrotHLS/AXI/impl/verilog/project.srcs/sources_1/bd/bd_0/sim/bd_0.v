//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun  4 11:34:56 2019
//Host        : AndrewSi64 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_buf_r:s_axi_in_parms, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 125000000.0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_buf_r, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 125000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]m_axi_buf_r_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [1:0]m_axi_buf_r_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [3:0]m_axi_buf_r_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [7:0]m_axi_buf_r_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [1:0]m_axi_buf_r_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [2:0]m_axi_buf_r_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [3:0]m_axi_buf_r_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input m_axi_buf_r_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [3:0]m_axi_buf_r_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [2:0]m_axi_buf_r_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output m_axi_buf_r_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [31:0]m_axi_buf_r_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [1:0]m_axi_buf_r_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [3:0]m_axi_buf_r_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [7:0]m_axi_buf_r_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [1:0]m_axi_buf_r_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [2:0]m_axi_buf_r_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [3:0]m_axi_buf_r_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input m_axi_buf_r_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [3:0]m_axi_buf_r_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [2:0]m_axi_buf_r_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output m_axi_buf_r_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output m_axi_buf_r_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input [1:0]m_axi_buf_r_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input m_axi_buf_r_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input [31:0]m_axi_buf_r_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input m_axi_buf_r_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output m_axi_buf_r_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input [1:0]m_axi_buf_r_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input m_axi_buf_r_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [31:0]m_axi_buf_r_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output m_axi_buf_r_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) input m_axi_buf_r_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output [3:0]m_axi_buf_r_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_buf_r " *) output m_axi_buf_r_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_in_parms, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 125000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [6:0]s_axi_in_parms_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output s_axi_in_parms_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input s_axi_in_parms_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input [6:0]s_axi_in_parms_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output s_axi_in_parms_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input s_axi_in_parms_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input s_axi_in_parms_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output [1:0]s_axi_in_parms_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output s_axi_in_parms_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output [31:0]s_axi_in_parms_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input s_axi_in_parms_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output [1:0]s_axi_in_parms_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output s_axi_in_parms_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input [31:0]s_axi_in_parms_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) output s_axi_in_parms_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input [3:0]s_axi_in_parms_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_in_parms " *) input s_axi_in_parms_wvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire hls_inst_interrupt;
  wire [31:0]hls_inst_m_axi_buf_r_ARADDR;
  wire [1:0]hls_inst_m_axi_buf_r_ARBURST;
  wire [3:0]hls_inst_m_axi_buf_r_ARCACHE;
  wire [7:0]hls_inst_m_axi_buf_r_ARLEN;
  wire [1:0]hls_inst_m_axi_buf_r_ARLOCK;
  wire [2:0]hls_inst_m_axi_buf_r_ARPROT;
  wire [3:0]hls_inst_m_axi_buf_r_ARQOS;
  wire hls_inst_m_axi_buf_r_ARREADY;
  wire [3:0]hls_inst_m_axi_buf_r_ARREGION;
  wire [2:0]hls_inst_m_axi_buf_r_ARSIZE;
  wire hls_inst_m_axi_buf_r_ARVALID;
  wire [31:0]hls_inst_m_axi_buf_r_AWADDR;
  wire [1:0]hls_inst_m_axi_buf_r_AWBURST;
  wire [3:0]hls_inst_m_axi_buf_r_AWCACHE;
  wire [7:0]hls_inst_m_axi_buf_r_AWLEN;
  wire [1:0]hls_inst_m_axi_buf_r_AWLOCK;
  wire [2:0]hls_inst_m_axi_buf_r_AWPROT;
  wire [3:0]hls_inst_m_axi_buf_r_AWQOS;
  wire hls_inst_m_axi_buf_r_AWREADY;
  wire [3:0]hls_inst_m_axi_buf_r_AWREGION;
  wire [2:0]hls_inst_m_axi_buf_r_AWSIZE;
  wire hls_inst_m_axi_buf_r_AWVALID;
  wire hls_inst_m_axi_buf_r_BREADY;
  wire [1:0]hls_inst_m_axi_buf_r_BRESP;
  wire hls_inst_m_axi_buf_r_BVALID;
  wire [31:0]hls_inst_m_axi_buf_r_RDATA;
  wire hls_inst_m_axi_buf_r_RLAST;
  wire hls_inst_m_axi_buf_r_RREADY;
  wire [1:0]hls_inst_m_axi_buf_r_RRESP;
  wire hls_inst_m_axi_buf_r_RVALID;
  wire [31:0]hls_inst_m_axi_buf_r_WDATA;
  wire hls_inst_m_axi_buf_r_WLAST;
  wire hls_inst_m_axi_buf_r_WREADY;
  wire [3:0]hls_inst_m_axi_buf_r_WSTRB;
  wire hls_inst_m_axi_buf_r_WVALID;
  wire [6:0]s_axi_in_parms_0_1_ARADDR;
  wire s_axi_in_parms_0_1_ARREADY;
  wire s_axi_in_parms_0_1_ARVALID;
  wire [6:0]s_axi_in_parms_0_1_AWADDR;
  wire s_axi_in_parms_0_1_AWREADY;
  wire s_axi_in_parms_0_1_AWVALID;
  wire s_axi_in_parms_0_1_BREADY;
  wire [1:0]s_axi_in_parms_0_1_BRESP;
  wire s_axi_in_parms_0_1_BVALID;
  wire [31:0]s_axi_in_parms_0_1_RDATA;
  wire s_axi_in_parms_0_1_RREADY;
  wire [1:0]s_axi_in_parms_0_1_RRESP;
  wire s_axi_in_parms_0_1_RVALID;
  wire [31:0]s_axi_in_parms_0_1_WDATA;
  wire s_axi_in_parms_0_1_WREADY;
  wire [3:0]s_axi_in_parms_0_1_WSTRB;
  wire s_axi_in_parms_0_1_WVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_m_axi_buf_r_ARREADY = m_axi_buf_r_arready;
  assign hls_inst_m_axi_buf_r_AWREADY = m_axi_buf_r_awready;
  assign hls_inst_m_axi_buf_r_BRESP = m_axi_buf_r_bresp[1:0];
  assign hls_inst_m_axi_buf_r_BVALID = m_axi_buf_r_bvalid;
  assign hls_inst_m_axi_buf_r_RDATA = m_axi_buf_r_rdata[31:0];
  assign hls_inst_m_axi_buf_r_RLAST = m_axi_buf_r_rlast;
  assign hls_inst_m_axi_buf_r_RRESP = m_axi_buf_r_rresp[1:0];
  assign hls_inst_m_axi_buf_r_RVALID = m_axi_buf_r_rvalid;
  assign hls_inst_m_axi_buf_r_WREADY = m_axi_buf_r_wready;
  assign interrupt = hls_inst_interrupt;
  assign m_axi_buf_r_araddr[31:0] = hls_inst_m_axi_buf_r_ARADDR;
  assign m_axi_buf_r_arburst[1:0] = hls_inst_m_axi_buf_r_ARBURST;
  assign m_axi_buf_r_arcache[3:0] = hls_inst_m_axi_buf_r_ARCACHE;
  assign m_axi_buf_r_arlen[7:0] = hls_inst_m_axi_buf_r_ARLEN;
  assign m_axi_buf_r_arlock[1:0] = hls_inst_m_axi_buf_r_ARLOCK;
  assign m_axi_buf_r_arprot[2:0] = hls_inst_m_axi_buf_r_ARPROT;
  assign m_axi_buf_r_arqos[3:0] = hls_inst_m_axi_buf_r_ARQOS;
  assign m_axi_buf_r_arregion[3:0] = hls_inst_m_axi_buf_r_ARREGION;
  assign m_axi_buf_r_arsize[2:0] = hls_inst_m_axi_buf_r_ARSIZE;
  assign m_axi_buf_r_arvalid = hls_inst_m_axi_buf_r_ARVALID;
  assign m_axi_buf_r_awaddr[31:0] = hls_inst_m_axi_buf_r_AWADDR;
  assign m_axi_buf_r_awburst[1:0] = hls_inst_m_axi_buf_r_AWBURST;
  assign m_axi_buf_r_awcache[3:0] = hls_inst_m_axi_buf_r_AWCACHE;
  assign m_axi_buf_r_awlen[7:0] = hls_inst_m_axi_buf_r_AWLEN;
  assign m_axi_buf_r_awlock[1:0] = hls_inst_m_axi_buf_r_AWLOCK;
  assign m_axi_buf_r_awprot[2:0] = hls_inst_m_axi_buf_r_AWPROT;
  assign m_axi_buf_r_awqos[3:0] = hls_inst_m_axi_buf_r_AWQOS;
  assign m_axi_buf_r_awregion[3:0] = hls_inst_m_axi_buf_r_AWREGION;
  assign m_axi_buf_r_awsize[2:0] = hls_inst_m_axi_buf_r_AWSIZE;
  assign m_axi_buf_r_awvalid = hls_inst_m_axi_buf_r_AWVALID;
  assign m_axi_buf_r_bready = hls_inst_m_axi_buf_r_BREADY;
  assign m_axi_buf_r_rready = hls_inst_m_axi_buf_r_RREADY;
  assign m_axi_buf_r_wdata[31:0] = hls_inst_m_axi_buf_r_WDATA;
  assign m_axi_buf_r_wlast = hls_inst_m_axi_buf_r_WLAST;
  assign m_axi_buf_r_wstrb[3:0] = hls_inst_m_axi_buf_r_WSTRB;
  assign m_axi_buf_r_wvalid = hls_inst_m_axi_buf_r_WVALID;
  assign s_axi_in_parms_0_1_ARADDR = s_axi_in_parms_araddr[6:0];
  assign s_axi_in_parms_0_1_ARVALID = s_axi_in_parms_arvalid;
  assign s_axi_in_parms_0_1_AWADDR = s_axi_in_parms_awaddr[6:0];
  assign s_axi_in_parms_0_1_AWVALID = s_axi_in_parms_awvalid;
  assign s_axi_in_parms_0_1_BREADY = s_axi_in_parms_bready;
  assign s_axi_in_parms_0_1_RREADY = s_axi_in_parms_rready;
  assign s_axi_in_parms_0_1_WDATA = s_axi_in_parms_wdata[31:0];
  assign s_axi_in_parms_0_1_WSTRB = s_axi_in_parms_wstrb[3:0];
  assign s_axi_in_parms_0_1_WVALID = s_axi_in_parms_wvalid;
  assign s_axi_in_parms_arready = s_axi_in_parms_0_1_ARREADY;
  assign s_axi_in_parms_awready = s_axi_in_parms_0_1_AWREADY;
  assign s_axi_in_parms_bresp[1:0] = s_axi_in_parms_0_1_BRESP;
  assign s_axi_in_parms_bvalid = s_axi_in_parms_0_1_BVALID;
  assign s_axi_in_parms_rdata[31:0] = s_axi_in_parms_0_1_RDATA;
  assign s_axi_in_parms_rresp[1:0] = s_axi_in_parms_0_1_RRESP;
  assign s_axi_in_parms_rvalid = s_axi_in_parms_0_1_RVALID;
  assign s_axi_in_parms_wready = s_axi_in_parms_0_1_WREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .interrupt(hls_inst_interrupt),
        .m_axi_buf_r_ARADDR(hls_inst_m_axi_buf_r_ARADDR),
        .m_axi_buf_r_ARBURST(hls_inst_m_axi_buf_r_ARBURST),
        .m_axi_buf_r_ARCACHE(hls_inst_m_axi_buf_r_ARCACHE),
        .m_axi_buf_r_ARLEN(hls_inst_m_axi_buf_r_ARLEN),
        .m_axi_buf_r_ARLOCK(hls_inst_m_axi_buf_r_ARLOCK),
        .m_axi_buf_r_ARPROT(hls_inst_m_axi_buf_r_ARPROT),
        .m_axi_buf_r_ARQOS(hls_inst_m_axi_buf_r_ARQOS),
        .m_axi_buf_r_ARREADY(hls_inst_m_axi_buf_r_ARREADY),
        .m_axi_buf_r_ARREGION(hls_inst_m_axi_buf_r_ARREGION),
        .m_axi_buf_r_ARSIZE(hls_inst_m_axi_buf_r_ARSIZE),
        .m_axi_buf_r_ARVALID(hls_inst_m_axi_buf_r_ARVALID),
        .m_axi_buf_r_AWADDR(hls_inst_m_axi_buf_r_AWADDR),
        .m_axi_buf_r_AWBURST(hls_inst_m_axi_buf_r_AWBURST),
        .m_axi_buf_r_AWCACHE(hls_inst_m_axi_buf_r_AWCACHE),
        .m_axi_buf_r_AWLEN(hls_inst_m_axi_buf_r_AWLEN),
        .m_axi_buf_r_AWLOCK(hls_inst_m_axi_buf_r_AWLOCK),
        .m_axi_buf_r_AWPROT(hls_inst_m_axi_buf_r_AWPROT),
        .m_axi_buf_r_AWQOS(hls_inst_m_axi_buf_r_AWQOS),
        .m_axi_buf_r_AWREADY(hls_inst_m_axi_buf_r_AWREADY),
        .m_axi_buf_r_AWREGION(hls_inst_m_axi_buf_r_AWREGION),
        .m_axi_buf_r_AWSIZE(hls_inst_m_axi_buf_r_AWSIZE),
        .m_axi_buf_r_AWVALID(hls_inst_m_axi_buf_r_AWVALID),
        .m_axi_buf_r_BREADY(hls_inst_m_axi_buf_r_BREADY),
        .m_axi_buf_r_BRESP(hls_inst_m_axi_buf_r_BRESP),
        .m_axi_buf_r_BVALID(hls_inst_m_axi_buf_r_BVALID),
        .m_axi_buf_r_RDATA(hls_inst_m_axi_buf_r_RDATA),
        .m_axi_buf_r_RLAST(hls_inst_m_axi_buf_r_RLAST),
        .m_axi_buf_r_RREADY(hls_inst_m_axi_buf_r_RREADY),
        .m_axi_buf_r_RRESP(hls_inst_m_axi_buf_r_RRESP),
        .m_axi_buf_r_RVALID(hls_inst_m_axi_buf_r_RVALID),
        .m_axi_buf_r_WDATA(hls_inst_m_axi_buf_r_WDATA),
        .m_axi_buf_r_WLAST(hls_inst_m_axi_buf_r_WLAST),
        .m_axi_buf_r_WREADY(hls_inst_m_axi_buf_r_WREADY),
        .m_axi_buf_r_WSTRB(hls_inst_m_axi_buf_r_WSTRB),
        .m_axi_buf_r_WVALID(hls_inst_m_axi_buf_r_WVALID),
        .s_axi_in_parms_ARADDR(s_axi_in_parms_0_1_ARADDR),
        .s_axi_in_parms_ARREADY(s_axi_in_parms_0_1_ARREADY),
        .s_axi_in_parms_ARVALID(s_axi_in_parms_0_1_ARVALID),
        .s_axi_in_parms_AWADDR(s_axi_in_parms_0_1_AWADDR),
        .s_axi_in_parms_AWREADY(s_axi_in_parms_0_1_AWREADY),
        .s_axi_in_parms_AWVALID(s_axi_in_parms_0_1_AWVALID),
        .s_axi_in_parms_BREADY(s_axi_in_parms_0_1_BREADY),
        .s_axi_in_parms_BRESP(s_axi_in_parms_0_1_BRESP),
        .s_axi_in_parms_BVALID(s_axi_in_parms_0_1_BVALID),
        .s_axi_in_parms_RDATA(s_axi_in_parms_0_1_RDATA),
        .s_axi_in_parms_RREADY(s_axi_in_parms_0_1_RREADY),
        .s_axi_in_parms_RRESP(s_axi_in_parms_0_1_RRESP),
        .s_axi_in_parms_RVALID(s_axi_in_parms_0_1_RVALID),
        .s_axi_in_parms_WDATA(s_axi_in_parms_0_1_WDATA),
        .s_axi_in_parms_WREADY(s_axi_in_parms_0_1_WREADY),
        .s_axi_in_parms_WSTRB(s_axi_in_parms_0_1_WSTRB),
        .s_axi_in_parms_WVALID(s_axi_in_parms_0_1_WVALID));
endmodule
