//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Jul 19 22:32:29 2019
//Host        : AndrewSi64 running 64-bit major release  (build 9200)
//Command     : generate_target Fast_IP_Clock.bd
//Design      : Fast_IP_Clock
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Constants_imp_1JIJPKH
   (dout,
    dout1);
  output [31:0]dout;
  output [31:0]dout1;

  wire [31:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign dout[31:0] = xlconstant_1_dout;
  assign dout1[31:0] = xlconstant_0_dout;
  Fast_IP_Clock_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  Fast_IP_Clock_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

(* CORE_GENERATION_INFO = "Fast_IP_Clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Fast_IP_Clock,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=25,numReposBlks=22,numNonXlnxBlks=3,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=45,da_board_cnt=5,da_clkrst_cnt=10,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Fast_IP_Clock.hwdef" *) 
module Fast_IP_Clock
   (anode,
    btnCpuReset,
    cathode,
    cellular_ram_addr,
    cellular_ram_adv_ldn,
    cellular_ram_ben,
    cellular_ram_ce_n,
    cellular_ram_cre,
    cellular_ram_dq_i,
    cellular_ram_dq_o,
    cellular_ram_dq_t,
    cellular_ram_oen,
    cellular_ram_wen,
    clk,
    dp,
    usb_uart_rxd,
    usb_uart_txd);
  output [7:0]anode;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BTNCPURESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BTNCPURESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input btnCpuReset;
  output [6:0]cathode;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram ADDR" *) output [22:0]cellular_ram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram ADV_LDN" *) output cellular_ram_adv_ldn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram BEN" *) output [1:0]cellular_ram_ben;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram CE_N" *) output cellular_ram_ce_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram CRE" *) output cellular_ram_cre;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram DQ_I" *) input [15:0]cellular_ram_dq_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram DQ_O" *) output [15:0]cellular_ram_dq_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram DQ_T" *) output [15:0]cellular_ram_dq_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram OEN" *) output cellular_ram_oen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:emc:1.0 cellular_ram WEN" *) output cellular_ram_wen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Fast_IP_Clock_clk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;

  wire Resets_mb_reset;
  wire [0:0]SYS_Rst_1;
  wire [7:0]SevenSegController_0_anode;
  wire [6:0]SevenSegController_0_cathode;
  wire SevenSegController_0_dp;
  wire [31:0]axi_clock_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_ARCACHE;
  wire [7:0]axi_clock_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_ARQOS;
  wire axi_clock_converter_0_M_AXI_ARREADY;
  wire [2:0]axi_clock_converter_0_M_AXI_ARSIZE;
  wire axi_clock_converter_0_M_AXI_ARVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_AWCACHE;
  wire [7:0]axi_clock_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_AWQOS;
  wire axi_clock_converter_0_M_AXI_AWREADY;
  wire [2:0]axi_clock_converter_0_M_AXI_AWSIZE;
  wire axi_clock_converter_0_M_AXI_AWVALID;
  wire axi_clock_converter_0_M_AXI_BREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_BRESP;
  wire axi_clock_converter_0_M_AXI_BVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_RDATA;
  wire axi_clock_converter_0_M_AXI_RLAST;
  wire axi_clock_converter_0_M_AXI_RREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_RRESP;
  wire axi_clock_converter_0_M_AXI_RVALID;
  wire [31:0]axi_clock_converter_0_M_AXI_WDATA;
  wire axi_clock_converter_0_M_AXI_WLAST;
  wire axi_clock_converter_0_M_AXI_WREADY;
  wire [3:0]axi_clock_converter_0_M_AXI_WSTRB;
  wire axi_clock_converter_0_M_AXI_WVALID;
  wire axi_intc_0_interrupt_INTERRUPT;
  wire axi_uart16550_0_UART_RxD;
  wire axi_uart16550_0_UART_TxD;
  wire axi_uart16550_0_ip2intc_irpt;
  wire btnCpuReset_1;
  wire [31:0]calc_0_m_axi_buf_r_ARADDR;
  wire [1:0]calc_0_m_axi_buf_r_ARBURST;
  wire [3:0]calc_0_m_axi_buf_r_ARCACHE;
  wire [7:0]calc_0_m_axi_buf_r_ARLEN;
  wire [1:0]calc_0_m_axi_buf_r_ARLOCK;
  wire [2:0]calc_0_m_axi_buf_r_ARPROT;
  wire [3:0]calc_0_m_axi_buf_r_ARQOS;
  wire calc_0_m_axi_buf_r_ARREADY;
  wire [3:0]calc_0_m_axi_buf_r_ARREGION;
  wire [2:0]calc_0_m_axi_buf_r_ARSIZE;
  wire calc_0_m_axi_buf_r_ARVALID;
  wire [31:0]calc_0_m_axi_buf_r_AWADDR;
  wire [1:0]calc_0_m_axi_buf_r_AWBURST;
  wire [3:0]calc_0_m_axi_buf_r_AWCACHE;
  wire [7:0]calc_0_m_axi_buf_r_AWLEN;
  wire [1:0]calc_0_m_axi_buf_r_AWLOCK;
  wire [2:0]calc_0_m_axi_buf_r_AWPROT;
  wire [3:0]calc_0_m_axi_buf_r_AWQOS;
  wire calc_0_m_axi_buf_r_AWREADY;
  wire [3:0]calc_0_m_axi_buf_r_AWREGION;
  wire [2:0]calc_0_m_axi_buf_r_AWSIZE;
  wire calc_0_m_axi_buf_r_AWVALID;
  wire calc_0_m_axi_buf_r_BREADY;
  wire [1:0]calc_0_m_axi_buf_r_BRESP;
  wire calc_0_m_axi_buf_r_BVALID;
  wire [31:0]calc_0_m_axi_buf_r_RDATA;
  wire calc_0_m_axi_buf_r_RLAST;
  wire calc_0_m_axi_buf_r_RREADY;
  wire [1:0]calc_0_m_axi_buf_r_RRESP;
  wire calc_0_m_axi_buf_r_RVALID;
  wire [31:0]calc_0_m_axi_buf_r_WDATA;
  wire calc_0_m_axi_buf_r_WLAST;
  wire calc_0_m_axi_buf_r_WREADY;
  wire [3:0]calc_0_m_axi_buf_r_WSTRB;
  wire calc_0_m_axi_buf_r_WVALID;
  wire [31:0]calc_0_m_axi_gmem_ARADDR;
  wire [1:0]calc_0_m_axi_gmem_ARBURST;
  wire [3:0]calc_0_m_axi_gmem_ARCACHE;
  wire [7:0]calc_0_m_axi_gmem_ARLEN;
  wire [1:0]calc_0_m_axi_gmem_ARLOCK;
  wire [2:0]calc_0_m_axi_gmem_ARPROT;
  wire [3:0]calc_0_m_axi_gmem_ARQOS;
  wire calc_0_m_axi_gmem_ARREADY;
  wire [2:0]calc_0_m_axi_gmem_ARSIZE;
  wire calc_0_m_axi_gmem_ARVALID;
  wire [31:0]calc_0_m_axi_gmem_AWADDR;
  wire [1:0]calc_0_m_axi_gmem_AWBURST;
  wire [3:0]calc_0_m_axi_gmem_AWCACHE;
  wire [7:0]calc_0_m_axi_gmem_AWLEN;
  wire [1:0]calc_0_m_axi_gmem_AWLOCK;
  wire [2:0]calc_0_m_axi_gmem_AWPROT;
  wire [3:0]calc_0_m_axi_gmem_AWQOS;
  wire calc_0_m_axi_gmem_AWREADY;
  wire [2:0]calc_0_m_axi_gmem_AWSIZE;
  wire calc_0_m_axi_gmem_AWVALID;
  wire calc_0_m_axi_gmem_BREADY;
  wire [1:0]calc_0_m_axi_gmem_BRESP;
  wire calc_0_m_axi_gmem_BVALID;
  wire [31:0]calc_0_m_axi_gmem_RDATA;
  wire calc_0_m_axi_gmem_RLAST;
  wire calc_0_m_axi_gmem_RREADY;
  wire [1:0]calc_0_m_axi_gmem_RRESP;
  wire calc_0_m_axi_gmem_RVALID;
  wire [31:0]calc_0_m_axi_gmem_WDATA;
  wire calc_0_m_axi_gmem_WLAST;
  wire calc_0_m_axi_gmem_WREADY;
  wire [3:0]calc_0_m_axi_gmem_WSTRB;
  wire calc_0_m_axi_gmem_WVALID;
  wire clk_1;
  wire clk_wiz_0_CalcClk;
  wire clk_wiz_0_locked;
  wire mdm_1_Debug_SYS_Rst;
  wire mdm_1_Interrupt;
  wire mdm_1_MBDEBUG_0_CAPTURE;
  wire mdm_1_MBDEBUG_0_CLK;
  wire mdm_1_MBDEBUG_0_DISABLE;
  wire [0:7]mdm_1_MBDEBUG_0_REG_EN;
  wire mdm_1_MBDEBUG_0_RST;
  wire mdm_1_MBDEBUG_0_SHIFT;
  wire mdm_1_MBDEBUG_0_TDI;
  wire mdm_1_MBDEBUG_0_TDO;
  wire mdm_1_MBDEBUG_0_UPDATE;
  wire microblaze_0_Clk;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None ABUS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:31]microblaze_0_DLMB_ABUS;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None ADDRSTROBE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_DLMB_ADDRSTROBE;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None BE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:3]microblaze_0_DLMB_BE;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None CE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_DLMB_CE;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None READDBUS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:31]microblaze_0_DLMB_READDBUS;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None READSTROBE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_DLMB_READSTROBE;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None READY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_DLMB_READY;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None UE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_DLMB_UE;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None WAIT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_DLMB_WAIT;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None WRITEDBUS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:31]microblaze_0_DLMB_WRITEDBUS;
  (* CONN_BUS_INFO = "microblaze_0_DLMB xilinx.com:interface:lmb:1.0 None WRITESTROBE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_DLMB_WRITESTROBE;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None ABUS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:31]microblaze_0_ILMB_ABUS;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None ADDRSTROBE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_ILMB_ADDRSTROBE;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None CE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_ILMB_CE;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None READDBUS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:31]microblaze_0_ILMB_READDBUS;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None READSTROBE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_ILMB_READSTROBE;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None READY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_ILMB_READY;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None UE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_ILMB_UE;
  (* CONN_BUS_INFO = "microblaze_0_ILMB xilinx.com:interface:lmb:1.0 None WAIT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_ILMB_WAIT;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DC_ARADDR;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]microblaze_0_M_AXI_DC_ARBURST;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]microblaze_0_M_AXI_DC_ARCACHE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]microblaze_0_M_AXI_DC_ARID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]microblaze_0_M_AXI_DC_ARLEN;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_ARLOCK;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]microblaze_0_M_AXI_DC_ARPROT;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]microblaze_0_M_AXI_DC_ARQOS;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_ARREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]microblaze_0_M_AXI_DC_ARSIZE;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_ARVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DC_AWADDR;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]microblaze_0_M_AXI_DC_AWBURST;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]microblaze_0_M_AXI_DC_AWCACHE;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]microblaze_0_M_AXI_DC_AWID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [7:0]microblaze_0_M_AXI_DC_AWLEN;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_AWLOCK;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]microblaze_0_M_AXI_DC_AWPROT;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]microblaze_0_M_AXI_DC_AWQOS;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_AWREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]microblaze_0_M_AXI_DC_AWSIZE;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_AWVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]microblaze_0_M_AXI_DC_BID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_BREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]microblaze_0_M_AXI_DC_BRESP;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_BVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DC_RDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [0:0]microblaze_0_M_AXI_DC_RID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_RLAST;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_RREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]microblaze_0_M_AXI_DC_RRESP;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_RVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DC_WDATA;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_WLAST;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_WREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]microblaze_0_M_AXI_DC_WSTRB;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DC xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DC_WVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE ARADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DP_ARADDR;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE ARPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]microblaze_0_M_AXI_DP_ARPROT;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE ARREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_ARREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE ARVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_ARVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE AWADDR" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DP_AWADDR;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE AWPROT" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]microblaze_0_M_AXI_DP_AWPROT;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE AWREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_AWREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE AWVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_AWVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE BREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_BREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE BRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]microblaze_0_M_AXI_DP_BRESP;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE BVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_BVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE RDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DP_RDATA;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE RREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_RREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE RRESP" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [1:0]microblaze_0_M_AXI_DP_RRESP;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE RVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_RVALID;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE WDATA" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]microblaze_0_M_AXI_DP_WDATA;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE WREADY" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_WREADY;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE WSTRB" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire [3:0]microblaze_0_M_AXI_DP_WSTRB;
  (* CONN_BUS_INFO = "microblaze_0_M_AXI_DP xilinx.com:interface:aximm:1.0 AXI4LITE WVALID" *) (* DEBUG = "true" *) (* MARK_DEBUG *) wire microblaze_0_M_AXI_DP_WVALID;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [22:0]psram_ip_0_PSRAM_ADDR;
  wire psram_ip_0_PSRAM_ADV_LDN;
  wire [1:0]psram_ip_0_PSRAM_BEN;
  wire psram_ip_0_PSRAM_CE_N;
  wire psram_ip_0_PSRAM_CRE;
  wire [15:0]psram_ip_0_PSRAM_DQ_I;
  wire [15:0]psram_ip_0_PSRAM_DQ_O;
  wire [15:0]psram_ip_0_PSRAM_DQ_T;
  wire psram_ip_0_PSRAM_OEN;
  wire psram_ip_0_PSRAM_WEN;
  wire [6:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [6:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [8:0]smartconnect_0_M01_AXI_ARADDR;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [8:0]smartconnect_0_M01_AXI_AWADDR;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [3:0]smartconnect_0_M02_AXI_ARADDR;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [3:0]smartconnect_0_M02_AXI_AWADDR;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [31:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [31:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [3:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [12:0]smartconnect_0_M03_AXI_ARADDR;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [12:0]smartconnect_0_M03_AXI_AWADDR;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [3:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [3:0]smartconnect_0_M04_AXI_ARADDR;
  wire [2:0]smartconnect_0_M04_AXI_ARPROT;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [3:0]smartconnect_0_M04_AXI_AWADDR;
  wire [2:0]smartconnect_0_M04_AXI_AWPROT;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [31:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [31:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [3:0]smartconnect_0_M04_AXI_WSTRB;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [31:0]system_cache_0_M0_AXI_ARADDR;
  wire [1:0]system_cache_0_M0_AXI_ARBURST;
  wire [3:0]system_cache_0_M0_AXI_ARCACHE;
  wire [0:0]system_cache_0_M0_AXI_ARID;
  wire [7:0]system_cache_0_M0_AXI_ARLEN;
  wire system_cache_0_M0_AXI_ARLOCK;
  wire [2:0]system_cache_0_M0_AXI_ARPROT;
  wire [3:0]system_cache_0_M0_AXI_ARQOS;
  wire system_cache_0_M0_AXI_ARREADY;
  wire [2:0]system_cache_0_M0_AXI_ARSIZE;
  wire system_cache_0_M0_AXI_ARVALID;
  wire [31:0]system_cache_0_M0_AXI_AWADDR;
  wire [1:0]system_cache_0_M0_AXI_AWBURST;
  wire [3:0]system_cache_0_M0_AXI_AWCACHE;
  wire [0:0]system_cache_0_M0_AXI_AWID;
  wire [7:0]system_cache_0_M0_AXI_AWLEN;
  wire system_cache_0_M0_AXI_AWLOCK;
  wire [2:0]system_cache_0_M0_AXI_AWPROT;
  wire [3:0]system_cache_0_M0_AXI_AWQOS;
  wire system_cache_0_M0_AXI_AWREADY;
  wire [2:0]system_cache_0_M0_AXI_AWSIZE;
  wire system_cache_0_M0_AXI_AWVALID;
  wire [0:0]system_cache_0_M0_AXI_BID;
  wire system_cache_0_M0_AXI_BREADY;
  wire [1:0]system_cache_0_M0_AXI_BRESP;
  wire system_cache_0_M0_AXI_BVALID;
  wire [31:0]system_cache_0_M0_AXI_RDATA;
  wire [0:0]system_cache_0_M0_AXI_RID;
  wire system_cache_0_M0_AXI_RLAST;
  wire system_cache_0_M0_AXI_RREADY;
  wire [1:0]system_cache_0_M0_AXI_RRESP;
  wire system_cache_0_M0_AXI_RVALID;
  wire [31:0]system_cache_0_M0_AXI_WDATA;
  wire system_cache_0_M0_AXI_WLAST;
  wire system_cache_0_M0_AXI_WREADY;
  wire [3:0]system_cache_0_M0_AXI_WSTRB;
  wire system_cache_0_M0_AXI_WVALID;
  wire [1:0]xlconcat_0_dout;
  wire [31:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign anode[7:0] = SevenSegController_0_anode;
  assign axi_uart16550_0_UART_RxD = usb_uart_rxd;
  assign btnCpuReset_1 = btnCpuReset;
  assign cathode[6:0] = SevenSegController_0_cathode;
  assign cellular_ram_addr[22:0] = psram_ip_0_PSRAM_ADDR;
  assign cellular_ram_adv_ldn = psram_ip_0_PSRAM_ADV_LDN;
  assign cellular_ram_ben[1:0] = psram_ip_0_PSRAM_BEN;
  assign cellular_ram_ce_n = psram_ip_0_PSRAM_CE_N;
  assign cellular_ram_cre = psram_ip_0_PSRAM_CRE;
  assign cellular_ram_dq_o[15:0] = psram_ip_0_PSRAM_DQ_O;
  assign cellular_ram_dq_t[15:0] = psram_ip_0_PSRAM_DQ_T;
  assign cellular_ram_oen = psram_ip_0_PSRAM_OEN;
  assign cellular_ram_wen = psram_ip_0_PSRAM_WEN;
  assign clk_1 = clk;
  assign dp = SevenSegController_0_dp;
  assign psram_ip_0_PSRAM_DQ_I = cellular_ram_dq_i[15:0];
  assign usb_uart_txd = axi_uart16550_0_UART_TxD;
  Constants_imp_1JIJPKH Constants
       (.dout(xlconstant_1_dout),
        .dout1(xlconstant_0_dout));
  Resets_imp_1RBB4I2 Resets
       (.btnCpuReset(btnCpuReset_1),
        .bus_struct_reset(SYS_Rst_1),
        .dcm_locked(clk_wiz_0_locked),
        .mb_debug_sys_rst(mdm_1_Debug_SYS_Rst),
        .mb_reset(Resets_mb_reset),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .peripheral_aresetn1(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_CalcClk),
        .slowest_sync_clk1(microblaze_0_Clk));
  Fast_IP_Clock_SevenSegController_0_1 SevenSegController_0
       (.anode(SevenSegController_0_anode),
        .cathode(SevenSegController_0_cathode),
        .dp(SevenSegController_0_dp),
        .s00_axi_aclk(microblaze_0_Clk),
        .s00_axi_araddr(smartconnect_0_M04_AXI_ARADDR),
        .s00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axi_arprot(smartconnect_0_M04_AXI_ARPROT),
        .s00_axi_arready(smartconnect_0_M04_AXI_ARREADY),
        .s00_axi_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .s00_axi_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .s00_axi_awprot(smartconnect_0_M04_AXI_AWPROT),
        .s00_axi_awready(smartconnect_0_M04_AXI_AWREADY),
        .s00_axi_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .s00_axi_bready(smartconnect_0_M04_AXI_BREADY),
        .s00_axi_bresp(smartconnect_0_M04_AXI_BRESP),
        .s00_axi_bvalid(smartconnect_0_M04_AXI_BVALID),
        .s00_axi_rdata(smartconnect_0_M04_AXI_RDATA),
        .s00_axi_rready(smartconnect_0_M04_AXI_RREADY),
        .s00_axi_rresp(smartconnect_0_M04_AXI_RRESP),
        .s00_axi_rvalid(smartconnect_0_M04_AXI_RVALID),
        .s00_axi_wdata(smartconnect_0_M04_AXI_WDATA),
        .s00_axi_wready(smartconnect_0_M04_AXI_WREADY),
        .s00_axi_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .s00_axi_wvalid(smartconnect_0_M04_AXI_WVALID));
  Fast_IP_Clock_axi_clock_converter_0_0 axi_clock_converter_0
       (.m_axi_aclk(microblaze_0_Clk),
        .m_axi_araddr(axi_clock_converter_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_clock_converter_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_clock_converter_0_M_AXI_ARCACHE),
        .m_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_arlen(axi_clock_converter_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_clock_converter_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_clock_converter_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_clock_converter_0_M_AXI_ARQOS),
        .m_axi_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_clock_converter_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .m_axi_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .m_axi_bready(axi_clock_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .m_axi_rlast(axi_clock_converter_0_M_AXI_RLAST),
        .m_axi_rready(axi_clock_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .m_axi_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .m_axi_wready(axi_clock_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .s_axi_aclk(clk_wiz_0_CalcClk),
        .s_axi_araddr(calc_0_m_axi_buf_r_ARADDR),
        .s_axi_arburst(calc_0_m_axi_buf_r_ARBURST),
        .s_axi_arcache(calc_0_m_axi_buf_r_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(calc_0_m_axi_buf_r_ARLEN),
        .s_axi_arlock(calc_0_m_axi_buf_r_ARLOCK[0]),
        .s_axi_arprot(calc_0_m_axi_buf_r_ARPROT),
        .s_axi_arqos(calc_0_m_axi_buf_r_ARQOS),
        .s_axi_arready(calc_0_m_axi_buf_r_ARREADY),
        .s_axi_arregion(calc_0_m_axi_buf_r_ARREGION),
        .s_axi_arsize(calc_0_m_axi_buf_r_ARSIZE),
        .s_axi_arvalid(calc_0_m_axi_buf_r_ARVALID),
        .s_axi_awaddr(calc_0_m_axi_buf_r_AWADDR),
        .s_axi_awburst(calc_0_m_axi_buf_r_AWBURST),
        .s_axi_awcache(calc_0_m_axi_buf_r_AWCACHE),
        .s_axi_awlen(calc_0_m_axi_buf_r_AWLEN),
        .s_axi_awlock(calc_0_m_axi_buf_r_AWLOCK[0]),
        .s_axi_awprot(calc_0_m_axi_buf_r_AWPROT),
        .s_axi_awqos(calc_0_m_axi_buf_r_AWQOS),
        .s_axi_awready(calc_0_m_axi_buf_r_AWREADY),
        .s_axi_awregion(calc_0_m_axi_buf_r_AWREGION),
        .s_axi_awsize(calc_0_m_axi_buf_r_AWSIZE),
        .s_axi_awvalid(calc_0_m_axi_buf_r_AWVALID),
        .s_axi_bready(calc_0_m_axi_buf_r_BREADY),
        .s_axi_bresp(calc_0_m_axi_buf_r_BRESP),
        .s_axi_bvalid(calc_0_m_axi_buf_r_BVALID),
        .s_axi_rdata(calc_0_m_axi_buf_r_RDATA),
        .s_axi_rlast(calc_0_m_axi_buf_r_RLAST),
        .s_axi_rready(calc_0_m_axi_buf_r_RREADY),
        .s_axi_rresp(calc_0_m_axi_buf_r_RRESP),
        .s_axi_rvalid(calc_0_m_axi_buf_r_RVALID),
        .s_axi_wdata(calc_0_m_axi_buf_r_WDATA),
        .s_axi_wlast(calc_0_m_axi_buf_r_WLAST),
        .s_axi_wready(calc_0_m_axi_buf_r_WREADY),
        .s_axi_wstrb(calc_0_m_axi_buf_r_WSTRB),
        .s_axi_wvalid(calc_0_m_axi_buf_r_WVALID));
  Fast_IP_Clock_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_interrupt_INTERRUPT),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  Fast_IP_Clock_axi_uart16550_0_0 axi_uart16550_0
       (.ctsn(1'b1),
        .dcdn(1'b1),
        .dsrn(1'b1),
        .freeze(1'b0),
        .ip2intc_irpt(axi_uart16550_0_ip2intc_irpt),
        .rin(1'b1),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M03_AXI_WVALID),
        .sin(axi_uart16550_0_UART_RxD),
        .sout(axi_uart16550_0_UART_TxD));
  Fast_IP_Clock_calc_0_0 calc_0
       (.LED(xlconstant_1_dout),
        .LEDControl(xlconstant_0_dout),
        .ap_clk(clk_wiz_0_CalcClk),
        .ap_rst_n(proc_sys_reset_1_peripheral_aresetn),
        .m_axi_buf_r_ARADDR(calc_0_m_axi_buf_r_ARADDR),
        .m_axi_buf_r_ARBURST(calc_0_m_axi_buf_r_ARBURST),
        .m_axi_buf_r_ARCACHE(calc_0_m_axi_buf_r_ARCACHE),
        .m_axi_buf_r_ARLEN(calc_0_m_axi_buf_r_ARLEN),
        .m_axi_buf_r_ARLOCK(calc_0_m_axi_buf_r_ARLOCK),
        .m_axi_buf_r_ARPROT(calc_0_m_axi_buf_r_ARPROT),
        .m_axi_buf_r_ARQOS(calc_0_m_axi_buf_r_ARQOS),
        .m_axi_buf_r_ARREADY(calc_0_m_axi_buf_r_ARREADY),
        .m_axi_buf_r_ARREGION(calc_0_m_axi_buf_r_ARREGION),
        .m_axi_buf_r_ARSIZE(calc_0_m_axi_buf_r_ARSIZE),
        .m_axi_buf_r_ARVALID(calc_0_m_axi_buf_r_ARVALID),
        .m_axi_buf_r_AWADDR(calc_0_m_axi_buf_r_AWADDR),
        .m_axi_buf_r_AWBURST(calc_0_m_axi_buf_r_AWBURST),
        .m_axi_buf_r_AWCACHE(calc_0_m_axi_buf_r_AWCACHE),
        .m_axi_buf_r_AWLEN(calc_0_m_axi_buf_r_AWLEN),
        .m_axi_buf_r_AWLOCK(calc_0_m_axi_buf_r_AWLOCK),
        .m_axi_buf_r_AWPROT(calc_0_m_axi_buf_r_AWPROT),
        .m_axi_buf_r_AWQOS(calc_0_m_axi_buf_r_AWQOS),
        .m_axi_buf_r_AWREADY(calc_0_m_axi_buf_r_AWREADY),
        .m_axi_buf_r_AWREGION(calc_0_m_axi_buf_r_AWREGION),
        .m_axi_buf_r_AWSIZE(calc_0_m_axi_buf_r_AWSIZE),
        .m_axi_buf_r_AWVALID(calc_0_m_axi_buf_r_AWVALID),
        .m_axi_buf_r_BREADY(calc_0_m_axi_buf_r_BREADY),
        .m_axi_buf_r_BRESP(calc_0_m_axi_buf_r_BRESP),
        .m_axi_buf_r_BVALID(calc_0_m_axi_buf_r_BVALID),
        .m_axi_buf_r_RDATA(calc_0_m_axi_buf_r_RDATA),
        .m_axi_buf_r_RLAST(calc_0_m_axi_buf_r_RLAST),
        .m_axi_buf_r_RREADY(calc_0_m_axi_buf_r_RREADY),
        .m_axi_buf_r_RRESP(calc_0_m_axi_buf_r_RRESP),
        .m_axi_buf_r_RVALID(calc_0_m_axi_buf_r_RVALID),
        .m_axi_buf_r_WDATA(calc_0_m_axi_buf_r_WDATA),
        .m_axi_buf_r_WLAST(calc_0_m_axi_buf_r_WLAST),
        .m_axi_buf_r_WREADY(calc_0_m_axi_buf_r_WREADY),
        .m_axi_buf_r_WSTRB(calc_0_m_axi_buf_r_WSTRB),
        .m_axi_buf_r_WVALID(calc_0_m_axi_buf_r_WVALID),
        .m_axi_gmem_ARADDR(calc_0_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(calc_0_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(calc_0_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(calc_0_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(calc_0_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(calc_0_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(calc_0_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(calc_0_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARSIZE(calc_0_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(calc_0_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(calc_0_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(calc_0_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(calc_0_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(calc_0_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(calc_0_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(calc_0_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(calc_0_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(calc_0_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWSIZE(calc_0_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(calc_0_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(calc_0_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(calc_0_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(calc_0_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(calc_0_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(calc_0_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(calc_0_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(calc_0_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(calc_0_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(calc_0_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(calc_0_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(calc_0_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(calc_0_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(calc_0_m_axi_gmem_WVALID),
        .s_axi_in_parms_ARADDR(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_in_parms_ARREADY(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_in_parms_ARVALID(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_in_parms_AWADDR(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_in_parms_AWREADY(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_in_parms_AWVALID(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_in_parms_BREADY(smartconnect_0_M00_AXI_BREADY),
        .s_axi_in_parms_BRESP(smartconnect_0_M00_AXI_BRESP),
        .s_axi_in_parms_BVALID(smartconnect_0_M00_AXI_BVALID),
        .s_axi_in_parms_RDATA(smartconnect_0_M00_AXI_RDATA),
        .s_axi_in_parms_RREADY(smartconnect_0_M00_AXI_RREADY),
        .s_axi_in_parms_RRESP(smartconnect_0_M00_AXI_RRESP),
        .s_axi_in_parms_RVALID(smartconnect_0_M00_AXI_RVALID),
        .s_axi_in_parms_WDATA(smartconnect_0_M00_AXI_WDATA),
        .s_axi_in_parms_WREADY(smartconnect_0_M00_AXI_WREADY),
        .s_axi_in_parms_WSTRB(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_in_parms_WVALID(smartconnect_0_M00_AXI_WVALID));
  Fast_IP_Clock_clk_wiz_0_0 clk_wiz_0
       (.AXIclk(microblaze_0_Clk),
        .CalcClk(clk_wiz_0_CalcClk),
        .clk_in1(clk_1),
        .locked(clk_wiz_0_locked));
  Fast_IP_Clock_mdm_1_0 mdm_1
       (.Dbg_Capture_0(mdm_1_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(mdm_1_MBDEBUG_0_CLK),
        .Dbg_Disable_0(mdm_1_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(mdm_1_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(mdm_1_MBDEBUG_0_RST),
        .Dbg_Shift_0(mdm_1_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(mdm_1_MBDEBUG_0_TDI),
        .Dbg_TDO_0(mdm_1_MBDEBUG_0_TDO),
        .Dbg_Update_0(mdm_1_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(mdm_1_Debug_SYS_Rst),
        .Interrupt(mdm_1_Interrupt),
        .S_AXI_ACLK(microblaze_0_Clk),
        .S_AXI_ARADDR(smartconnect_0_M02_AXI_ARADDR),
        .S_AXI_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S_AXI_ARREADY(smartconnect_0_M02_AXI_ARREADY),
        .S_AXI_ARVALID(smartconnect_0_M02_AXI_ARVALID),
        .S_AXI_AWADDR(smartconnect_0_M02_AXI_AWADDR),
        .S_AXI_AWREADY(smartconnect_0_M02_AXI_AWREADY),
        .S_AXI_AWVALID(smartconnect_0_M02_AXI_AWVALID),
        .S_AXI_BREADY(smartconnect_0_M02_AXI_BREADY),
        .S_AXI_BRESP(smartconnect_0_M02_AXI_BRESP),
        .S_AXI_BVALID(smartconnect_0_M02_AXI_BVALID),
        .S_AXI_RDATA(smartconnect_0_M02_AXI_RDATA),
        .S_AXI_RREADY(smartconnect_0_M02_AXI_RREADY),
        .S_AXI_RRESP(smartconnect_0_M02_AXI_RRESP),
        .S_AXI_RVALID(smartconnect_0_M02_AXI_RVALID),
        .S_AXI_WDATA(smartconnect_0_M02_AXI_WDATA),
        .S_AXI_WREADY(smartconnect_0_M02_AXI_WREADY),
        .S_AXI_WSTRB(smartconnect_0_M02_AXI_WSTRB),
        .S_AXI_WVALID(smartconnect_0_M02_AXI_WVALID));
  (* BMM_INFO_PROCESSOR = "microblaze-le > Fast_IP_Clock microblaze_0_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  Fast_IP_Clock_microblaze_0_1 microblaze_0
       (.Byte_Enable(microblaze_0_DLMB_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_0_DLMB_CE),
        .DReady(microblaze_0_DLMB_READY),
        .DUE(microblaze_0_DLMB_UE),
        .DWait(microblaze_0_DLMB_WAIT),
        .D_AS(microblaze_0_DLMB_ADDRSTROBE),
        .Data_Addr(microblaze_0_DLMB_ABUS),
        .Data_Read(microblaze_0_DLMB_READDBUS),
        .Data_Write(microblaze_0_DLMB_WRITEDBUS),
        .Dbg_Capture(mdm_1_MBDEBUG_0_CAPTURE),
        .Dbg_Clk(mdm_1_MBDEBUG_0_CLK),
        .Dbg_Disable(mdm_1_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En(mdm_1_MBDEBUG_0_REG_EN),
        .Dbg_Shift(mdm_1_MBDEBUG_0_SHIFT),
        .Dbg_TDI(mdm_1_MBDEBUG_0_TDI),
        .Dbg_TDO(mdm_1_MBDEBUG_0_TDO),
        .Dbg_Trig_Ack_In({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Trig_Out({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dbg_Update(mdm_1_MBDEBUG_0_UPDATE),
        .Debug_Rst(mdm_1_MBDEBUG_0_RST),
        .ICE(microblaze_0_ILMB_CE),
        .IFetch(microblaze_0_ILMB_READSTROBE),
        .IReady(microblaze_0_ILMB_READY),
        .IUE(microblaze_0_ILMB_UE),
        .IWAIT(microblaze_0_ILMB_WAIT),
        .I_AS(microblaze_0_ILMB_ADDRSTROBE),
        .Instr(microblaze_0_ILMB_READDBUS),
        .Instr_Addr(microblaze_0_ILMB_ABUS),
        .Interrupt(axi_intc_0_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DC_ARADDR(microblaze_0_M_AXI_DC_ARADDR),
        .M_AXI_DC_ARBURST(microblaze_0_M_AXI_DC_ARBURST),
        .M_AXI_DC_ARCACHE(microblaze_0_M_AXI_DC_ARCACHE),
        .M_AXI_DC_ARID(microblaze_0_M_AXI_DC_ARID),
        .M_AXI_DC_ARLEN(microblaze_0_M_AXI_DC_ARLEN),
        .M_AXI_DC_ARLOCK(microblaze_0_M_AXI_DC_ARLOCK),
        .M_AXI_DC_ARPROT(microblaze_0_M_AXI_DC_ARPROT),
        .M_AXI_DC_ARQOS(microblaze_0_M_AXI_DC_ARQOS),
        .M_AXI_DC_ARREADY(microblaze_0_M_AXI_DC_ARREADY),
        .M_AXI_DC_ARSIZE(microblaze_0_M_AXI_DC_ARSIZE),
        .M_AXI_DC_ARVALID(microblaze_0_M_AXI_DC_ARVALID),
        .M_AXI_DC_AWADDR(microblaze_0_M_AXI_DC_AWADDR),
        .M_AXI_DC_AWBURST(microblaze_0_M_AXI_DC_AWBURST),
        .M_AXI_DC_AWCACHE(microblaze_0_M_AXI_DC_AWCACHE),
        .M_AXI_DC_AWID(microblaze_0_M_AXI_DC_AWID),
        .M_AXI_DC_AWLEN(microblaze_0_M_AXI_DC_AWLEN),
        .M_AXI_DC_AWLOCK(microblaze_0_M_AXI_DC_AWLOCK),
        .M_AXI_DC_AWPROT(microblaze_0_M_AXI_DC_AWPROT),
        .M_AXI_DC_AWQOS(microblaze_0_M_AXI_DC_AWQOS),
        .M_AXI_DC_AWREADY(microblaze_0_M_AXI_DC_AWREADY),
        .M_AXI_DC_AWSIZE(microblaze_0_M_AXI_DC_AWSIZE),
        .M_AXI_DC_AWVALID(microblaze_0_M_AXI_DC_AWVALID),
        .M_AXI_DC_BID(microblaze_0_M_AXI_DC_BID),
        .M_AXI_DC_BREADY(microblaze_0_M_AXI_DC_BREADY),
        .M_AXI_DC_BRESP(microblaze_0_M_AXI_DC_BRESP),
        .M_AXI_DC_BVALID(microblaze_0_M_AXI_DC_BVALID),
        .M_AXI_DC_RDATA(microblaze_0_M_AXI_DC_RDATA),
        .M_AXI_DC_RID(microblaze_0_M_AXI_DC_RID),
        .M_AXI_DC_RLAST(microblaze_0_M_AXI_DC_RLAST),
        .M_AXI_DC_RREADY(microblaze_0_M_AXI_DC_RREADY),
        .M_AXI_DC_RRESP(microblaze_0_M_AXI_DC_RRESP),
        .M_AXI_DC_RVALID(microblaze_0_M_AXI_DC_RVALID),
        .M_AXI_DC_WDATA(microblaze_0_M_AXI_DC_WDATA),
        .M_AXI_DC_WLAST(microblaze_0_M_AXI_DC_WLAST),
        .M_AXI_DC_WREADY(microblaze_0_M_AXI_DC_WREADY),
        .M_AXI_DC_WSTRB(microblaze_0_M_AXI_DC_WSTRB),
        .M_AXI_DC_WVALID(microblaze_0_M_AXI_DC_WVALID),
        .M_AXI_DP_ARADDR(microblaze_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_0_DLMB_READSTROBE),
        .Reset(Resets_mb_reset),
        .Write_Strobe(microblaze_0_DLMB_WRITESTROBE));
  microblaze_0_local_memory_imp_EUBCZN microblaze_0_local_memory
       (.DLMB_abus(microblaze_0_DLMB_ABUS),
        .DLMB_addrstrobe(microblaze_0_DLMB_ADDRSTROBE),
        .DLMB_be(microblaze_0_DLMB_BE),
        .DLMB_ce(microblaze_0_DLMB_CE),
        .DLMB_readdbus(microblaze_0_DLMB_READDBUS),
        .DLMB_readstrobe(microblaze_0_DLMB_READSTROBE),
        .DLMB_ready(microblaze_0_DLMB_READY),
        .DLMB_ue(microblaze_0_DLMB_UE),
        .DLMB_wait(microblaze_0_DLMB_WAIT),
        .DLMB_writedbus(microblaze_0_DLMB_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_DLMB_WRITESTROBE),
        .ILMB_abus(microblaze_0_ILMB_ABUS),
        .ILMB_addrstrobe(microblaze_0_ILMB_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ILMB_CE),
        .ILMB_readdbus(microblaze_0_ILMB_READDBUS),
        .ILMB_readstrobe(microblaze_0_ILMB_READSTROBE),
        .ILMB_ready(microblaze_0_ILMB_READY),
        .ILMB_ue(microblaze_0_ILMB_UE),
        .ILMB_wait(microblaze_0_ILMB_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(SYS_Rst_1));
  Fast_IP_Clock_psram_ip_0_1 psram_ip_0
       (.MEM_ADDR_OUT(psram_ip_0_PSRAM_ADDR),
        .MEM_ADV(psram_ip_0_PSRAM_ADV_LDN),
        .MEM_BEN(psram_ip_0_PSRAM_BEN),
        .MEM_CEN(psram_ip_0_PSRAM_CE_N),
        .MEM_CRE(psram_ip_0_PSRAM_CRE),
        .MEM_DATA_I(psram_ip_0_PSRAM_DQ_I),
        .MEM_DATA_O(psram_ip_0_PSRAM_DQ_O),
        .MEM_DATA_T(psram_ip_0_PSRAM_DQ_T),
        .MEM_OEN(psram_ip_0_PSRAM_OEN),
        .MEM_WEN(psram_ip_0_PSRAM_WEN),
        .s00_axi_aclk(microblaze_0_Clk),
        .s00_axi_araddr(system_cache_0_M0_AXI_ARADDR[23:0]),
        .s00_axi_arburst(system_cache_0_M0_AXI_ARBURST),
        .s00_axi_arcache(system_cache_0_M0_AXI_ARCACHE),
        .s00_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axi_arid(system_cache_0_M0_AXI_ARID),
        .s00_axi_arlen(system_cache_0_M0_AXI_ARLEN),
        .s00_axi_arlock(system_cache_0_M0_AXI_ARLOCK),
        .s00_axi_arprot(system_cache_0_M0_AXI_ARPROT),
        .s00_axi_arqos(system_cache_0_M0_AXI_ARQOS),
        .s00_axi_arready(system_cache_0_M0_AXI_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(system_cache_0_M0_AXI_ARSIZE),
        .s00_axi_aruser(1'b0),
        .s00_axi_arvalid(system_cache_0_M0_AXI_ARVALID),
        .s00_axi_awaddr(system_cache_0_M0_AXI_AWADDR[23:0]),
        .s00_axi_awburst(system_cache_0_M0_AXI_AWBURST),
        .s00_axi_awcache(system_cache_0_M0_AXI_AWCACHE),
        .s00_axi_awid(system_cache_0_M0_AXI_AWID),
        .s00_axi_awlen(system_cache_0_M0_AXI_AWLEN),
        .s00_axi_awlock(system_cache_0_M0_AXI_AWLOCK),
        .s00_axi_awprot(system_cache_0_M0_AXI_AWPROT),
        .s00_axi_awqos(system_cache_0_M0_AXI_AWQOS),
        .s00_axi_awready(system_cache_0_M0_AXI_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(system_cache_0_M0_AXI_AWSIZE),
        .s00_axi_awuser(1'b0),
        .s00_axi_awvalid(system_cache_0_M0_AXI_AWVALID),
        .s00_axi_bid(system_cache_0_M0_AXI_BID),
        .s00_axi_bready(system_cache_0_M0_AXI_BREADY),
        .s00_axi_bresp(system_cache_0_M0_AXI_BRESP),
        .s00_axi_bvalid(system_cache_0_M0_AXI_BVALID),
        .s00_axi_rdata(system_cache_0_M0_AXI_RDATA),
        .s00_axi_rid(system_cache_0_M0_AXI_RID),
        .s00_axi_rlast(system_cache_0_M0_AXI_RLAST),
        .s00_axi_rready(system_cache_0_M0_AXI_RREADY),
        .s00_axi_rresp(system_cache_0_M0_AXI_RRESP),
        .s00_axi_rvalid(system_cache_0_M0_AXI_RVALID),
        .s00_axi_wdata(system_cache_0_M0_AXI_WDATA),
        .s00_axi_wlast(system_cache_0_M0_AXI_WLAST),
        .s00_axi_wready(system_cache_0_M0_AXI_WREADY),
        .s00_axi_wstrb(system_cache_0_M0_AXI_WSTRB),
        .s00_axi_wuser(1'b0),
        .s00_axi_wvalid(system_cache_0_M0_AXI_WVALID));
  Fast_IP_Clock_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arprot(smartconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awprot(smartconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .S00_AXI_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .S00_AXI_arready(microblaze_0_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .S00_AXI_awready(microblaze_0_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .S00_AXI_bready(microblaze_0_M_AXI_DP_BREADY),
        .S00_AXI_bresp(microblaze_0_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .S00_AXI_rdata(microblaze_0_M_AXI_DP_RDATA),
        .S00_AXI_rready(microblaze_0_M_AXI_DP_RREADY),
        .S00_AXI_rresp(microblaze_0_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .S00_AXI_wdata(microblaze_0_M_AXI_DP_WDATA),
        .S00_AXI_wready(microblaze_0_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(microblaze_0_M_AXI_DP_WVALID),
        .S01_AXI_araddr(calc_0_m_axi_gmem_ARADDR),
        .S01_AXI_arburst(calc_0_m_axi_gmem_ARBURST),
        .S01_AXI_arcache(calc_0_m_axi_gmem_ARCACHE),
        .S01_AXI_arlen(calc_0_m_axi_gmem_ARLEN),
        .S01_AXI_arlock(calc_0_m_axi_gmem_ARLOCK[0]),
        .S01_AXI_arprot(calc_0_m_axi_gmem_ARPROT),
        .S01_AXI_arqos(calc_0_m_axi_gmem_ARQOS),
        .S01_AXI_arready(calc_0_m_axi_gmem_ARREADY),
        .S01_AXI_arsize(calc_0_m_axi_gmem_ARSIZE),
        .S01_AXI_arvalid(calc_0_m_axi_gmem_ARVALID),
        .S01_AXI_awaddr(calc_0_m_axi_gmem_AWADDR),
        .S01_AXI_awburst(calc_0_m_axi_gmem_AWBURST),
        .S01_AXI_awcache(calc_0_m_axi_gmem_AWCACHE),
        .S01_AXI_awlen(calc_0_m_axi_gmem_AWLEN),
        .S01_AXI_awlock(calc_0_m_axi_gmem_AWLOCK[0]),
        .S01_AXI_awprot(calc_0_m_axi_gmem_AWPROT),
        .S01_AXI_awqos(calc_0_m_axi_gmem_AWQOS),
        .S01_AXI_awready(calc_0_m_axi_gmem_AWREADY),
        .S01_AXI_awsize(calc_0_m_axi_gmem_AWSIZE),
        .S01_AXI_awvalid(calc_0_m_axi_gmem_AWVALID),
        .S01_AXI_bready(calc_0_m_axi_gmem_BREADY),
        .S01_AXI_bresp(calc_0_m_axi_gmem_BRESP),
        .S01_AXI_bvalid(calc_0_m_axi_gmem_BVALID),
        .S01_AXI_rdata(calc_0_m_axi_gmem_RDATA),
        .S01_AXI_rlast(calc_0_m_axi_gmem_RLAST),
        .S01_AXI_rready(calc_0_m_axi_gmem_RREADY),
        .S01_AXI_rresp(calc_0_m_axi_gmem_RRESP),
        .S01_AXI_rvalid(calc_0_m_axi_gmem_RVALID),
        .S01_AXI_wdata(calc_0_m_axi_gmem_WDATA),
        .S01_AXI_wlast(calc_0_m_axi_gmem_WLAST),
        .S01_AXI_wready(calc_0_m_axi_gmem_WREADY),
        .S01_AXI_wstrb(calc_0_m_axi_gmem_WSTRB),
        .S01_AXI_wvalid(calc_0_m_axi_gmem_WVALID),
        .aclk(microblaze_0_Clk),
        .aclk1(clk_wiz_0_CalcClk),
        .aresetn(proc_sys_reset_0_peripheral_aresetn));
  Fast_IP_Clock_system_cache_0_0 system_cache_0
       (.ACLK(microblaze_0_Clk),
        .ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M0_AXI_ARADDR(system_cache_0_M0_AXI_ARADDR),
        .M0_AXI_ARBURST(system_cache_0_M0_AXI_ARBURST),
        .M0_AXI_ARCACHE(system_cache_0_M0_AXI_ARCACHE),
        .M0_AXI_ARID(system_cache_0_M0_AXI_ARID),
        .M0_AXI_ARLEN(system_cache_0_M0_AXI_ARLEN),
        .M0_AXI_ARLOCK(system_cache_0_M0_AXI_ARLOCK),
        .M0_AXI_ARPROT(system_cache_0_M0_AXI_ARPROT),
        .M0_AXI_ARQOS(system_cache_0_M0_AXI_ARQOS),
        .M0_AXI_ARREADY(system_cache_0_M0_AXI_ARREADY),
        .M0_AXI_ARSIZE(system_cache_0_M0_AXI_ARSIZE),
        .M0_AXI_ARVALID(system_cache_0_M0_AXI_ARVALID),
        .M0_AXI_AWADDR(system_cache_0_M0_AXI_AWADDR),
        .M0_AXI_AWBURST(system_cache_0_M0_AXI_AWBURST),
        .M0_AXI_AWCACHE(system_cache_0_M0_AXI_AWCACHE),
        .M0_AXI_AWID(system_cache_0_M0_AXI_AWID),
        .M0_AXI_AWLEN(system_cache_0_M0_AXI_AWLEN),
        .M0_AXI_AWLOCK(system_cache_0_M0_AXI_AWLOCK),
        .M0_AXI_AWPROT(system_cache_0_M0_AXI_AWPROT),
        .M0_AXI_AWQOS(system_cache_0_M0_AXI_AWQOS),
        .M0_AXI_AWREADY(system_cache_0_M0_AXI_AWREADY),
        .M0_AXI_AWSIZE(system_cache_0_M0_AXI_AWSIZE),
        .M0_AXI_AWVALID(system_cache_0_M0_AXI_AWVALID),
        .M0_AXI_BID(system_cache_0_M0_AXI_BID),
        .M0_AXI_BREADY(system_cache_0_M0_AXI_BREADY),
        .M0_AXI_BRESP(system_cache_0_M0_AXI_BRESP),
        .M0_AXI_BVALID(system_cache_0_M0_AXI_BVALID),
        .M0_AXI_RDATA(system_cache_0_M0_AXI_RDATA),
        .M0_AXI_RID(system_cache_0_M0_AXI_RID),
        .M0_AXI_RLAST(system_cache_0_M0_AXI_RLAST),
        .M0_AXI_RREADY(system_cache_0_M0_AXI_RREADY),
        .M0_AXI_RRESP(system_cache_0_M0_AXI_RRESP),
        .M0_AXI_RVALID(system_cache_0_M0_AXI_RVALID),
        .M0_AXI_WDATA(system_cache_0_M0_AXI_WDATA),
        .M0_AXI_WLAST(system_cache_0_M0_AXI_WLAST),
        .M0_AXI_WREADY(system_cache_0_M0_AXI_WREADY),
        .M0_AXI_WSTRB(system_cache_0_M0_AXI_WSTRB),
        .M0_AXI_WVALID(system_cache_0_M0_AXI_WVALID),
        .S0_AXI_ARADDR(microblaze_0_M_AXI_DC_ARADDR),
        .S0_AXI_ARBURST(microblaze_0_M_AXI_DC_ARBURST),
        .S0_AXI_ARCACHE(microblaze_0_M_AXI_DC_ARCACHE),
        .S0_AXI_ARID(microblaze_0_M_AXI_DC_ARID),
        .S0_AXI_ARLEN(microblaze_0_M_AXI_DC_ARLEN),
        .S0_AXI_ARLOCK(microblaze_0_M_AXI_DC_ARLOCK),
        .S0_AXI_ARPROT(microblaze_0_M_AXI_DC_ARPROT),
        .S0_AXI_ARQOS(microblaze_0_M_AXI_DC_ARQOS),
        .S0_AXI_ARREADY(microblaze_0_M_AXI_DC_ARREADY),
        .S0_AXI_ARSIZE(microblaze_0_M_AXI_DC_ARSIZE),
        .S0_AXI_ARVALID(microblaze_0_M_AXI_DC_ARVALID),
        .S0_AXI_AWADDR(microblaze_0_M_AXI_DC_AWADDR),
        .S0_AXI_AWBURST(microblaze_0_M_AXI_DC_AWBURST),
        .S0_AXI_AWCACHE(microblaze_0_M_AXI_DC_AWCACHE),
        .S0_AXI_AWID(microblaze_0_M_AXI_DC_AWID),
        .S0_AXI_AWLEN(microblaze_0_M_AXI_DC_AWLEN),
        .S0_AXI_AWLOCK(microblaze_0_M_AXI_DC_AWLOCK),
        .S0_AXI_AWPROT(microblaze_0_M_AXI_DC_AWPROT),
        .S0_AXI_AWQOS(microblaze_0_M_AXI_DC_AWQOS),
        .S0_AXI_AWREADY(microblaze_0_M_AXI_DC_AWREADY),
        .S0_AXI_AWSIZE(microblaze_0_M_AXI_DC_AWSIZE),
        .S0_AXI_AWVALID(microblaze_0_M_AXI_DC_AWVALID),
        .S0_AXI_BID(microblaze_0_M_AXI_DC_BID),
        .S0_AXI_BREADY(microblaze_0_M_AXI_DC_BREADY),
        .S0_AXI_BRESP(microblaze_0_M_AXI_DC_BRESP),
        .S0_AXI_BVALID(microblaze_0_M_AXI_DC_BVALID),
        .S0_AXI_GEN_ARADDR(axi_clock_converter_0_M_AXI_ARADDR),
        .S0_AXI_GEN_ARBURST(axi_clock_converter_0_M_AXI_ARBURST),
        .S0_AXI_GEN_ARCACHE(axi_clock_converter_0_M_AXI_ARCACHE),
        .S0_AXI_GEN_ARID(1'b0),
        .S0_AXI_GEN_ARLEN(axi_clock_converter_0_M_AXI_ARLEN),
        .S0_AXI_GEN_ARLOCK(axi_clock_converter_0_M_AXI_ARLOCK),
        .S0_AXI_GEN_ARPROT(axi_clock_converter_0_M_AXI_ARPROT),
        .S0_AXI_GEN_ARQOS(axi_clock_converter_0_M_AXI_ARQOS),
        .S0_AXI_GEN_ARREADY(axi_clock_converter_0_M_AXI_ARREADY),
        .S0_AXI_GEN_ARSIZE(axi_clock_converter_0_M_AXI_ARSIZE),
        .S0_AXI_GEN_ARVALID(axi_clock_converter_0_M_AXI_ARVALID),
        .S0_AXI_GEN_AWADDR(axi_clock_converter_0_M_AXI_AWADDR),
        .S0_AXI_GEN_AWBURST(axi_clock_converter_0_M_AXI_AWBURST),
        .S0_AXI_GEN_AWCACHE(axi_clock_converter_0_M_AXI_AWCACHE),
        .S0_AXI_GEN_AWID(1'b0),
        .S0_AXI_GEN_AWLEN(axi_clock_converter_0_M_AXI_AWLEN),
        .S0_AXI_GEN_AWLOCK(axi_clock_converter_0_M_AXI_AWLOCK),
        .S0_AXI_GEN_AWPROT(axi_clock_converter_0_M_AXI_AWPROT),
        .S0_AXI_GEN_AWQOS(axi_clock_converter_0_M_AXI_AWQOS),
        .S0_AXI_GEN_AWREADY(axi_clock_converter_0_M_AXI_AWREADY),
        .S0_AXI_GEN_AWSIZE(axi_clock_converter_0_M_AXI_AWSIZE),
        .S0_AXI_GEN_AWVALID(axi_clock_converter_0_M_AXI_AWVALID),
        .S0_AXI_GEN_BREADY(axi_clock_converter_0_M_AXI_BREADY),
        .S0_AXI_GEN_BRESP(axi_clock_converter_0_M_AXI_BRESP),
        .S0_AXI_GEN_BVALID(axi_clock_converter_0_M_AXI_BVALID),
        .S0_AXI_GEN_RDATA(axi_clock_converter_0_M_AXI_RDATA),
        .S0_AXI_GEN_RLAST(axi_clock_converter_0_M_AXI_RLAST),
        .S0_AXI_GEN_RREADY(axi_clock_converter_0_M_AXI_RREADY),
        .S0_AXI_GEN_RRESP(axi_clock_converter_0_M_AXI_RRESP),
        .S0_AXI_GEN_RVALID(axi_clock_converter_0_M_AXI_RVALID),
        .S0_AXI_GEN_WDATA(axi_clock_converter_0_M_AXI_WDATA),
        .S0_AXI_GEN_WLAST(axi_clock_converter_0_M_AXI_WLAST),
        .S0_AXI_GEN_WREADY(axi_clock_converter_0_M_AXI_WREADY),
        .S0_AXI_GEN_WSTRB(axi_clock_converter_0_M_AXI_WSTRB),
        .S0_AXI_GEN_WVALID(axi_clock_converter_0_M_AXI_WVALID),
        .S0_AXI_RDATA(microblaze_0_M_AXI_DC_RDATA),
        .S0_AXI_RID(microblaze_0_M_AXI_DC_RID),
        .S0_AXI_RLAST(microblaze_0_M_AXI_DC_RLAST),
        .S0_AXI_RREADY(microblaze_0_M_AXI_DC_RREADY),
        .S0_AXI_RRESP(microblaze_0_M_AXI_DC_RRESP),
        .S0_AXI_RVALID(microblaze_0_M_AXI_DC_RVALID),
        .S0_AXI_WDATA(microblaze_0_M_AXI_DC_WDATA),
        .S0_AXI_WLAST(microblaze_0_M_AXI_DC_WLAST),
        .S0_AXI_WREADY(microblaze_0_M_AXI_DC_WREADY),
        .S0_AXI_WSTRB(microblaze_0_M_AXI_DC_WSTRB),
        .S0_AXI_WVALID(microblaze_0_M_AXI_DC_WVALID));
  Fast_IP_Clock_system_ila_0_0 system_ila_0
       (.SLOT_0_AXI_araddr(microblaze_0_M_AXI_DC_ARADDR),
        .SLOT_0_AXI_arburst(microblaze_0_M_AXI_DC_ARBURST),
        .SLOT_0_AXI_arcache(microblaze_0_M_AXI_DC_ARCACHE),
        .SLOT_0_AXI_arlen(microblaze_0_M_AXI_DC_ARLEN),
        .SLOT_0_AXI_arlock(microblaze_0_M_AXI_DC_ARLOCK),
        .SLOT_0_AXI_arprot(microblaze_0_M_AXI_DC_ARPROT),
        .SLOT_0_AXI_arqos(microblaze_0_M_AXI_DC_ARQOS),
        .SLOT_0_AXI_arready(microblaze_0_M_AXI_DC_ARREADY),
        .SLOT_0_AXI_arsize(microblaze_0_M_AXI_DC_ARSIZE),
        .SLOT_0_AXI_arvalid(microblaze_0_M_AXI_DC_ARVALID),
        .SLOT_0_AXI_awaddr(microblaze_0_M_AXI_DC_AWADDR),
        .SLOT_0_AXI_awburst(microblaze_0_M_AXI_DC_AWBURST),
        .SLOT_0_AXI_awcache(microblaze_0_M_AXI_DC_AWCACHE),
        .SLOT_0_AXI_awlen(microblaze_0_M_AXI_DC_AWLEN),
        .SLOT_0_AXI_awlock(microblaze_0_M_AXI_DC_AWLOCK),
        .SLOT_0_AXI_awprot(microblaze_0_M_AXI_DC_AWPROT),
        .SLOT_0_AXI_awqos(microblaze_0_M_AXI_DC_AWQOS),
        .SLOT_0_AXI_awready(microblaze_0_M_AXI_DC_AWREADY),
        .SLOT_0_AXI_awsize(microblaze_0_M_AXI_DC_AWSIZE),
        .SLOT_0_AXI_awvalid(microblaze_0_M_AXI_DC_AWVALID),
        .SLOT_0_AXI_bready(microblaze_0_M_AXI_DC_BREADY),
        .SLOT_0_AXI_bresp(microblaze_0_M_AXI_DC_BRESP),
        .SLOT_0_AXI_bvalid(microblaze_0_M_AXI_DC_BVALID),
        .SLOT_0_AXI_rdata(microblaze_0_M_AXI_DC_RDATA),
        .SLOT_0_AXI_rlast(microblaze_0_M_AXI_DC_RLAST),
        .SLOT_0_AXI_rready(microblaze_0_M_AXI_DC_RREADY),
        .SLOT_0_AXI_rresp(microblaze_0_M_AXI_DC_RRESP),
        .SLOT_0_AXI_rvalid(microblaze_0_M_AXI_DC_RVALID),
        .SLOT_0_AXI_wdata(microblaze_0_M_AXI_DC_WDATA),
        .SLOT_0_AXI_wlast(microblaze_0_M_AXI_DC_WLAST),
        .SLOT_0_AXI_wready(microblaze_0_M_AXI_DC_WREADY),
        .SLOT_0_AXI_wstrb(microblaze_0_M_AXI_DC_WSTRB),
        .SLOT_0_AXI_wvalid(microblaze_0_M_AXI_DC_WVALID),
        .SLOT_1_AXI_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .SLOT_1_AXI_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .SLOT_1_AXI_arready(microblaze_0_M_AXI_DP_ARREADY),
        .SLOT_1_AXI_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .SLOT_1_AXI_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .SLOT_1_AXI_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .SLOT_1_AXI_awready(microblaze_0_M_AXI_DP_AWREADY),
        .SLOT_1_AXI_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .SLOT_1_AXI_bready(microblaze_0_M_AXI_DP_BREADY),
        .SLOT_1_AXI_bresp(microblaze_0_M_AXI_DP_BRESP),
        .SLOT_1_AXI_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .SLOT_1_AXI_rdata(microblaze_0_M_AXI_DP_RDATA),
        .SLOT_1_AXI_rready(microblaze_0_M_AXI_DP_RREADY),
        .SLOT_1_AXI_rresp(microblaze_0_M_AXI_DP_RRESP),
        .SLOT_1_AXI_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .SLOT_1_AXI_wdata(microblaze_0_M_AXI_DP_WDATA),
        .SLOT_1_AXI_wready(microblaze_0_M_AXI_DP_WREADY),
        .SLOT_1_AXI_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .SLOT_1_AXI_wvalid(microblaze_0_M_AXI_DP_WVALID),
        .SLOT_2_LMB_abus(microblaze_0_DLMB_ABUS),
        .SLOT_2_LMB_addrstrobe(microblaze_0_DLMB_ADDRSTROBE),
        .SLOT_2_LMB_be(microblaze_0_DLMB_BE),
        .SLOT_2_LMB_ce(microblaze_0_DLMB_CE),
        .SLOT_2_LMB_readdbus(microblaze_0_DLMB_READDBUS),
        .SLOT_2_LMB_readstrobe(microblaze_0_DLMB_READSTROBE),
        .SLOT_2_LMB_ready(microblaze_0_DLMB_READY),
        .SLOT_2_LMB_ue(microblaze_0_DLMB_UE),
        .SLOT_2_LMB_wait(microblaze_0_DLMB_WAIT),
        .SLOT_2_LMB_writedbus(microblaze_0_DLMB_WRITEDBUS),
        .SLOT_2_LMB_writestrobe(microblaze_0_DLMB_WRITESTROBE),
        .SLOT_3_LMB_abus(microblaze_0_ILMB_ABUS),
        .SLOT_3_LMB_addrstrobe(microblaze_0_ILMB_ADDRSTROBE),
        .SLOT_3_LMB_ce(microblaze_0_ILMB_CE),
        .SLOT_3_LMB_readdbus(microblaze_0_ILMB_READDBUS),
        .SLOT_3_LMB_readstrobe(microblaze_0_ILMB_READSTROBE),
        .SLOT_3_LMB_ready(microblaze_0_ILMB_READY),
        .SLOT_3_LMB_ue(microblaze_0_ILMB_UE),
        .SLOT_3_LMB_wait(microblaze_0_ILMB_WAIT),
        .clk(microblaze_0_Clk),
        .resetn(proc_sys_reset_0_peripheral_aresetn));
  Fast_IP_Clock_xlconcat_0_0 xlconcat_0
       (.In0(mdm_1_Interrupt),
        .In1(axi_uart16550_0_ip2intc_irpt),
        .dout(xlconcat_0_dout));
endmodule

module Resets_imp_1RBB4I2
   (btnCpuReset,
    bus_struct_reset,
    dcm_locked,
    mb_debug_sys_rst,
    mb_reset,
    peripheral_aresetn,
    peripheral_aresetn1,
    slowest_sync_clk,
    slowest_sync_clk1);
  input btnCpuReset;
  output [0:0]bus_struct_reset;
  input dcm_locked;
  input mb_debug_sys_rst;
  output mb_reset;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_aresetn1;
  input slowest_sync_clk;
  input slowest_sync_clk1;

  wire [0:0]SYS_Rst_1;
  wire btnCpuReset_1;
  wire clk_wiz_0_CalcClk;
  wire clk_wiz_0_locked;
  wire mdm_1_Debug_SYS_Rst;
  wire microblaze_0_Clk;
  wire proc_sys_reset_0_mb_reset;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;

  assign btnCpuReset_1 = btnCpuReset;
  assign bus_struct_reset[0] = SYS_Rst_1;
  assign clk_wiz_0_CalcClk = slowest_sync_clk;
  assign clk_wiz_0_locked = dcm_locked;
  assign mb_reset = proc_sys_reset_0_mb_reset;
  assign mdm_1_Debug_SYS_Rst = mb_debug_sys_rst;
  assign microblaze_0_Clk = slowest_sync_clk1;
  assign peripheral_aresetn[0] = proc_sys_reset_1_peripheral_aresetn;
  assign peripheral_aresetn1[0] = proc_sys_reset_0_peripheral_aresetn;
  Fast_IP_Clock_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(SYS_Rst_1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(btnCpuReset_1),
        .mb_debug_sys_rst(mdm_1_Debug_SYS_Rst),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
  Fast_IP_Clock_proc_sys_reset_0_1 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(btnCpuReset_1),
        .mb_debug_sys_rst(mdm_1_Debug_SYS_Rst),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_CalcClk));
endmodule

module microblaze_0_local_memory_imp_EUBCZN
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  (* DEBUG = "true" *) wire [0:31]microblaze_0_dlmb_ABUS;
  (* DEBUG = "true" *) wire microblaze_0_dlmb_ADDRSTROBE;
  (* DEBUG = "true" *) wire [0:3]microblaze_0_dlmb_BE;
  (* DEBUG = "true" *) wire microblaze_0_dlmb_CE;
  (* DEBUG = "true" *) wire [0:31]microblaze_0_dlmb_READDBUS;
  (* DEBUG = "true" *) wire microblaze_0_dlmb_READSTROBE;
  (* DEBUG = "true" *) wire microblaze_0_dlmb_READY;
  (* DEBUG = "true" *) wire microblaze_0_dlmb_UE;
  (* DEBUG = "true" *) wire microblaze_0_dlmb_WAIT;
  (* DEBUG = "true" *) wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  (* DEBUG = "true" *) wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  (* DEBUG = "true" *) wire [0:31]microblaze_0_ilmb_ABUS;
  (* DEBUG = "true" *) wire microblaze_0_ilmb_ADDRSTROBE;
  (* DEBUG = "true" *) wire microblaze_0_ilmb_CE;
  (* DEBUG = "true" *) wire [0:31]microblaze_0_ilmb_READDBUS;
  (* DEBUG = "true" *) wire microblaze_0_ilmb_READSTROBE;
  (* DEBUG = "true" *) wire microblaze_0_ilmb_READY;
  (* DEBUG = "true" *) wire microblaze_0_ilmb_UE;
  (* DEBUG = "true" *) wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > Fast_IP_Clock microblaze_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  Fast_IP_Clock_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  Fast_IP_Clock_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  Fast_IP_Clock_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  Fast_IP_Clock_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  Fast_IP_Clock_lmb_bram_0 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule
