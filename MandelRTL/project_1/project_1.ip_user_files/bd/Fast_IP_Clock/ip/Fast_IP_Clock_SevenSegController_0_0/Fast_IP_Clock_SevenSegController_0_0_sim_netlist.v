// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jul  5 12:14:02 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_SevenSegController_0_0/Fast_IP_Clock_SevenSegController_0_0_sim_netlist.v
// Design      : Fast_IP_Clock_SevenSegController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Fast_IP_Clock_SevenSegController_0_0,SevenSegController_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "SevenSegController_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Fast_IP_Clock_SevenSegController_0_0
   (anode,
    cathode,
    dp,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  output [7:0]anode;
  output [6:0]cathode;
  output dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire [7:0]anode;
  wire [6:0]cathode;
  wire dp;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Fast_IP_Clock_SevenSegController_0_0_SevenSegController_v1_0 inst
       (.anode(anode),
        .cathode(cathode),
        .dp(dp),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Binary_to_BCD" *) 
module Fast_IP_Clock_SevenSegController_0_0_Binary_to_BCD
   (overflow,
    r_DV_reg_0,
    \r_BCD_reg[20]_0 ,
    \r_BCD_reg[4]_0 ,
    \r_BCD_reg[21]_0 ,
    \r_BCD_reg[5]_0 ,
    \r_BCD_reg[22]_0 ,
    \r_BCD_reg[6]_0 ,
    \r_BCD_reg[23]_0 ,
    \r_BCD_reg[7]_0 ,
    Q,
    \refresh_counter_reg[18] ,
    \r_BCD_reg[24]_0 ,
    \refresh_counter_reg[18]_0 ,
    \r_BCD_reg[31]_0 ,
    s00_axi_aclk,
    state,
    LED_activating_counter,
    r_OV_reg_0,
    D,
    \anode[7]_i_4_0 ,
    \anode[7]_i_4_1 ,
    \anode[7]_i_4_2 ,
    \anode[7]_i_4_3 ,
    \anode[7]_i_4_4 ,
    \anode[7]_i_9_0 ,
    \r_Binary_reg[0]_0 );
  output overflow;
  output r_DV_reg_0;
  output \r_BCD_reg[20]_0 ;
  output \r_BCD_reg[4]_0 ;
  output \r_BCD_reg[21]_0 ;
  output \r_BCD_reg[5]_0 ;
  output \r_BCD_reg[22]_0 ;
  output \r_BCD_reg[6]_0 ;
  output \r_BCD_reg[23]_0 ;
  output \r_BCD_reg[7]_0 ;
  output [0:0]Q;
  output \refresh_counter_reg[18] ;
  output \r_BCD_reg[24]_0 ;
  output \refresh_counter_reg[18]_0 ;
  output \r_BCD_reg[31]_0 ;
  input s00_axi_aclk;
  input [1:0]state;
  input [2:0]LED_activating_counter;
  input r_OV_reg_0;
  input [30:0]D;
  input \anode[7]_i_4_0 ;
  input \anode[7]_i_4_1 ;
  input \anode[7]_i_4_2 ;
  input \anode[7]_i_4_3 ;
  input \anode[7]_i_4_4 ;
  input [0:0]\anode[7]_i_9_0 ;
  input [0:0]\r_Binary_reg[0]_0 ;

  wire [30:0]D;
  wire [2:0]LED_activating_counter;
  wire [0:0]Q;
  wire \anode[7]_i_15_n_0 ;
  wire \anode[7]_i_16_n_0 ;
  wire \anode[7]_i_17_n_0 ;
  wire \anode[7]_i_21_n_0 ;
  wire \anode[7]_i_23_n_0 ;
  wire \anode[7]_i_25_n_0 ;
  wire \anode[7]_i_27_n_0 ;
  wire \anode[7]_i_28_n_0 ;
  wire \anode[7]_i_29_n_0 ;
  wire \anode[7]_i_4_0 ;
  wire \anode[7]_i_4_1 ;
  wire \anode[7]_i_4_2 ;
  wire \anode[7]_i_4_3 ;
  wire \anode[7]_i_4_4 ;
  wire \anode[7]_i_8_n_0 ;
  wire [0:0]\anode[7]_i_9_0 ;
  wire \anode[7]_i_9_n_0 ;
  wire [31:0]bcd;
  wire done;
  wire \leading_zero[1]_0 ;
  wire overflow;
  wire p_0_in;
  wire [2:0]p_0_in__0;
  wire [31:3]r_BCD;
  wire [31:0]r_BCD0_in;
  wire \r_BCD[0]_i_2_n_0 ;
  wire \r_BCD[15]_i_3_n_0 ;
  wire \r_BCD[19]_i_3_n_0 ;
  wire \r_BCD[19]_i_4_n_0 ;
  wire \r_BCD[24]_i_2_n_0 ;
  wire \r_BCD[28]_i_2_n_0 ;
  wire \r_BCD[29]_i_2_n_0 ;
  wire \r_BCD[30]_i_2_n_0 ;
  wire \r_BCD[31]_i_13_n_0 ;
  wire \r_BCD[31]_i_14_n_0 ;
  wire \r_BCD[31]_i_15_n_0 ;
  wire \r_BCD[31]_i_16_n_0 ;
  wire \r_BCD[31]_i_17_n_0 ;
  wire \r_BCD[31]_i_18_n_0 ;
  wire \r_BCD[31]_i_19_n_0 ;
  wire \r_BCD[31]_i_20_n_0 ;
  wire \r_BCD[31]_i_21_n_0 ;
  wire \r_BCD[31]_i_22_n_0 ;
  wire \r_BCD[31]_i_23_n_0 ;
  wire \r_BCD[31]_i_24_n_0 ;
  wire \r_BCD[31]_i_25_n_0 ;
  wire \r_BCD[31]_i_26_n_0 ;
  wire \r_BCD[31]_i_27_n_0 ;
  wire \r_BCD[31]_i_28_n_0 ;
  wire \r_BCD[31]_i_3_n_0 ;
  wire \r_BCD[31]_i_4_n_0 ;
  wire \r_BCD[31]_i_5_n_0 ;
  wire \r_BCD[31]_i_6_n_0 ;
  wire \r_BCD[31]_i_7_n_0 ;
  wire \r_BCD[31]_i_8_n_0 ;
  wire \r_BCD[32]_i_1_n_0 ;
  wire \r_BCD[32]_i_2_n_0 ;
  wire \r_BCD[32]_i_3_n_0 ;
  wire \r_BCD[32]_i_4_n_0 ;
  wire \r_BCD[32]_i_5_n_0 ;
  wire \r_BCD_reg[20]_0 ;
  wire \r_BCD_reg[21]_0 ;
  wire \r_BCD_reg[22]_0 ;
  wire \r_BCD_reg[23]_0 ;
  wire \r_BCD_reg[24]_0 ;
  wire \r_BCD_reg[31]_0 ;
  wire \r_BCD_reg[4]_0 ;
  wire \r_BCD_reg[5]_0 ;
  wire \r_BCD_reg[6]_0 ;
  wire \r_BCD_reg[7]_0 ;
  wire r_Binary;
  wire \r_Binary[10]_i_1_n_0 ;
  wire \r_Binary[11]_i_1_n_0 ;
  wire \r_Binary[12]_i_1_n_0 ;
  wire \r_Binary[13]_i_1_n_0 ;
  wire \r_Binary[14]_i_1_n_0 ;
  wire \r_Binary[15]_i_1_n_0 ;
  wire \r_Binary[16]_i_1_n_0 ;
  wire \r_Binary[17]_i_1_n_0 ;
  wire \r_Binary[18]_i_1_n_0 ;
  wire \r_Binary[19]_i_1_n_0 ;
  wire \r_Binary[1]_i_1_n_0 ;
  wire \r_Binary[20]_i_1_n_0 ;
  wire \r_Binary[21]_i_1_n_0 ;
  wire \r_Binary[22]_i_1_n_0 ;
  wire \r_Binary[23]_i_1_n_0 ;
  wire \r_Binary[24]_i_1_n_0 ;
  wire \r_Binary[25]_i_1_n_0 ;
  wire \r_Binary[26]_i_1_n_0 ;
  wire \r_Binary[27]_i_1_n_0 ;
  wire \r_Binary[28]_i_1_n_0 ;
  wire \r_Binary[29]_i_1_n_0 ;
  wire \r_Binary[2]_i_1_n_0 ;
  wire \r_Binary[30]_i_1_n_0 ;
  wire \r_Binary[31]_i_2_n_0 ;
  wire \r_Binary[3]_i_1_n_0 ;
  wire \r_Binary[4]_i_1_n_0 ;
  wire \r_Binary[5]_i_1_n_0 ;
  wire \r_Binary[6]_i_1_n_0 ;
  wire \r_Binary[7]_i_1_n_0 ;
  wire \r_Binary[8]_i_1_n_0 ;
  wire \r_Binary[9]_i_1_n_0 ;
  wire [0:0]\r_Binary_reg[0]_0 ;
  wire \r_Binary_reg_n_0_[0] ;
  wire \r_Binary_reg_n_0_[10] ;
  wire \r_Binary_reg_n_0_[11] ;
  wire \r_Binary_reg_n_0_[12] ;
  wire \r_Binary_reg_n_0_[13] ;
  wire \r_Binary_reg_n_0_[14] ;
  wire \r_Binary_reg_n_0_[15] ;
  wire \r_Binary_reg_n_0_[16] ;
  wire \r_Binary_reg_n_0_[17] ;
  wire \r_Binary_reg_n_0_[18] ;
  wire \r_Binary_reg_n_0_[19] ;
  wire \r_Binary_reg_n_0_[1] ;
  wire \r_Binary_reg_n_0_[20] ;
  wire \r_Binary_reg_n_0_[21] ;
  wire \r_Binary_reg_n_0_[22] ;
  wire \r_Binary_reg_n_0_[23] ;
  wire \r_Binary_reg_n_0_[24] ;
  wire \r_Binary_reg_n_0_[25] ;
  wire \r_Binary_reg_n_0_[26] ;
  wire \r_Binary_reg_n_0_[27] ;
  wire \r_Binary_reg_n_0_[28] ;
  wire \r_Binary_reg_n_0_[29] ;
  wire \r_Binary_reg_n_0_[2] ;
  wire \r_Binary_reg_n_0_[30] ;
  wire \r_Binary_reg_n_0_[31] ;
  wire \r_Binary_reg_n_0_[3] ;
  wire \r_Binary_reg_n_0_[4] ;
  wire \r_Binary_reg_n_0_[5] ;
  wire \r_Binary_reg_n_0_[6] ;
  wire \r_Binary_reg_n_0_[7] ;
  wire \r_Binary_reg_n_0_[8] ;
  wire \r_Binary_reg_n_0_[9] ;
  wire r_DV_i_1_n_0;
  wire r_DV_reg_0;
  wire [7:0]r_Digit_Index;
  wire \r_Digit_Index[5]_i_2_n_0 ;
  wire \r_Digit_Index[7]_i_1_n_0 ;
  wire \r_Digit_Index[7]_i_3_n_0 ;
  wire \r_Digit_Index_reg_n_0_[0] ;
  wire \r_Digit_Index_reg_n_0_[1] ;
  wire \r_Digit_Index_reg_n_0_[2] ;
  wire \r_Digit_Index_reg_n_0_[3] ;
  wire \r_Digit_Index_reg_n_0_[4] ;
  wire \r_Digit_Index_reg_n_0_[5] ;
  wire \r_Digit_Index_reg_n_0_[6] ;
  wire \r_Digit_Index_reg_n_0_[7] ;
  wire [7:0]r_Loop_Count;
  wire \r_Loop_Count[5]_i_2_n_0 ;
  wire \r_Loop_Count[7]_i_1_n_0 ;
  wire \r_Loop_Count[7]_i_3_n_0 ;
  wire \r_Loop_Count_reg_n_0_[0] ;
  wire \r_Loop_Count_reg_n_0_[1] ;
  wire \r_Loop_Count_reg_n_0_[2] ;
  wire \r_Loop_Count_reg_n_0_[3] ;
  wire \r_Loop_Count_reg_n_0_[4] ;
  wire \r_Loop_Count_reg_n_0_[5] ;
  wire \r_Loop_Count_reg_n_0_[6] ;
  wire \r_Loop_Count_reg_n_0_[7] ;
  wire r_OV_i_1_n_0;
  wire r_OV_reg_0;
  wire \r_SM_Main[1]_i_3_n_0 ;
  wire \r_SM_Main[1]_i_4_n_0 ;
  wire \r_SM_Main[1]_i_5_n_0 ;
  wire \r_SM_Main[2]_i_2_n_0 ;
  wire \r_SM_Main[2]_i_3_n_0 ;
  wire [1:1]r_SM_Main__0;
  wire [1:1]r_SM_Main__6;
  wire \r_SM_Main_reg_n_0_[2] ;
  wire \refresh_counter_reg[18] ;
  wire \refresh_counter_reg[18]_0 ;
  wire s00_axi_aclk;
  wire [1:0]state;
  wire [3:0]w_BCD_Digit__44;

  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(done),
        .I1(state[1]),
        .I2(state[0]),
        .O(r_DV_reg_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[0]_i_3 
       (.I0(bcd[20]),
        .I1(bcd[28]),
        .I2(bcd[16]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[24]),
        .O(\r_BCD_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[0]_i_5 
       (.I0(bcd[4]),
        .I1(bcd[12]),
        .I2(bcd[0]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[8]),
        .O(\r_BCD_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[1]_i_3 
       (.I0(bcd[21]),
        .I1(bcd[29]),
        .I2(bcd[17]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[25]),
        .O(\r_BCD_reg[21]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[1]_i_5 
       (.I0(bcd[5]),
        .I1(bcd[13]),
        .I2(bcd[1]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[9]),
        .O(\r_BCD_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[2]_i_3 
       (.I0(bcd[22]),
        .I1(bcd[30]),
        .I2(bcd[18]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[26]),
        .O(\r_BCD_reg[22]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[2]_i_5 
       (.I0(bcd[6]),
        .I1(bcd[14]),
        .I2(bcd[2]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[10]),
        .O(\r_BCD_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[3]_i_3 
       (.I0(bcd[23]),
        .I1(bcd[31]),
        .I2(bcd[19]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[27]),
        .O(\r_BCD_reg[23]_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[3]_i_5 
       (.I0(bcd[7]),
        .I1(bcd[15]),
        .I2(bcd[3]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(bcd[11]),
        .O(\r_BCD_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    \anode[7]_i_10 
       (.I0(\anode[7]_i_17_n_0 ),
        .I1(\anode[7]_i_16_n_0 ),
        .I2(\anode[7]_i_25_n_0 ),
        .I3(\anode[7]_i_4_0 ),
        .I4(\anode[7]_i_4_2 ),
        .I5(\anode[7]_i_4_3 ),
        .O(\leading_zero[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \anode[7]_i_11 
       (.I0(\r_BCD_reg[31]_0 ),
        .I1(bcd[24]),
        .I2(bcd[25]),
        .I3(bcd[27]),
        .I4(bcd[26]),
        .O(\r_BCD_reg[24]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode[7]_i_12 
       (.I0(bcd[31]),
        .I1(bcd[30]),
        .I2(bcd[29]),
        .I3(bcd[28]),
        .O(\r_BCD_reg[31]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode[7]_i_15 
       (.I0(bcd[15]),
        .I1(bcd[14]),
        .I2(bcd[13]),
        .I3(bcd[12]),
        .O(\anode[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \anode[7]_i_16 
       (.I0(\anode[7]_i_9_0 ),
        .I1(\anode[7]_i_27_n_0 ),
        .I2(bcd[19]),
        .I3(bcd[18]),
        .I4(\anode[7]_i_28_n_0 ),
        .I5(\anode[7]_i_29_n_0 ),
        .O(\anode[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \anode[7]_i_17 
       (.I0(\anode[7]_i_15_n_0 ),
        .I1(bcd[8]),
        .I2(bcd[9]),
        .I3(bcd[11]),
        .I4(bcd[10]),
        .O(\anode[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \anode[7]_i_21 
       (.I0(\anode[7]_i_9_0 ),
        .I1(LED_activating_counter[0]),
        .I2(bcd[20]),
        .I3(bcd[21]),
        .I4(bcd[22]),
        .I5(bcd[23]),
        .O(\anode[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \anode[7]_i_23 
       (.I0(bcd[2]),
        .I1(bcd[3]),
        .I2(bcd[1]),
        .I3(bcd[0]),
        .I4(LED_activating_counter[0]),
        .I5(\anode[7]_i_25_n_0 ),
        .O(\anode[7]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode[7]_i_25 
       (.I0(bcd[7]),
        .I1(bcd[6]),
        .I2(bcd[5]),
        .I3(bcd[4]),
        .O(\anode[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \anode[7]_i_27 
       (.I0(bcd[17]),
        .I1(bcd[16]),
        .I2(bcd[20]),
        .I3(bcd[21]),
        .I4(bcd[22]),
        .I5(bcd[23]),
        .O(\anode[7]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \anode[7]_i_28 
       (.I0(bcd[26]),
        .I1(bcd[27]),
        .O(\anode[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \anode[7]_i_29 
       (.I0(bcd[25]),
        .I1(bcd[24]),
        .I2(bcd[28]),
        .I3(bcd[29]),
        .I4(bcd[30]),
        .I5(bcd[31]),
        .O(\anode[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000FCCC)) 
    \anode[7]_i_4 
       (.I0(\anode[7]_i_8_n_0 ),
        .I1(\anode[7]_i_9_n_0 ),
        .I2(LED_activating_counter[0]),
        .I3(\leading_zero[1]_0 ),
        .I4(LED_activating_counter[1]),
        .I5(LED_activating_counter[2]),
        .O(\refresh_counter_reg[18] ));
  LUT4 #(
    .INIT(16'h440C)) 
    \anode[7]_i_6 
       (.I0(\anode[7]_i_15_n_0 ),
        .I1(\anode[7]_i_16_n_0 ),
        .I2(\anode[7]_i_17_n_0 ),
        .I3(LED_activating_counter[0]),
        .O(\refresh_counter_reg[18]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0C0CFFAE)) 
    \anode[7]_i_8 
       (.I0(\anode[7]_i_16_n_0 ),
        .I1(\anode[7]_i_21_n_0 ),
        .I2(\r_BCD_reg[24]_0 ),
        .I3(\anode[7]_i_4_2 ),
        .I4(LED_activating_counter[0]),
        .I5(\anode[7]_i_4_4 ),
        .O(\anode[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \anode[7]_i_9 
       (.I0(\anode[7]_i_17_n_0 ),
        .I1(\anode[7]_i_23_n_0 ),
        .I2(\anode[7]_i_16_n_0 ),
        .I3(\anode[7]_i_4_0 ),
        .I4(\anode[7]_i_4_1 ),
        .I5(\anode[7]_i_4_2 ),
        .O(\anode[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h08080000FF000000)) 
    \r_BCD[0]_i_1 
       (.I0(\r_BCD[0]_i_2_n_0 ),
        .I1(\r_BCD[24]_i_2_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[3] ),
        .I3(\r_Binary_reg_n_0_[31] ),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_BCD[0]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[10]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[9]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \r_BCD[11]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_3_n_0 ),
        .I3(\r_BCD[31]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[11]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[11]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[10]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[11]));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \r_BCD[12]_i_1 
       (.I0(\r_BCD[28]_i_2_n_0 ),
        .I1(\r_BCD[15]_i_3_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(bcd[11]),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[12]));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \r_BCD[13]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[12]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[13]));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \r_BCD[14]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[13]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \r_BCD[15]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_3_n_0 ),
        .I3(\r_BCD[31]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[15]));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \r_BCD[15]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[14]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \r_BCD[15]_i_3 
       (.I0(r_SM_Main__0),
        .I1(Q),
        .I2(\r_Digit_Index_reg_n_0_[3] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \r_BCD[16]_i_1 
       (.I0(\r_BCD[24]_i_2_n_0 ),
        .I1(\r_BCD[31]_i_7_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(bcd[15]),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[16]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \r_BCD[17]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[16]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[17]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \r_BCD[18]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[17]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \r_BCD[19]_i_1 
       (.I0(\r_BCD[19]_i_3_n_0 ),
        .I1(Q),
        .I2(\r_Digit_Index_reg_n_0_[3] ),
        .I3(\r_BCD[19]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[19]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \r_BCD[19]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[18]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[19]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_BCD[19]_i_3 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_Digit_Index_reg_n_0_[6] ),
        .I3(\r_Digit_Index_reg_n_0_[7] ),
        .I4(\r_Digit_Index_reg_n_0_[4] ),
        .I5(\r_Digit_Index_reg_n_0_[5] ),
        .O(\r_BCD[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FEAA)) 
    \r_BCD[19]_i_4 
       (.I0(w_BCD_Digit__44[3]),
        .I1(w_BCD_Digit__44[0]),
        .I2(w_BCD_Digit__44[1]),
        .I3(w_BCD_Digit__44[2]),
        .I4(\r_SM_Main_reg_n_0_[2] ),
        .O(\r_BCD[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \r_BCD[1]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[0]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[1]));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \r_BCD[20]_i_1 
       (.I0(\r_BCD[28]_i_2_n_0 ),
        .I1(\r_BCD[31]_i_7_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(bcd[19]),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[20]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[21]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[20]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[21]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[22]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[21]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \r_BCD[23]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[31]_i_3_n_0 ),
        .I3(\r_BCD[31]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[23]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[23]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[22]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[23]));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \r_BCD[24]_i_1 
       (.I0(\r_BCD[24]_i_2_n_0 ),
        .I1(\r_BCD[31]_i_7_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(bcd[23]),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[24]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_BCD[24]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[5] ),
        .I2(\r_Digit_Index_reg_n_0_[4] ),
        .I3(\r_Digit_Index_reg_n_0_[7] ),
        .I4(\r_Digit_Index_reg_n_0_[6] ),
        .I5(w_BCD_Digit__44[0]),
        .O(\r_BCD[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[25]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[24]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[25]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[26]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[25]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \r_BCD[27]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_3_n_0 ),
        .I3(\r_BCD[31]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[27]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[27]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[26]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[27]));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \r_BCD[28]_i_1 
       (.I0(\r_BCD[28]_i_2_n_0 ),
        .I1(\r_BCD[31]_i_7_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(bcd[27]),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[28]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \r_BCD[28]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[5] ),
        .I2(\r_Digit_Index_reg_n_0_[4] ),
        .I3(\r_Digit_Index_reg_n_0_[7] ),
        .I4(\r_Digit_Index_reg_n_0_[6] ),
        .I5(w_BCD_Digit__44[0]),
        .O(\r_BCD[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \r_BCD[29]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[28]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[29]));
  LUT6 #(
    .INIT(64'h0000000000000009)) 
    \r_BCD[29]_i_2 
       (.I0(w_BCD_Digit__44[1]),
        .I1(w_BCD_Digit__44[0]),
        .I2(\r_Digit_Index_reg_n_0_[5] ),
        .I3(\r_Digit_Index_reg_n_0_[4] ),
        .I4(\r_Digit_Index_reg_n_0_[7] ),
        .I5(\r_Digit_Index_reg_n_0_[6] ),
        .O(\r_BCD[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \r_BCD[2]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[1]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[2]));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \r_BCD[30]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[29]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5600)) 
    \r_BCD[30]_i_2 
       (.I0(w_BCD_Digit__44[2]),
        .I1(w_BCD_Digit__44[0]),
        .I2(w_BCD_Digit__44[1]),
        .I3(\r_BCD[31]_i_3_n_0 ),
        .O(\r_BCD[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \r_BCD[31]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_3_n_0 ),
        .I3(\r_BCD[31]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[31]));
  LUT5 #(
    .INIT(32'h0000111F)) 
    \r_BCD[31]_i_10 
       (.I0(\r_BCD[31]_i_18_n_0 ),
        .I1(\r_BCD[31]_i_19_n_0 ),
        .I2(\r_BCD[31]_i_20_n_0 ),
        .I3(\r_BCD[31]_i_21_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[3] ),
        .O(w_BCD_Digit__44[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \r_BCD[31]_i_11 
       (.I0(\r_BCD[31]_i_22_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[3] ),
        .I2(\r_Digit_Index_reg_n_0_[0] ),
        .I3(\r_BCD[31]_i_23_n_0 ),
        .O(w_BCD_Digit__44[0]));
  LUT5 #(
    .INIT(32'h0000111F)) 
    \r_BCD[31]_i_12 
       (.I0(\r_BCD[31]_i_24_n_0 ),
        .I1(\r_BCD[31]_i_25_n_0 ),
        .I2(\r_BCD[31]_i_26_n_0 ),
        .I3(\r_BCD[31]_i_27_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[3] ),
        .O(w_BCD_Digit__44[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_BCD[31]_i_13 
       (.I0(Q),
        .I1(\r_Digit_Index_reg_n_0_[3] ),
        .O(\r_BCD[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h5F555577)) 
    \r_BCD[31]_i_14 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(bcd[6]),
        .I2(bcd[30]),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0530)) 
    \r_BCD[31]_i_15 
       (.I0(bcd[22]),
        .I1(bcd[14]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hAFAAAABB)) 
    \r_BCD[31]_i_16 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(bcd[2]),
        .I2(bcd[26]),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0530)) 
    \r_BCD[31]_i_17 
       (.I0(bcd[18]),
        .I1(bcd[10]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h5F555577)) 
    \r_BCD[31]_i_18 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(bcd[5]),
        .I2(bcd[29]),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0530)) 
    \r_BCD[31]_i_19 
       (.I0(bcd[21]),
        .I1(bcd[13]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \r_BCD[31]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[31]_i_7_n_0 ),
        .I4(bcd[30]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAFAAAABB)) 
    \r_BCD[31]_i_20 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(bcd[1]),
        .I2(bcd[25]),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0530)) 
    \r_BCD[31]_i_21 
       (.I0(bcd[17]),
        .I1(bcd[9]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \r_BCD[31]_i_22 
       (.I0(bcd[20]),
        .I1(bcd[28]),
        .I2(\r_Digit_Index_reg_n_0_[2] ),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(bcd[4]),
        .I5(bcd[12]),
        .O(\r_BCD[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFAEAAAEA)) 
    \r_BCD[31]_i_23 
       (.I0(\r_BCD[31]_i_28_n_0 ),
        .I1(bcd[8]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .I4(bcd[24]),
        .I5(\r_Digit_Index_reg_n_0_[3] ),
        .O(\r_BCD[31]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h5F555577)) 
    \r_BCD[31]_i_24 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(bcd[7]),
        .I2(bcd[31]),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h0530)) 
    \r_BCD[31]_i_25 
       (.I0(bcd[23]),
        .I1(bcd[15]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hAFAAAABB)) 
    \r_BCD[31]_i_26 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(bcd[3]),
        .I2(bcd[27]),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h0530)) 
    \r_BCD[31]_i_27 
       (.I0(bcd[19]),
        .I1(bcd[11]),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h000000003B0B3808)) 
    \r_BCD[31]_i_28 
       (.I0(p_0_in),
        .I1(\r_Digit_Index_reg_n_0_[3] ),
        .I2(\r_Digit_Index_reg_n_0_[2] ),
        .I3(bcd[16]),
        .I4(bcd[0]),
        .I5(\r_Digit_Index_reg_n_0_[1] ),
        .O(\r_BCD[31]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \r_BCD[31]_i_3 
       (.I0(\r_Digit_Index_reg_n_0_[5] ),
        .I1(\r_Digit_Index_reg_n_0_[4] ),
        .I2(\r_Digit_Index_reg_n_0_[7] ),
        .I3(\r_Digit_Index_reg_n_0_[6] ),
        .O(\r_BCD[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555444000000000)) 
    \r_BCD[31]_i_4 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(w_BCD_Digit__44[2]),
        .I2(w_BCD_Digit__44[1]),
        .I3(w_BCD_Digit__44[0]),
        .I4(w_BCD_Digit__44[3]),
        .I5(\r_BCD[31]_i_13_n_0 ),
        .O(\r_BCD[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0032)) 
    \r_BCD[31]_i_5 
       (.I0(r_OV_reg_0),
        .I1(r_SM_Main__0),
        .I2(Q),
        .I3(\r_SM_Main_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h56AA0000)) 
    \r_BCD[31]_i_6 
       (.I0(w_BCD_Digit__44[3]),
        .I1(w_BCD_Digit__44[1]),
        .I2(w_BCD_Digit__44[0]),
        .I3(w_BCD_Digit__44[2]),
        .I4(\r_BCD[31]_i_3_n_0 ),
        .O(\r_BCD[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \r_BCD[31]_i_7 
       (.I0(r_SM_Main__0),
        .I1(Q),
        .I2(\r_Digit_Index_reg_n_0_[3] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_BCD[31]_i_8 
       (.I0(Q),
        .I1(r_SM_Main__0),
        .O(\r_BCD[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0000111F)) 
    \r_BCD[31]_i_9 
       (.I0(\r_BCD[31]_i_14_n_0 ),
        .I1(\r_BCD[31]_i_15_n_0 ),
        .I2(\r_BCD[31]_i_16_n_0 ),
        .I3(\r_BCD[31]_i_17_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[3] ),
        .O(w_BCD_Digit__44[2]));
  LUT6 #(
    .INIT(64'hEEEEEFFFEEEEE000)) 
    \r_BCD[32]_i_1 
       (.I0(\r_BCD[32]_i_2_n_0 ),
        .I1(\r_BCD[32]_i_3_n_0 ),
        .I2(\r_BCD[19]_i_4_n_0 ),
        .I3(\r_BCD[32]_i_4_n_0 ),
        .I4(\r_BCD[31]_i_5_n_0 ),
        .I5(p_0_in),
        .O(\r_BCD[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \r_BCD[32]_i_2 
       (.I0(\r_BCD[32]_i_5_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[31]_i_3_n_0 ),
        .I3(w_BCD_Digit__44[0]),
        .I4(\r_Digit_Index_reg_n_0_[1] ),
        .I5(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_BCD[32]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \r_BCD[32]_i_3 
       (.I0(r_SM_Main__0),
        .I1(Q),
        .I2(bcd[31]),
        .O(\r_BCD[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \r_BCD[32]_i_4 
       (.I0(\r_Digit_Index_reg_n_0_[2] ),
        .I1(\r_Digit_Index_reg_n_0_[3] ),
        .I2(Q),
        .I3(\r_BCD[31]_i_3_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[1] ),
        .I5(\r_Digit_Index_reg_n_0_[0] ),
        .O(\r_BCD[32]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_BCD[32]_i_5 
       (.I0(r_SM_Main__0),
        .I1(Q),
        .I2(\r_Digit_Index_reg_n_0_[3] ),
        .O(\r_BCD[32]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000800)) 
    \r_BCD[3]_i_1 
       (.I0(\r_BCD[19]_i_3_n_0 ),
        .I1(Q),
        .I2(\r_Digit_Index_reg_n_0_[3] ),
        .I3(\r_BCD[19]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[3]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \r_BCD[3]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[2]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[3]));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \r_BCD[4]_i_1 
       (.I0(\r_BCD[28]_i_2_n_0 ),
        .I1(\r_BCD[15]_i_3_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(bcd[3]),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[4]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[5]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[4]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[5]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[6]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[30]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[5]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \r_BCD[7]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[31]_i_3_n_0 ),
        .I3(\r_BCD[31]_i_4_n_0 ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_BCD[31]_i_5_n_0 ),
        .O(r_BCD[7]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[7]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_BCD[31]_i_6_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[6]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[7]));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \r_BCD[8]_i_1 
       (.I0(\r_BCD[24]_i_2_n_0 ),
        .I1(\r_BCD[15]_i_3_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(bcd[7]),
        .I4(Q),
        .I5(r_SM_Main__0),
        .O(r_BCD0_in[8]));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \r_BCD[9]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[0] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_BCD[29]_i_2_n_0 ),
        .I3(\r_BCD[15]_i_3_n_0 ),
        .I4(bcd[8]),
        .I5(\r_BCD[31]_i_8_n_0 ),
        .O(r_BCD0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[0]),
        .Q(bcd[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[10] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[10]),
        .Q(bcd[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[11] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[11]),
        .Q(bcd[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[12] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[12]),
        .Q(bcd[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[13] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[13]),
        .Q(bcd[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[14] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[14]),
        .Q(bcd[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[15] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[15]),
        .D(r_BCD0_in[15]),
        .Q(bcd[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[16] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[19]),
        .D(r_BCD0_in[16]),
        .Q(bcd[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[17] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[19]),
        .D(r_BCD0_in[17]),
        .Q(bcd[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[18] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[19]),
        .D(r_BCD0_in[18]),
        .Q(bcd[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[19] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[19]),
        .D(r_BCD0_in[19]),
        .Q(bcd[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[1]),
        .Q(bcd[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[20] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[23]),
        .D(r_BCD0_in[20]),
        .Q(bcd[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[21] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[23]),
        .D(r_BCD0_in[21]),
        .Q(bcd[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[22] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[23]),
        .D(r_BCD0_in[22]),
        .Q(bcd[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[23] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[23]),
        .D(r_BCD0_in[23]),
        .Q(bcd[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[24] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[27]),
        .D(r_BCD0_in[24]),
        .Q(bcd[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[25] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[27]),
        .D(r_BCD0_in[25]),
        .Q(bcd[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[26] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[27]),
        .D(r_BCD0_in[26]),
        .Q(bcd[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[27] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[27]),
        .D(r_BCD0_in[27]),
        .Q(bcd[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[28] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[31]),
        .D(r_BCD0_in[28]),
        .Q(bcd[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[29] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[31]),
        .D(r_BCD0_in[29]),
        .Q(bcd[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[2]),
        .Q(bcd[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[30] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[31]),
        .D(r_BCD0_in[30]),
        .Q(bcd[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[31] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[31]),
        .D(r_BCD0_in[31]),
        .Q(bcd[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[32] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\r_BCD[32]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[3]),
        .D(r_BCD0_in[3]),
        .Q(bcd[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[4]),
        .Q(bcd[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[5]),
        .Q(bcd[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[6]),
        .Q(bcd[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[7]),
        .D(r_BCD0_in[7]),
        .Q(bcd[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[8] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[8]),
        .Q(bcd[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_BCD_reg[9] 
       (.C(s00_axi_aclk),
        .CE(r_BCD[11]),
        .D(r_BCD0_in[9]),
        .Q(bcd[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[10]_i_1 
       (.I0(\r_Binary_reg_n_0_[9] ),
        .I1(Q),
        .I2(D[9]),
        .O(\r_Binary[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[11]_i_1 
       (.I0(\r_Binary_reg_n_0_[10] ),
        .I1(Q),
        .I2(D[10]),
        .O(\r_Binary[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[12]_i_1 
       (.I0(\r_Binary_reg_n_0_[11] ),
        .I1(Q),
        .I2(D[11]),
        .O(\r_Binary[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[13]_i_1 
       (.I0(\r_Binary_reg_n_0_[12] ),
        .I1(Q),
        .I2(D[12]),
        .O(\r_Binary[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[14]_i_1 
       (.I0(\r_Binary_reg_n_0_[13] ),
        .I1(Q),
        .I2(D[13]),
        .O(\r_Binary[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[15]_i_1 
       (.I0(\r_Binary_reg_n_0_[14] ),
        .I1(Q),
        .I2(D[14]),
        .O(\r_Binary[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[16]_i_1 
       (.I0(\r_Binary_reg_n_0_[15] ),
        .I1(Q),
        .I2(D[15]),
        .O(\r_Binary[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[17]_i_1 
       (.I0(\r_Binary_reg_n_0_[16] ),
        .I1(Q),
        .I2(D[16]),
        .O(\r_Binary[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[18]_i_1 
       (.I0(\r_Binary_reg_n_0_[17] ),
        .I1(Q),
        .I2(D[17]),
        .O(\r_Binary[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[19]_i_1 
       (.I0(\r_Binary_reg_n_0_[18] ),
        .I1(Q),
        .I2(D[18]),
        .O(\r_Binary[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[1]_i_1 
       (.I0(\r_Binary_reg_n_0_[0] ),
        .I1(Q),
        .I2(D[0]),
        .O(\r_Binary[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[20]_i_1 
       (.I0(\r_Binary_reg_n_0_[19] ),
        .I1(Q),
        .I2(D[19]),
        .O(\r_Binary[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[21]_i_1 
       (.I0(\r_Binary_reg_n_0_[20] ),
        .I1(Q),
        .I2(D[20]),
        .O(\r_Binary[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[22]_i_1 
       (.I0(\r_Binary_reg_n_0_[21] ),
        .I1(Q),
        .I2(D[21]),
        .O(\r_Binary[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[23]_i_1 
       (.I0(\r_Binary_reg_n_0_[22] ),
        .I1(Q),
        .I2(D[22]),
        .O(\r_Binary[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[24]_i_1 
       (.I0(\r_Binary_reg_n_0_[23] ),
        .I1(Q),
        .I2(D[23]),
        .O(\r_Binary[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[25]_i_1 
       (.I0(\r_Binary_reg_n_0_[24] ),
        .I1(Q),
        .I2(D[24]),
        .O(\r_Binary[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[26]_i_1 
       (.I0(\r_Binary_reg_n_0_[25] ),
        .I1(Q),
        .I2(D[25]),
        .O(\r_Binary[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[27]_i_1 
       (.I0(\r_Binary_reg_n_0_[26] ),
        .I1(Q),
        .I2(D[26]),
        .O(\r_Binary[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[28]_i_1 
       (.I0(\r_Binary_reg_n_0_[27] ),
        .I1(Q),
        .I2(D[27]),
        .O(\r_Binary[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[29]_i_1 
       (.I0(\r_Binary_reg_n_0_[28] ),
        .I1(Q),
        .I2(D[28]),
        .O(\r_Binary[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[2]_i_1 
       (.I0(\r_Binary_reg_n_0_[1] ),
        .I1(Q),
        .I2(D[1]),
        .O(\r_Binary[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[30]_i_1 
       (.I0(\r_Binary_reg_n_0_[29] ),
        .I1(Q),
        .I2(D[29]),
        .O(\r_Binary[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \r_Binary[31]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(r_SM_Main__0),
        .I2(r_OV_reg_0),
        .I3(Q),
        .O(r_Binary));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[31]_i_2 
       (.I0(\r_Binary_reg_n_0_[30] ),
        .I1(Q),
        .I2(D[30]),
        .O(\r_Binary[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[3]_i_1 
       (.I0(\r_Binary_reg_n_0_[2] ),
        .I1(Q),
        .I2(D[2]),
        .O(\r_Binary[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[4]_i_1 
       (.I0(\r_Binary_reg_n_0_[3] ),
        .I1(Q),
        .I2(D[3]),
        .O(\r_Binary[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[5]_i_1 
       (.I0(\r_Binary_reg_n_0_[4] ),
        .I1(Q),
        .I2(D[4]),
        .O(\r_Binary[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[6]_i_1 
       (.I0(\r_Binary_reg_n_0_[5] ),
        .I1(Q),
        .I2(D[5]),
        .O(\r_Binary[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[7]_i_1 
       (.I0(\r_Binary_reg_n_0_[6] ),
        .I1(Q),
        .I2(D[6]),
        .O(\r_Binary[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[8]_i_1 
       (.I0(\r_Binary_reg_n_0_[7] ),
        .I1(Q),
        .I2(D[7]),
        .O(\r_Binary[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_Binary[9]_i_1 
       (.I0(\r_Binary_reg_n_0_[8] ),
        .I1(Q),
        .I2(D[8]),
        .O(\r_Binary[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[0] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary_reg[0]_0 ),
        .Q(\r_Binary_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[10] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[10]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[11] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[11]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[12] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[12]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[13] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[13]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[14] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[14]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[15] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[15]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[16] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[16]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[17] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[17]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[18] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[18]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[19] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[19]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[1] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[1]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[20] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[20]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[21] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[21]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[22] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[22]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[23] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[23]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[24] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[24]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[25] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[25]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[26] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[26]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[27] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[27]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[28] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[28]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[29] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[29]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[2] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[2]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[30] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[30]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[31] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[31]_i_2_n_0 ),
        .Q(\r_Binary_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[3] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[3]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[4] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[4]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[5] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[5]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[6] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[6]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[7] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[7]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[8] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[8]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Binary_reg[9] 
       (.C(s00_axi_aclk),
        .CE(r_Binary),
        .D(\r_Binary[9]_i_1_n_0 ),
        .Q(\r_Binary_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE40)) 
    r_DV_i_1
       (.I0(r_SM_Main__0),
        .I1(Q),
        .I2(\r_SM_Main_reg_n_0_[2] ),
        .I3(done),
        .O(r_DV_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_DV_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_DV_i_1_n_0),
        .Q(done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_Digit_Index[0]_i_1 
       (.I0(\r_SM_Main[1]_i_3_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .O(r_Digit_Index[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_Digit_Index[1]_i_1 
       (.I0(\r_SM_Main[1]_i_3_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .O(r_Digit_Index[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_Digit_Index[2]_i_1 
       (.I0(\r_SM_Main[1]_i_3_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .O(r_Digit_Index[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_Digit_Index[3]_i_1 
       (.I0(\r_SM_Main[1]_i_3_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_Digit_Index_reg_n_0_[0] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .I4(\r_Digit_Index_reg_n_0_[3] ),
        .O(r_Digit_Index[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_Digit_Index[4]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[3] ),
        .I1(\r_Digit_Index_reg_n_0_[1] ),
        .I2(\r_Digit_Index_reg_n_0_[0] ),
        .I3(\r_Digit_Index_reg_n_0_[2] ),
        .I4(\r_SM_Main[1]_i_3_n_0 ),
        .I5(\r_Digit_Index_reg_n_0_[4] ),
        .O(r_Digit_Index[4]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_Digit_Index[5]_i_1 
       (.I0(\r_Digit_Index_reg_n_0_[4] ),
        .I1(\r_Digit_Index_reg_n_0_[2] ),
        .I2(\r_Digit_Index[5]_i_2_n_0 ),
        .I3(\r_Digit_Index_reg_n_0_[3] ),
        .I4(\r_SM_Main[1]_i_3_n_0 ),
        .I5(\r_Digit_Index_reg_n_0_[5] ),
        .O(r_Digit_Index[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_Digit_Index[5]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[1] ),
        .I1(\r_Digit_Index_reg_n_0_[0] ),
        .O(\r_Digit_Index[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_Digit_Index[6]_i_1 
       (.I0(\r_Digit_Index[7]_i_3_n_0 ),
        .I1(\r_SM_Main[1]_i_3_n_0 ),
        .I2(\r_Digit_Index_reg_n_0_[6] ),
        .O(r_Digit_Index[6]));
  LUT3 #(
    .INIT(8'h04)) 
    \r_Digit_Index[7]_i_1 
       (.I0(r_SM_Main__0),
        .I1(\r_SM_Main_reg_n_0_[2] ),
        .I2(Q),
        .O(\r_Digit_Index[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_Digit_Index[7]_i_2 
       (.I0(\r_Digit_Index_reg_n_0_[6] ),
        .I1(\r_Digit_Index[7]_i_3_n_0 ),
        .I2(\r_SM_Main[1]_i_3_n_0 ),
        .I3(\r_Digit_Index_reg_n_0_[7] ),
        .O(r_Digit_Index[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_Digit_Index[7]_i_3 
       (.I0(\r_Digit_Index_reg_n_0_[5] ),
        .I1(\r_Digit_Index_reg_n_0_[3] ),
        .I2(\r_Digit_Index_reg_n_0_[1] ),
        .I3(\r_Digit_Index_reg_n_0_[0] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .I5(\r_Digit_Index_reg_n_0_[4] ),
        .O(\r_Digit_Index[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[0]),
        .Q(\r_Digit_Index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[1]),
        .Q(\r_Digit_Index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[2]),
        .Q(\r_Digit_Index_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[3]),
        .Q(\r_Digit_Index_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[4]),
        .Q(\r_Digit_Index_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[5]),
        .Q(\r_Digit_Index_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[6]),
        .Q(\r_Digit_Index_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Digit_Index_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\r_Digit_Index[7]_i_1_n_0 ),
        .D(r_Digit_Index[7]),
        .Q(\r_Digit_Index_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \r_Loop_Count[0]_i_1 
       (.I0(r_SM_Main__6),
        .I1(\r_Loop_Count_reg_n_0_[0] ),
        .O(r_Loop_Count[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \r_Loop_Count[1]_i_1 
       (.I0(r_SM_Main__6),
        .I1(\r_Loop_Count_reg_n_0_[0] ),
        .I2(\r_Loop_Count_reg_n_0_[1] ),
        .O(r_Loop_Count[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \r_Loop_Count[2]_i_1 
       (.I0(r_SM_Main__6),
        .I1(\r_Loop_Count_reg_n_0_[0] ),
        .I2(\r_Loop_Count_reg_n_0_[1] ),
        .I3(\r_Loop_Count_reg_n_0_[2] ),
        .O(r_Loop_Count[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \r_Loop_Count[3]_i_1 
       (.I0(r_SM_Main__6),
        .I1(\r_Loop_Count_reg_n_0_[0] ),
        .I2(\r_Loop_Count_reg_n_0_[1] ),
        .I3(\r_Loop_Count_reg_n_0_[2] ),
        .I4(\r_Loop_Count_reg_n_0_[3] ),
        .O(r_Loop_Count[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \r_Loop_Count[4]_i_1 
       (.I0(\r_Loop_Count_reg_n_0_[3] ),
        .I1(\r_Loop_Count_reg_n_0_[0] ),
        .I2(\r_Loop_Count_reg_n_0_[1] ),
        .I3(\r_Loop_Count_reg_n_0_[2] ),
        .I4(r_SM_Main__6),
        .I5(\r_Loop_Count_reg_n_0_[4] ),
        .O(r_Loop_Count[4]));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \r_Loop_Count[5]_i_1 
       (.I0(\r_Loop_Count_reg_n_0_[4] ),
        .I1(\r_Loop_Count_reg_n_0_[2] ),
        .I2(\r_Loop_Count[5]_i_2_n_0 ),
        .I3(\r_Loop_Count_reg_n_0_[3] ),
        .I4(r_SM_Main__6),
        .I5(\r_Loop_Count_reg_n_0_[5] ),
        .O(r_Loop_Count[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_Loop_Count[5]_i_2 
       (.I0(\r_Loop_Count_reg_n_0_[1] ),
        .I1(\r_Loop_Count_reg_n_0_[0] ),
        .O(\r_Loop_Count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \r_Loop_Count[6]_i_1 
       (.I0(\r_Loop_Count[7]_i_3_n_0 ),
        .I1(r_SM_Main__6),
        .I2(\r_Loop_Count_reg_n_0_[6] ),
        .O(r_Loop_Count[6]));
  LUT3 #(
    .INIT(8'h10)) 
    \r_Loop_Count[7]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(Q),
        .I2(r_SM_Main__0),
        .O(\r_Loop_Count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \r_Loop_Count[7]_i_2 
       (.I0(\r_Loop_Count_reg_n_0_[6] ),
        .I1(\r_Loop_Count[7]_i_3_n_0 ),
        .I2(r_SM_Main__6),
        .I3(\r_Loop_Count_reg_n_0_[7] ),
        .O(r_Loop_Count[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_Loop_Count[7]_i_3 
       (.I0(\r_Loop_Count_reg_n_0_[5] ),
        .I1(\r_Loop_Count_reg_n_0_[3] ),
        .I2(\r_Loop_Count_reg_n_0_[0] ),
        .I3(\r_Loop_Count_reg_n_0_[1] ),
        .I4(\r_Loop_Count_reg_n_0_[2] ),
        .I5(\r_Loop_Count_reg_n_0_[4] ),
        .O(\r_Loop_Count[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[0]),
        .Q(\r_Loop_Count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[1]),
        .Q(\r_Loop_Count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[2]),
        .Q(\r_Loop_Count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[3]),
        .Q(\r_Loop_Count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[4]),
        .Q(\r_Loop_Count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[5]),
        .Q(\r_Loop_Count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[6]),
        .Q(\r_Loop_Count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_Loop_Count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\r_Loop_Count[7]_i_1_n_0 ),
        .D(r_Loop_Count[7]),
        .Q(\r_Loop_Count_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFCFF02020000)) 
    r_OV_i_1
       (.I0(p_0_in),
        .I1(Q),
        .I2(\r_SM_Main_reg_n_0_[2] ),
        .I3(r_OV_reg_0),
        .I4(r_SM_Main__0),
        .I5(overflow),
        .O(r_OV_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    r_OV_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(r_OV_i_1_n_0),
        .Q(overflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0332)) 
    \r_SM_Main[0]_i_1 
       (.I0(r_OV_reg_0),
        .I1(Q),
        .I2(\r_SM_Main_reg_n_0_[2] ),
        .I3(r_SM_Main__0),
        .O(p_0_in__0[0]));
  LUT5 #(
    .INIT(32'h000C0FA0)) 
    \r_SM_Main[1]_i_1 
       (.I0(r_SM_Main__6),
        .I1(\r_SM_Main[1]_i_3_n_0 ),
        .I2(r_SM_Main__0),
        .I3(Q),
        .I4(\r_SM_Main_reg_n_0_[2] ),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \r_SM_Main[1]_i_2 
       (.I0(\r_SM_Main[1]_i_4_n_0 ),
        .I1(\r_Loop_Count_reg_n_0_[7] ),
        .I2(\r_Loop_Count_reg_n_0_[3] ),
        .I3(\r_Loop_Count_reg_n_0_[5] ),
        .I4(\r_Loop_Count_reg_n_0_[6] ),
        .I5(\r_Loop_Count_reg_n_0_[4] ),
        .O(r_SM_Main__6));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_SM_Main[1]_i_3 
       (.I0(\r_SM_Main[1]_i_5_n_0 ),
        .I1(\r_Digit_Index_reg_n_0_[5] ),
        .I2(\r_Digit_Index_reg_n_0_[4] ),
        .I3(\r_Digit_Index_reg_n_0_[6] ),
        .O(\r_SM_Main[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \r_SM_Main[1]_i_4 
       (.I0(\r_Loop_Count_reg_n_0_[0] ),
        .I1(\r_Loop_Count_reg_n_0_[1] ),
        .I2(\r_Loop_Count_reg_n_0_[2] ),
        .O(\r_SM_Main[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \r_SM_Main[1]_i_5 
       (.I0(\r_Digit_Index_reg_n_0_[3] ),
        .I1(\r_Digit_Index_reg_n_0_[7] ),
        .I2(\r_Digit_Index_reg_n_0_[0] ),
        .I3(\r_Digit_Index_reg_n_0_[1] ),
        .I4(\r_Digit_Index_reg_n_0_[2] ),
        .O(\r_SM_Main[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h44404040)) 
    \r_SM_Main[2]_i_1 
       (.I0(\r_SM_Main_reg_n_0_[2] ),
        .I1(r_SM_Main__0),
        .I2(Q),
        .I3(\r_SM_Main[2]_i_2_n_0 ),
        .I4(\r_SM_Main[2]_i_3_n_0 ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \r_SM_Main[2]_i_2 
       (.I0(\r_Loop_Count_reg_n_0_[7] ),
        .I1(\r_Loop_Count_reg_n_0_[6] ),
        .I2(\r_Loop_Count_reg_n_0_[0] ),
        .I3(\r_Loop_Count_reg_n_0_[1] ),
        .O(\r_SM_Main[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \r_SM_Main[2]_i_3 
       (.I0(\r_Loop_Count_reg_n_0_[3] ),
        .I1(\r_Loop_Count_reg_n_0_[2] ),
        .I2(\r_Loop_Count_reg_n_0_[5] ),
        .I3(\r_Loop_Count_reg_n_0_[4] ),
        .O(\r_SM_Main[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(r_SM_Main__0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_SM_Main_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\r_SM_Main_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SevenSegController_v1_0" *) 
module Fast_IP_Clock_SevenSegController_0_0_SevenSegController_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    anode,
    cathode,
    s00_axi_bvalid,
    dp,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output [7:0]anode;
  output [6:0]cathode;
  output s00_axi_bvalid;
  output dp;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [3:0]LED_HEX;
  wire [2:0]LED_activating_counter;
  wire SevenSegController_v1_0_S00_AXI_inst_n_1;
  wire SevenSegController_v1_0_S00_AXI_inst_n_10;
  wire SevenSegController_v1_0_S00_AXI_inst_n_15;
  wire SevenSegController_v1_0_S00_AXI_inst_n_16;
  wire SevenSegController_v1_0_S00_AXI_inst_n_17;
  wire SevenSegController_v1_0_S00_AXI_inst_n_18;
  wire SevenSegController_v1_0_S00_AXI_inst_n_19;
  wire SevenSegController_v1_0_S00_AXI_inst_n_20;
  wire SevenSegController_v1_0_S00_AXI_inst_n_21;
  wire SevenSegController_v1_0_S00_AXI_inst_n_22;
  wire SevenSegController_v1_0_S00_AXI_inst_n_23;
  wire SevenSegController_v1_0_S00_AXI_inst_n_24;
  wire SevenSegController_v1_0_S00_AXI_inst_n_25;
  wire SevenSegController_v1_0_S00_AXI_inst_n_26;
  wire SevenSegController_v1_0_S00_AXI_inst_n_27;
  wire SevenSegController_v1_0_S00_AXI_inst_n_28;
  wire SevenSegController_v1_0_S00_AXI_inst_n_29;
  wire SevenSegController_v1_0_S00_AXI_inst_n_30;
  wire SevenSegController_v1_0_S00_AXI_inst_n_31;
  wire SevenSegController_v1_0_S00_AXI_inst_n_32;
  wire SevenSegController_v1_0_S00_AXI_inst_n_33;
  wire SevenSegController_v1_0_S00_AXI_inst_n_34;
  wire SevenSegController_v1_0_S00_AXI_inst_n_35;
  wire SevenSegController_v1_0_S00_AXI_inst_n_36;
  wire SevenSegController_v1_0_S00_AXI_inst_n_37;
  wire SevenSegController_v1_0_S00_AXI_inst_n_38;
  wire SevenSegController_v1_0_S00_AXI_inst_n_39;
  wire SevenSegController_v1_0_S00_AXI_inst_n_40;
  wire SevenSegController_v1_0_S00_AXI_inst_n_41;
  wire SevenSegController_v1_0_S00_AXI_inst_n_42;
  wire SevenSegController_v1_0_S00_AXI_inst_n_43;
  wire SevenSegController_v1_0_S00_AXI_inst_n_44;
  wire SevenSegController_v1_0_S00_AXI_inst_n_45;
  wire SevenSegController_v1_0_S00_AXI_inst_n_46;
  wire SevenSegController_v1_0_S00_AXI_inst_n_47;
  wire SevenSegController_v1_0_S00_AXI_inst_n_48;
  wire SevenSegController_v1_0_S00_AXI_inst_n_49;
  wire SevenSegController_v1_0_S00_AXI_inst_n_50;
  wire SevenSegController_v1_0_S00_AXI_inst_n_51;
  wire SevenSegController_v1_0_S00_AXI_inst_n_52;
  wire SevenSegController_v1_0_S00_AXI_inst_n_53;
  wire SevenSegController_v1_0_S00_AXI_inst_n_55;
  wire SevenSegController_v1_0_S00_AXI_inst_n_56;
  wire SevenSegController_v1_0_S00_AXI_inst_n_57;
  wire SevenSegController_v1_0_S00_AXI_inst_n_58;
  wire SevenSegController_v1_0_S00_AXI_inst_n_59;
  wire SevenSegController_v1_0_S00_AXI_inst_n_6;
  wire SevenSegController_v1_0_S00_AXI_inst_n_60;
  wire SevenSegController_v1_0_S00_AXI_inst_n_61;
  wire SevenSegController_v1_0_S00_AXI_inst_n_62;
  wire SevenSegController_v1_0_S00_AXI_inst_n_7;
  wire SevenSegController_v1_0_S00_AXI_inst_n_8;
  wire SevenSegController_v1_0_S00_AXI_inst_n_9;
  wire [7:0]anode;
  wire bcb_n_1;
  wire bcb_n_11;
  wire bcb_n_12;
  wire bcb_n_13;
  wire bcb_n_14;
  wire bcb_n_2;
  wire bcb_n_3;
  wire bcb_n_4;
  wire bcb_n_5;
  wire bcb_n_6;
  wire bcb_n_7;
  wire bcb_n_8;
  wire bcb_n_9;
  wire [6:0]cathode;
  wire [6:1]cathode_a;
  wire \cathode_a[0]_i_1_n_0 ;
  wire dp;
  wire go_i_1_n_0;
  wire go_reg_n_0;
  wire old_slv1;
  wire old_slv10_carry__0_n_0;
  wire old_slv10_carry__0_n_1;
  wire old_slv10_carry__0_n_2;
  wire old_slv10_carry__0_n_3;
  wire old_slv10_carry__1_n_1;
  wire old_slv10_carry__1_n_2;
  wire old_slv10_carry__1_n_3;
  wire old_slv10_carry_n_0;
  wire old_slv10_carry_n_1;
  wire old_slv10_carry_n_2;
  wire old_slv10_carry_n_3;
  wire [31:0]old_slv1__0;
  wire overflow;
  wire [3:0]p_0_in;
  wire [7:0]p_1_in;
  wire [0:0]r_SM_Main__0;
  wire \refresh_counter[0]_i_2_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_0 ;
  wire \refresh_counter_reg[0]_i_1_n_1 ;
  wire \refresh_counter_reg[0]_i_1_n_2 ;
  wire \refresh_counter_reg[0]_i_1_n_3 ;
  wire \refresh_counter_reg[0]_i_1_n_4 ;
  wire \refresh_counter_reg[0]_i_1_n_5 ;
  wire \refresh_counter_reg[0]_i_1_n_6 ;
  wire \refresh_counter_reg[0]_i_1_n_7 ;
  wire \refresh_counter_reg[12]_i_1_n_0 ;
  wire \refresh_counter_reg[12]_i_1_n_1 ;
  wire \refresh_counter_reg[12]_i_1_n_2 ;
  wire \refresh_counter_reg[12]_i_1_n_3 ;
  wire \refresh_counter_reg[12]_i_1_n_4 ;
  wire \refresh_counter_reg[12]_i_1_n_5 ;
  wire \refresh_counter_reg[12]_i_1_n_6 ;
  wire \refresh_counter_reg[12]_i_1_n_7 ;
  wire \refresh_counter_reg[16]_i_1_n_0 ;
  wire \refresh_counter_reg[16]_i_1_n_1 ;
  wire \refresh_counter_reg[16]_i_1_n_2 ;
  wire \refresh_counter_reg[16]_i_1_n_3 ;
  wire \refresh_counter_reg[16]_i_1_n_4 ;
  wire \refresh_counter_reg[16]_i_1_n_5 ;
  wire \refresh_counter_reg[16]_i_1_n_6 ;
  wire \refresh_counter_reg[16]_i_1_n_7 ;
  wire \refresh_counter_reg[20]_i_1_n_7 ;
  wire \refresh_counter_reg[4]_i_1_n_0 ;
  wire \refresh_counter_reg[4]_i_1_n_1 ;
  wire \refresh_counter_reg[4]_i_1_n_2 ;
  wire \refresh_counter_reg[4]_i_1_n_3 ;
  wire \refresh_counter_reg[4]_i_1_n_4 ;
  wire \refresh_counter_reg[4]_i_1_n_5 ;
  wire \refresh_counter_reg[4]_i_1_n_6 ;
  wire \refresh_counter_reg[4]_i_1_n_7 ;
  wire \refresh_counter_reg[8]_i_1_n_0 ;
  wire \refresh_counter_reg[8]_i_1_n_1 ;
  wire \refresh_counter_reg[8]_i_1_n_2 ;
  wire \refresh_counter_reg[8]_i_1_n_3 ;
  wire \refresh_counter_reg[8]_i_1_n_4 ;
  wire \refresh_counter_reg[8]_i_1_n_5 ;
  wire \refresh_counter_reg[8]_i_1_n_6 ;
  wire \refresh_counter_reg[8]_i_1_n_7 ;
  wire \refresh_counter_reg_n_0_[0] ;
  wire \refresh_counter_reg_n_0_[10] ;
  wire \refresh_counter_reg_n_0_[11] ;
  wire \refresh_counter_reg_n_0_[12] ;
  wire \refresh_counter_reg_n_0_[13] ;
  wire \refresh_counter_reg_n_0_[14] ;
  wire \refresh_counter_reg_n_0_[15] ;
  wire \refresh_counter_reg_n_0_[16] ;
  wire \refresh_counter_reg_n_0_[17] ;
  wire \refresh_counter_reg_n_0_[1] ;
  wire \refresh_counter_reg_n_0_[2] ;
  wire \refresh_counter_reg_n_0_[3] ;
  wire \refresh_counter_reg_n_0_[4] ;
  wire \refresh_counter_reg_n_0_[5] ;
  wire \refresh_counter_reg_n_0_[6] ;
  wire \refresh_counter_reg_n_0_[7] ;
  wire \refresh_counter_reg_n_0_[8] ;
  wire \refresh_counter_reg_n_0_[9] ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [0:0]slv_reg0;
  wire [1:0]state;
  wire [3:0]NLW_old_slv10_carry_O_UNCONNECTED;
  wire [3:0]NLW_old_slv10_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_old_slv10_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_old_slv10_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_refresh_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_refresh_counter_reg[20]_i_1_O_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "s_GO:01,s_INIT:00,s_WAIT:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_6),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "s_GO:01,s_INIT:00,s_WAIT:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(bcb_n_1),
        .Q(state[1]));
  FDRE \LED_HEX_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_53),
        .Q(LED_HEX[0]),
        .R(1'b0));
  FDRE \LED_HEX_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_52),
        .Q(LED_HEX[1]),
        .R(1'b0));
  FDRE \LED_HEX_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_51),
        .Q(LED_HEX[2]),
        .R(1'b0));
  FDRE \LED_HEX_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_50),
        .Q(LED_HEX[3]),
        .R(1'b0));
  Fast_IP_Clock_SevenSegController_0_0_SevenSegController_v1_0_S00_AXI SevenSegController_v1_0_S00_AXI_inst
       (.CO(old_slv10_carry__1_n_1),
        .D({SevenSegController_v1_0_S00_AXI_inst_n_50,SevenSegController_v1_0_S00_AXI_inst_n_51,SevenSegController_v1_0_S00_AXI_inst_n_52,SevenSegController_v1_0_S00_AXI_inst_n_53}),
        .\FSM_sequential_state_reg[1] (SevenSegController_v1_0_S00_AXI_inst_n_6),
        .\LED_HEX_reg[0] (bcb_n_2),
        .\LED_HEX_reg[0]_0 (bcb_n_3),
        .\LED_HEX_reg[1] (bcb_n_4),
        .\LED_HEX_reg[1]_0 (bcb_n_5),
        .\LED_HEX_reg[2] (bcb_n_6),
        .\LED_HEX_reg[2]_0 (bcb_n_7),
        .\LED_HEX_reg[3] (bcb_n_8),
        .\LED_HEX_reg[3]_0 (bcb_n_9),
        .LED_activating_counter(LED_activating_counter),
        .Q(old_slv1__0),
        .S({SevenSegController_v1_0_S00_AXI_inst_n_7,SevenSegController_v1_0_S00_AXI_inst_n_8,SevenSegController_v1_0_S00_AXI_inst_n_9,SevenSegController_v1_0_S00_AXI_inst_n_10}),
        .SR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .SS(SevenSegController_v1_0_S00_AXI_inst_n_57),
        .\anode[7]_i_3_0 (bcb_n_12),
        .\anode[7]_i_3_1 (bcb_n_14),
        .\anode_reg[0] (bcb_n_11),
        .\anode_reg[0]_0 (bcb_n_13),
        .\old_slv1_reg[22] ({SevenSegController_v1_0_S00_AXI_inst_n_43,SevenSegController_v1_0_S00_AXI_inst_n_44,SevenSegController_v1_0_S00_AXI_inst_n_45,SevenSegController_v1_0_S00_AXI_inst_n_46}),
        .\old_slv1_reg[30] ({SevenSegController_v1_0_S00_AXI_inst_n_47,SevenSegController_v1_0_S00_AXI_inst_n_48,SevenSegController_v1_0_S00_AXI_inst_n_49}),
        .overflow(overflow),
        .\r_Binary_reg[0] (r_SM_Main__0),
        .r_OV_reg(SevenSegController_v1_0_S00_AXI_inst_n_55),
        .\refresh_counter_reg[18] (SevenSegController_v1_0_S00_AXI_inst_n_62),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[0]_0 (slv_reg0),
        .\slv_reg1_reg[0]_0 (SevenSegController_v1_0_S00_AXI_inst_n_56),
        .\slv_reg1_reg[19]_0 (SevenSegController_v1_0_S00_AXI_inst_n_58),
        .\slv_reg1_reg[2]_0 (SevenSegController_v1_0_S00_AXI_inst_n_60),
        .\slv_reg1_reg[31]_0 ({p_0_in,SevenSegController_v1_0_S00_AXI_inst_n_15,SevenSegController_v1_0_S00_AXI_inst_n_16,SevenSegController_v1_0_S00_AXI_inst_n_17,SevenSegController_v1_0_S00_AXI_inst_n_18,SevenSegController_v1_0_S00_AXI_inst_n_19,SevenSegController_v1_0_S00_AXI_inst_n_20,SevenSegController_v1_0_S00_AXI_inst_n_21,SevenSegController_v1_0_S00_AXI_inst_n_22,SevenSegController_v1_0_S00_AXI_inst_n_23,SevenSegController_v1_0_S00_AXI_inst_n_24,SevenSegController_v1_0_S00_AXI_inst_n_25,SevenSegController_v1_0_S00_AXI_inst_n_26,SevenSegController_v1_0_S00_AXI_inst_n_27,SevenSegController_v1_0_S00_AXI_inst_n_28,SevenSegController_v1_0_S00_AXI_inst_n_29,SevenSegController_v1_0_S00_AXI_inst_n_30,SevenSegController_v1_0_S00_AXI_inst_n_31,SevenSegController_v1_0_S00_AXI_inst_n_32,SevenSegController_v1_0_S00_AXI_inst_n_33,SevenSegController_v1_0_S00_AXI_inst_n_34,SevenSegController_v1_0_S00_AXI_inst_n_35,SevenSegController_v1_0_S00_AXI_inst_n_36,SevenSegController_v1_0_S00_AXI_inst_n_37,SevenSegController_v1_0_S00_AXI_inst_n_38,SevenSegController_v1_0_S00_AXI_inst_n_39,SevenSegController_v1_0_S00_AXI_inst_n_40,SevenSegController_v1_0_S00_AXI_inst_n_41,SevenSegController_v1_0_S00_AXI_inst_n_42}),
        .\slv_reg1_reg[7]_0 (SevenSegController_v1_0_S00_AXI_inst_n_61),
        .\slv_reg1_reg[8]_0 (SevenSegController_v1_0_S00_AXI_inst_n_59),
        .state(state));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \anode[0]_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode[1]_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \anode[2]_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \anode[3]_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \anode[4]_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \anode[5]_i_1 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \anode[6]_i_1 
       (.I0(LED_activating_counter[1]),
        .I1(LED_activating_counter[0]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \anode[7]_i_2 
       (.I0(LED_activating_counter[0]),
        .I1(LED_activating_counter[1]),
        .I2(LED_activating_counter[2]),
        .O(p_1_in[7]));
  FDSE \anode_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(anode[0]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  FDSE \anode_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(anode[1]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  FDSE \anode_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(anode[2]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  FDSE \anode_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(anode[3]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  FDSE \anode_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(anode[4]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  FDSE \anode_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(anode[5]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  FDSE \anode_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(anode[6]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  FDSE \anode_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(anode[7]),
        .S(SevenSegController_v1_0_S00_AXI_inst_n_57));
  Fast_IP_Clock_SevenSegController_0_0_Binary_to_BCD bcb
       (.D({p_0_in,SevenSegController_v1_0_S00_AXI_inst_n_15,SevenSegController_v1_0_S00_AXI_inst_n_16,SevenSegController_v1_0_S00_AXI_inst_n_17,SevenSegController_v1_0_S00_AXI_inst_n_18,SevenSegController_v1_0_S00_AXI_inst_n_19,SevenSegController_v1_0_S00_AXI_inst_n_20,SevenSegController_v1_0_S00_AXI_inst_n_21,SevenSegController_v1_0_S00_AXI_inst_n_22,SevenSegController_v1_0_S00_AXI_inst_n_23,SevenSegController_v1_0_S00_AXI_inst_n_24,SevenSegController_v1_0_S00_AXI_inst_n_25,SevenSegController_v1_0_S00_AXI_inst_n_26,SevenSegController_v1_0_S00_AXI_inst_n_27,SevenSegController_v1_0_S00_AXI_inst_n_28,SevenSegController_v1_0_S00_AXI_inst_n_29,SevenSegController_v1_0_S00_AXI_inst_n_30,SevenSegController_v1_0_S00_AXI_inst_n_31,SevenSegController_v1_0_S00_AXI_inst_n_32,SevenSegController_v1_0_S00_AXI_inst_n_33,SevenSegController_v1_0_S00_AXI_inst_n_34,SevenSegController_v1_0_S00_AXI_inst_n_35,SevenSegController_v1_0_S00_AXI_inst_n_36,SevenSegController_v1_0_S00_AXI_inst_n_37,SevenSegController_v1_0_S00_AXI_inst_n_38,SevenSegController_v1_0_S00_AXI_inst_n_39,SevenSegController_v1_0_S00_AXI_inst_n_40,SevenSegController_v1_0_S00_AXI_inst_n_41}),
        .LED_activating_counter(LED_activating_counter),
        .Q(r_SM_Main__0),
        .\anode[7]_i_4_0 (SevenSegController_v1_0_S00_AXI_inst_n_59),
        .\anode[7]_i_4_1 (SevenSegController_v1_0_S00_AXI_inst_n_60),
        .\anode[7]_i_4_2 (SevenSegController_v1_0_S00_AXI_inst_n_58),
        .\anode[7]_i_4_3 (SevenSegController_v1_0_S00_AXI_inst_n_61),
        .\anode[7]_i_4_4 (SevenSegController_v1_0_S00_AXI_inst_n_62),
        .\anode[7]_i_9_0 (slv_reg0),
        .overflow(overflow),
        .\r_BCD_reg[20]_0 (bcb_n_2),
        .\r_BCD_reg[21]_0 (bcb_n_4),
        .\r_BCD_reg[22]_0 (bcb_n_6),
        .\r_BCD_reg[23]_0 (bcb_n_8),
        .\r_BCD_reg[24]_0 (bcb_n_12),
        .\r_BCD_reg[31]_0 (bcb_n_14),
        .\r_BCD_reg[4]_0 (bcb_n_3),
        .\r_BCD_reg[5]_0 (bcb_n_5),
        .\r_BCD_reg[6]_0 (bcb_n_7),
        .\r_BCD_reg[7]_0 (bcb_n_9),
        .\r_Binary_reg[0]_0 (SevenSegController_v1_0_S00_AXI_inst_n_56),
        .r_DV_reg_0(bcb_n_1),
        .r_OV_reg_0(go_reg_n_0),
        .\refresh_counter_reg[18] (bcb_n_11),
        .\refresh_counter_reg[18]_0 (bcb_n_13),
        .s00_axi_aclk(s00_axi_aclk),
        .state(state));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0091)) 
    \cathode_a[0]_i_1 
       (.I0(LED_HEX[1]),
        .I1(LED_HEX[2]),
        .I2(LED_HEX[0]),
        .I3(LED_HEX[3]),
        .O(\cathode_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h5918)) 
    \cathode_a[1]_i_1 
       (.I0(LED_HEX[3]),
        .I1(LED_HEX[2]),
        .I2(LED_HEX[1]),
        .I3(LED_HEX[0]),
        .O(cathode_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \cathode_a[2]_i_1 
       (.I0(LED_HEX[3]),
        .I1(LED_HEX[1]),
        .I2(LED_HEX[2]),
        .I3(LED_HEX[0]),
        .O(cathode_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \cathode_a[3]_i_1 
       (.I0(LED_HEX[3]),
        .I1(LED_HEX[2]),
        .I2(LED_HEX[0]),
        .I3(LED_HEX[1]),
        .O(cathode_a[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \cathode_a[4]_i_1 
       (.I0(LED_HEX[3]),
        .I1(LED_HEX[0]),
        .I2(LED_HEX[1]),
        .I3(LED_HEX[2]),
        .O(cathode_a[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \cathode_a[5]_i_1 
       (.I0(LED_HEX[3]),
        .I1(LED_HEX[2]),
        .I2(LED_HEX[1]),
        .I3(LED_HEX[0]),
        .O(cathode_a[5]));
  LUT4 #(
    .INIT(16'h209C)) 
    \cathode_a[6]_i_1 
       (.I0(LED_HEX[3]),
        .I1(LED_HEX[2]),
        .I2(LED_HEX[0]),
        .I3(LED_HEX[1]),
        .O(cathode_a[6]));
  FDRE \cathode_a_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\cathode_a[0]_i_1_n_0 ),
        .Q(cathode[6]),
        .R(1'b0));
  FDRE \cathode_a_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cathode_a[1]),
        .Q(cathode[5]),
        .R(1'b0));
  FDRE \cathode_a_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cathode_a[2]),
        .Q(cathode[4]),
        .R(1'b0));
  FDRE \cathode_a_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cathode_a[3]),
        .Q(cathode[3]),
        .R(1'b0));
  FDRE \cathode_a_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cathode_a[4]),
        .Q(cathode[2]),
        .R(1'b0));
  FDRE \cathode_a_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cathode_a[5]),
        .Q(cathode[1]),
        .R(1'b0));
  FDRE \cathode_a_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cathode_a[6]),
        .Q(cathode[0]),
        .R(1'b0));
  FDRE dp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_55),
        .Q(dp),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF302)) 
    go_i_1
       (.I0(old_slv10_carry__1_n_1),
        .I1(state[0]),
        .I2(state[1]),
        .I3(go_reg_n_0),
        .O(go_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    go_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(go_i_1_n_0),
        .Q(go_reg_n_0));
  CARRY4 old_slv10_carry
       (.CI(1'b0),
        .CO({old_slv10_carry_n_0,old_slv10_carry_n_1,old_slv10_carry_n_2,old_slv10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_old_slv10_carry_O_UNCONNECTED[3:0]),
        .S({SevenSegController_v1_0_S00_AXI_inst_n_7,SevenSegController_v1_0_S00_AXI_inst_n_8,SevenSegController_v1_0_S00_AXI_inst_n_9,SevenSegController_v1_0_S00_AXI_inst_n_10}));
  CARRY4 old_slv10_carry__0
       (.CI(old_slv10_carry_n_0),
        .CO({old_slv10_carry__0_n_0,old_slv10_carry__0_n_1,old_slv10_carry__0_n_2,old_slv10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_old_slv10_carry__0_O_UNCONNECTED[3:0]),
        .S({SevenSegController_v1_0_S00_AXI_inst_n_43,SevenSegController_v1_0_S00_AXI_inst_n_44,SevenSegController_v1_0_S00_AXI_inst_n_45,SevenSegController_v1_0_S00_AXI_inst_n_46}));
  CARRY4 old_slv10_carry__1
       (.CI(old_slv10_carry__0_n_0),
        .CO({NLW_old_slv10_carry__1_CO_UNCONNECTED[3],old_slv10_carry__1_n_1,old_slv10_carry__1_n_2,old_slv10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_old_slv10_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,SevenSegController_v1_0_S00_AXI_inst_n_47,SevenSegController_v1_0_S00_AXI_inst_n_48,SevenSegController_v1_0_S00_AXI_inst_n_49}));
  LUT3 #(
    .INIT(8'h10)) 
    \old_slv1[31]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(old_slv10_carry__1_n_1),
        .O(old_slv1));
  FDCE \old_slv1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_42),
        .Q(old_slv1__0[0]));
  FDCE \old_slv1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_32),
        .Q(old_slv1__0[10]));
  FDCE \old_slv1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_31),
        .Q(old_slv1__0[11]));
  FDCE \old_slv1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_30),
        .Q(old_slv1__0[12]));
  FDCE \old_slv1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_29),
        .Q(old_slv1__0[13]));
  FDCE \old_slv1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_28),
        .Q(old_slv1__0[14]));
  FDCE \old_slv1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_27),
        .Q(old_slv1__0[15]));
  FDCE \old_slv1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_26),
        .Q(old_slv1__0[16]));
  FDCE \old_slv1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_25),
        .Q(old_slv1__0[17]));
  FDCE \old_slv1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_24),
        .Q(old_slv1__0[18]));
  FDCE \old_slv1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_23),
        .Q(old_slv1__0[19]));
  FDCE \old_slv1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_41),
        .Q(old_slv1__0[1]));
  FDCE \old_slv1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_22),
        .Q(old_slv1__0[20]));
  FDCE \old_slv1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_21),
        .Q(old_slv1__0[21]));
  FDCE \old_slv1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_20),
        .Q(old_slv1__0[22]));
  FDCE \old_slv1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_19),
        .Q(old_slv1__0[23]));
  FDCE \old_slv1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_18),
        .Q(old_slv1__0[24]));
  FDCE \old_slv1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_17),
        .Q(old_slv1__0[25]));
  FDCE \old_slv1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_16),
        .Q(old_slv1__0[26]));
  FDCE \old_slv1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_15),
        .Q(old_slv1__0[27]));
  FDCE \old_slv1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(p_0_in[0]),
        .Q(old_slv1__0[28]));
  FDCE \old_slv1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(p_0_in[1]),
        .Q(old_slv1__0[29]));
  FDCE \old_slv1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_40),
        .Q(old_slv1__0[2]));
  FDCE \old_slv1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(p_0_in[2]),
        .Q(old_slv1__0[30]));
  FDCE \old_slv1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(p_0_in[3]),
        .Q(old_slv1__0[31]));
  FDCE \old_slv1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_39),
        .Q(old_slv1__0[3]));
  FDCE \old_slv1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_38),
        .Q(old_slv1__0[4]));
  FDCE \old_slv1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_37),
        .Q(old_slv1__0[5]));
  FDCE \old_slv1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_36),
        .Q(old_slv1__0[6]));
  FDCE \old_slv1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_35),
        .Q(old_slv1__0[7]));
  FDCE \old_slv1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_34),
        .Q(old_slv1__0[8]));
  FDCE \old_slv1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(old_slv1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(SevenSegController_v1_0_S00_AXI_inst_n_33),
        .Q(old_slv1__0[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \refresh_counter[0]_i_2 
       (.I0(\refresh_counter_reg_n_0_[0] ),
        .O(\refresh_counter[0]_i_2_n_0 ));
  FDCE \refresh_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[0]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[0] ));
  CARRY4 \refresh_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\refresh_counter_reg[0]_i_1_n_0 ,\refresh_counter_reg[0]_i_1_n_1 ,\refresh_counter_reg[0]_i_1_n_2 ,\refresh_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refresh_counter_reg[0]_i_1_n_4 ,\refresh_counter_reg[0]_i_1_n_5 ,\refresh_counter_reg[0]_i_1_n_6 ,\refresh_counter_reg[0]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[3] ,\refresh_counter_reg_n_0_[2] ,\refresh_counter_reg_n_0_[1] ,\refresh_counter[0]_i_2_n_0 }));
  FDCE \refresh_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[8]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[10] ));
  FDCE \refresh_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[8]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[11] ));
  FDCE \refresh_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[12]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[12] ));
  CARRY4 \refresh_counter_reg[12]_i_1 
       (.CI(\refresh_counter_reg[8]_i_1_n_0 ),
        .CO({\refresh_counter_reg[12]_i_1_n_0 ,\refresh_counter_reg[12]_i_1_n_1 ,\refresh_counter_reg[12]_i_1_n_2 ,\refresh_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[12]_i_1_n_4 ,\refresh_counter_reg[12]_i_1_n_5 ,\refresh_counter_reg[12]_i_1_n_6 ,\refresh_counter_reg[12]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[15] ,\refresh_counter_reg_n_0_[14] ,\refresh_counter_reg_n_0_[13] ,\refresh_counter_reg_n_0_[12] }));
  FDCE \refresh_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[12]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[13] ));
  FDCE \refresh_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[12]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[14] ));
  FDCE \refresh_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[12]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[15] ));
  FDCE \refresh_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[16]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[16] ));
  CARRY4 \refresh_counter_reg[16]_i_1 
       (.CI(\refresh_counter_reg[12]_i_1_n_0 ),
        .CO({\refresh_counter_reg[16]_i_1_n_0 ,\refresh_counter_reg[16]_i_1_n_1 ,\refresh_counter_reg[16]_i_1_n_2 ,\refresh_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[16]_i_1_n_4 ,\refresh_counter_reg[16]_i_1_n_5 ,\refresh_counter_reg[16]_i_1_n_6 ,\refresh_counter_reg[16]_i_1_n_7 }),
        .S({LED_activating_counter[1:0],\refresh_counter_reg_n_0_[17] ,\refresh_counter_reg_n_0_[16] }));
  FDCE \refresh_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[16]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[17] ));
  FDCE \refresh_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[16]_i_1_n_5 ),
        .Q(LED_activating_counter[0]));
  FDCE \refresh_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[16]_i_1_n_4 ),
        .Q(LED_activating_counter[1]));
  FDCE \refresh_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[0]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[1] ));
  FDCE \refresh_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[20]_i_1_n_7 ),
        .Q(LED_activating_counter[2]));
  CARRY4 \refresh_counter_reg[20]_i_1 
       (.CI(\refresh_counter_reg[16]_i_1_n_0 ),
        .CO(\NLW_refresh_counter_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_refresh_counter_reg[20]_i_1_O_UNCONNECTED [3:1],\refresh_counter_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,LED_activating_counter[2]}));
  FDCE \refresh_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[0]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[2] ));
  FDCE \refresh_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[0]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[3] ));
  FDCE \refresh_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[4]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[4] ));
  CARRY4 \refresh_counter_reg[4]_i_1 
       (.CI(\refresh_counter_reg[0]_i_1_n_0 ),
        .CO({\refresh_counter_reg[4]_i_1_n_0 ,\refresh_counter_reg[4]_i_1_n_1 ,\refresh_counter_reg[4]_i_1_n_2 ,\refresh_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[4]_i_1_n_4 ,\refresh_counter_reg[4]_i_1_n_5 ,\refresh_counter_reg[4]_i_1_n_6 ,\refresh_counter_reg[4]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[7] ,\refresh_counter_reg_n_0_[6] ,\refresh_counter_reg_n_0_[5] ,\refresh_counter_reg_n_0_[4] }));
  FDCE \refresh_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[4]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[5] ));
  FDCE \refresh_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[4]_i_1_n_5 ),
        .Q(\refresh_counter_reg_n_0_[6] ));
  FDCE \refresh_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[4]_i_1_n_4 ),
        .Q(\refresh_counter_reg_n_0_[7] ));
  FDCE \refresh_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[8]_i_1_n_7 ),
        .Q(\refresh_counter_reg_n_0_[8] ));
  CARRY4 \refresh_counter_reg[8]_i_1 
       (.CI(\refresh_counter_reg[4]_i_1_n_0 ),
        .CO({\refresh_counter_reg[8]_i_1_n_0 ,\refresh_counter_reg[8]_i_1_n_1 ,\refresh_counter_reg[8]_i_1_n_2 ,\refresh_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refresh_counter_reg[8]_i_1_n_4 ,\refresh_counter_reg[8]_i_1_n_5 ,\refresh_counter_reg[8]_i_1_n_6 ,\refresh_counter_reg[8]_i_1_n_7 }),
        .S({\refresh_counter_reg_n_0_[11] ,\refresh_counter_reg_n_0_[10] ,\refresh_counter_reg_n_0_[9] ,\refresh_counter_reg_n_0_[8] }));
  FDCE \refresh_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SevenSegController_v1_0_S00_AXI_inst_n_1),
        .D(\refresh_counter_reg[8]_i_1_n_6 ),
        .Q(\refresh_counter_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "SevenSegController_v1_0_S00_AXI" *) 
module Fast_IP_Clock_SevenSegController_0_0_SevenSegController_v1_0_S00_AXI
   (s00_axi_awready,
    SR,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    \FSM_sequential_state_reg[1] ,
    S,
    \slv_reg1_reg[31]_0 ,
    \old_slv1_reg[22] ,
    \old_slv1_reg[30] ,
    D,
    \slv_reg0_reg[0]_0 ,
    r_OV_reg,
    \slv_reg1_reg[0]_0 ,
    SS,
    \slv_reg1_reg[19]_0 ,
    \slv_reg1_reg[8]_0 ,
    \slv_reg1_reg[2]_0 ,
    \slv_reg1_reg[7]_0 ,
    \refresh_counter_reg[18] ,
    s00_axi_rdata,
    s00_axi_aclk,
    state,
    CO,
    s00_axi_aresetn,
    Q,
    \LED_HEX_reg[0] ,
    LED_activating_counter,
    \LED_HEX_reg[0]_0 ,
    \LED_HEX_reg[1] ,
    \LED_HEX_reg[1]_0 ,
    \LED_HEX_reg[2] ,
    \LED_HEX_reg[2]_0 ,
    \LED_HEX_reg[3] ,
    \LED_HEX_reg[3]_0 ,
    overflow,
    \r_Binary_reg[0] ,
    \anode_reg[0] ,
    \anode_reg[0]_0 ,
    \anode[7]_i_3_0 ,
    \anode[7]_i_3_1 ,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_awready;
  output [0:0]SR;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output \FSM_sequential_state_reg[1] ;
  output [3:0]S;
  output [31:0]\slv_reg1_reg[31]_0 ;
  output [3:0]\old_slv1_reg[22] ;
  output [2:0]\old_slv1_reg[30] ;
  output [3:0]D;
  output [0:0]\slv_reg0_reg[0]_0 ;
  output r_OV_reg;
  output [0:0]\slv_reg1_reg[0]_0 ;
  output [0:0]SS;
  output \slv_reg1_reg[19]_0 ;
  output \slv_reg1_reg[8]_0 ;
  output \slv_reg1_reg[2]_0 ;
  output \slv_reg1_reg[7]_0 ;
  output \refresh_counter_reg[18] ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [1:0]state;
  input [0:0]CO;
  input s00_axi_aresetn;
  input [31:0]Q;
  input \LED_HEX_reg[0] ;
  input [2:0]LED_activating_counter;
  input \LED_HEX_reg[0]_0 ;
  input \LED_HEX_reg[1] ;
  input \LED_HEX_reg[1]_0 ;
  input \LED_HEX_reg[2] ;
  input \LED_HEX_reg[2]_0 ;
  input \LED_HEX_reg[3] ;
  input \LED_HEX_reg[3]_0 ;
  input overflow;
  input [0:0]\r_Binary_reg[0] ;
  input \anode_reg[0] ;
  input \anode_reg[0]_0 ;
  input \anode[7]_i_3_0 ;
  input \anode[7]_i_3_1 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]CO;
  wire [3:0]D;
  wire \FSM_sequential_state_reg[1] ;
  wire \LED_HEX[0]_i_2_n_0 ;
  wire \LED_HEX[0]_i_4_n_0 ;
  wire \LED_HEX[1]_i_2_n_0 ;
  wire \LED_HEX[1]_i_4_n_0 ;
  wire \LED_HEX[2]_i_2_n_0 ;
  wire \LED_HEX[2]_i_4_n_0 ;
  wire \LED_HEX[3]_i_2_n_0 ;
  wire \LED_HEX[3]_i_4_n_0 ;
  wire \LED_HEX_reg[0] ;
  wire \LED_HEX_reg[0]_0 ;
  wire \LED_HEX_reg[1] ;
  wire \LED_HEX_reg[1]_0 ;
  wire \LED_HEX_reg[2] ;
  wire \LED_HEX_reg[2]_0 ;
  wire \LED_HEX_reg[3] ;
  wire \LED_HEX_reg[3]_0 ;
  wire [2:0]LED_activating_counter;
  wire [31:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [0:0]SS;
  wire \anode[7]_i_13_n_0 ;
  wire \anode[7]_i_14_n_0 ;
  wire \anode[7]_i_18_n_0 ;
  wire \anode[7]_i_30_n_0 ;
  wire \anode[7]_i_31_n_0 ;
  wire \anode[7]_i_32_n_0 ;
  wire \anode[7]_i_33_n_0 ;
  wire \anode[7]_i_3_0 ;
  wire \anode[7]_i_3_1 ;
  wire \anode[7]_i_3_n_0 ;
  wire \anode[7]_i_5_n_0 ;
  wire \anode[7]_i_7_n_0 ;
  wire \anode_reg[0] ;
  wire \anode_reg[0]_0 ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire dp_i_2_n_0;
  wire dp_i_3_n_0;
  wire [3:0]\old_slv1_reg[22] ;
  wire [2:0]\old_slv1_reg[30] ;
  wire overflow;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [0:0]\r_Binary_reg[0] ;
  wire r_OV_reg;
  wire \refresh_counter_reg[18] ;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [7:1]slv_reg0;
  wire [0:0]\slv_reg0_reg[0]_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [0:0]\slv_reg1_reg[0]_0 ;
  wire \slv_reg1_reg[19]_0 ;
  wire \slv_reg1_reg[2]_0 ;
  wire [31:0]\slv_reg1_reg[31]_0 ;
  wire \slv_reg1_reg[7]_0 ;
  wire \slv_reg1_reg[8]_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[30] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [1:0]state;

  LUT3 #(
    .INIT(8'h98)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(CO),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \LED_HEX[0]_i_1 
       (.I0(\LED_HEX[0]_i_2_n_0 ),
        .I1(\LED_HEX_reg[0] ),
        .I2(\slv_reg0_reg[0]_0 ),
        .I3(LED_activating_counter[2]),
        .I4(\LED_HEX[0]_i_4_n_0 ),
        .I5(\LED_HEX_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[0]_i_2 
       (.I0(\slv_reg1_reg[31]_0 [20]),
        .I1(\slv_reg1_reg[31]_0 [28]),
        .I2(\slv_reg1_reg[31]_0 [16]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [24]),
        .O(\LED_HEX[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[0]_i_4 
       (.I0(\slv_reg1_reg[31]_0 [4]),
        .I1(\slv_reg1_reg[31]_0 [12]),
        .I2(\slv_reg1_reg[31]_0 [0]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [8]),
        .O(\LED_HEX[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \LED_HEX[1]_i_1 
       (.I0(\LED_HEX[1]_i_2_n_0 ),
        .I1(\LED_HEX_reg[1] ),
        .I2(\slv_reg0_reg[0]_0 ),
        .I3(LED_activating_counter[2]),
        .I4(\LED_HEX[1]_i_4_n_0 ),
        .I5(\LED_HEX_reg[1]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[1]_i_2 
       (.I0(\slv_reg1_reg[31]_0 [21]),
        .I1(\slv_reg1_reg[31]_0 [29]),
        .I2(\slv_reg1_reg[31]_0 [17]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [25]),
        .O(\LED_HEX[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[1]_i_4 
       (.I0(\slv_reg1_reg[31]_0 [5]),
        .I1(\slv_reg1_reg[31]_0 [13]),
        .I2(\slv_reg1_reg[31]_0 [1]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [9]),
        .O(\LED_HEX[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \LED_HEX[2]_i_1 
       (.I0(\LED_HEX[2]_i_2_n_0 ),
        .I1(\LED_HEX_reg[2] ),
        .I2(\slv_reg0_reg[0]_0 ),
        .I3(LED_activating_counter[2]),
        .I4(\LED_HEX[2]_i_4_n_0 ),
        .I5(\LED_HEX_reg[2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[2]_i_2 
       (.I0(\slv_reg1_reg[31]_0 [22]),
        .I1(\slv_reg1_reg[31]_0 [30]),
        .I2(\slv_reg1_reg[31]_0 [18]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [26]),
        .O(\LED_HEX[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[2]_i_4 
       (.I0(\slv_reg1_reg[31]_0 [6]),
        .I1(\slv_reg1_reg[31]_0 [14]),
        .I2(\slv_reg1_reg[31]_0 [2]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [10]),
        .O(\LED_HEX[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \LED_HEX[3]_i_1 
       (.I0(\LED_HEX[3]_i_2_n_0 ),
        .I1(\LED_HEX_reg[3] ),
        .I2(\slv_reg0_reg[0]_0 ),
        .I3(LED_activating_counter[2]),
        .I4(\LED_HEX[3]_i_4_n_0 ),
        .I5(\LED_HEX_reg[3]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[3]_i_2 
       (.I0(\slv_reg1_reg[31]_0 [23]),
        .I1(\slv_reg1_reg[31]_0 [31]),
        .I2(\slv_reg1_reg[31]_0 [19]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [27]),
        .O(\LED_HEX[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \LED_HEX[3]_i_4 
       (.I0(\slv_reg1_reg[31]_0 [7]),
        .I1(\slv_reg1_reg[31]_0 [15]),
        .I2(\slv_reg1_reg[31]_0 [3]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(\slv_reg1_reg[31]_0 [11]),
        .O(\LED_HEX[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE0FF)) 
    \anode[7]_i_1 
       (.I0(\anode[7]_i_3_n_0 ),
        .I1(\anode_reg[0] ),
        .I2(slv_reg0[1]),
        .I3(slv_reg0[7]),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \anode[7]_i_13 
       (.I0(\anode[7]_i_14_n_0 ),
        .I1(\slv_reg1_reg[31]_0 [24]),
        .I2(\slv_reg1_reg[31]_0 [25]),
        .I3(\slv_reg1_reg[31]_0 [27]),
        .I4(\slv_reg1_reg[31]_0 [26]),
        .O(\anode[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode[7]_i_14 
       (.I0(\slv_reg1_reg[31]_0 [31]),
        .I1(\slv_reg1_reg[31]_0 [30]),
        .I2(\slv_reg1_reg[31]_0 [29]),
        .I3(\slv_reg1_reg[31]_0 [28]),
        .O(\anode[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode[7]_i_18 
       (.I0(\slv_reg1_reg[31]_0 [15]),
        .I1(\slv_reg1_reg[31]_0 [14]),
        .I2(\slv_reg1_reg[31]_0 [13]),
        .I3(\slv_reg1_reg[31]_0 [12]),
        .O(\anode[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \anode[7]_i_19 
       (.I0(\anode[7]_i_30_n_0 ),
        .I1(\slv_reg1_reg[31]_0 [19]),
        .I2(\slv_reg1_reg[31]_0 [18]),
        .I3(\anode[7]_i_31_n_0 ),
        .I4(\anode[7]_i_32_n_0 ),
        .I5(\slv_reg0_reg[0]_0 ),
        .O(\slv_reg1_reg[19]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \anode[7]_i_20 
       (.I0(\anode[7]_i_18_n_0 ),
        .I1(\slv_reg1_reg[31]_0 [8]),
        .I2(\slv_reg1_reg[31]_0 [9]),
        .I3(\slv_reg1_reg[31]_0 [11]),
        .I4(\slv_reg1_reg[31]_0 [10]),
        .O(\slv_reg1_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \anode[7]_i_22 
       (.I0(\anode[7]_i_33_n_0 ),
        .I1(LED_activating_counter[0]),
        .I2(\slv_reg0_reg[0]_0 ),
        .I3(\slv_reg1_reg[31]_0 [26]),
        .I4(\slv_reg1_reg[31]_0 [27]),
        .I5(\anode[7]_i_32_n_0 ),
        .O(\refresh_counter_reg[18] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \anode[7]_i_24 
       (.I0(\slv_reg1_reg[31]_0 [2]),
        .I1(\slv_reg1_reg[31]_0 [3]),
        .I2(\slv_reg1_reg[31]_0 [1]),
        .I3(\slv_reg1_reg[31]_0 [0]),
        .I4(LED_activating_counter[0]),
        .I5(\slv_reg1_reg[7]_0 ),
        .O(\slv_reg1_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode[7]_i_26 
       (.I0(\slv_reg1_reg[31]_0 [7]),
        .I1(\slv_reg1_reg[31]_0 [6]),
        .I2(\slv_reg1_reg[31]_0 [5]),
        .I3(\slv_reg1_reg[31]_0 [4]),
        .O(\slv_reg1_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hAA00FC00)) 
    \anode[7]_i_3 
       (.I0(\anode[7]_i_5_n_0 ),
        .I1(\anode_reg[0]_0 ),
        .I2(\anode[7]_i_7_n_0 ),
        .I3(LED_activating_counter[1]),
        .I4(LED_activating_counter[2]),
        .O(\anode[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \anode[7]_i_30 
       (.I0(\slv_reg1_reg[31]_0 [17]),
        .I1(\slv_reg1_reg[31]_0 [16]),
        .I2(\slv_reg1_reg[31]_0 [20]),
        .I3(\slv_reg1_reg[31]_0 [21]),
        .I4(\slv_reg1_reg[31]_0 [22]),
        .I5(\slv_reg1_reg[31]_0 [23]),
        .O(\anode[7]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \anode[7]_i_31 
       (.I0(\slv_reg1_reg[31]_0 [26]),
        .I1(\slv_reg1_reg[31]_0 [27]),
        .O(\anode[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \anode[7]_i_32 
       (.I0(\slv_reg1_reg[31]_0 [25]),
        .I1(\slv_reg1_reg[31]_0 [24]),
        .I2(\slv_reg1_reg[31]_0 [28]),
        .I3(\slv_reg1_reg[31]_0 [29]),
        .I4(\slv_reg1_reg[31]_0 [30]),
        .I5(\slv_reg1_reg[31]_0 [31]),
        .O(\anode[7]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \anode[7]_i_33 
       (.I0(\slv_reg1_reg[31]_0 [23]),
        .I1(\slv_reg1_reg[31]_0 [22]),
        .I2(\slv_reg1_reg[31]_0 [21]),
        .I3(\slv_reg1_reg[31]_0 [20]),
        .O(\anode[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h3050305F3F503F5F)) 
    \anode[7]_i_5 
       (.I0(\anode[7]_i_3_0 ),
        .I1(\anode[7]_i_3_1 ),
        .I2(\slv_reg0_reg[0]_0 ),
        .I3(LED_activating_counter[0]),
        .I4(\anode[7]_i_13_n_0 ),
        .I5(\anode[7]_i_14_n_0 ),
        .O(\anode[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h440C)) 
    \anode[7]_i_7 
       (.I0(\anode[7]_i_18_n_0 ),
        .I1(\slv_reg1_reg[19]_0 ),
        .I2(\slv_reg1_reg[8]_0 ),
        .I3(LED_activating_counter[0]),
        .O(\anode[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(SR));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg2[0]),
        .I1(\slv_reg3_reg_n_0_[0] ),
        .I2(\slv_reg0_reg[0]_0 ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg2[10]),
        .I1(\slv_reg3_reg_n_0_[10] ),
        .I2(\slv_reg0_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg2[11]),
        .I1(\slv_reg3_reg_n_0_[11] ),
        .I2(\slv_reg0_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg2[12]),
        .I1(\slv_reg3_reg_n_0_[12] ),
        .I2(\slv_reg0_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg2[13]),
        .I1(\slv_reg3_reg_n_0_[13] ),
        .I2(\slv_reg0_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(\slv_reg3_reg_n_0_[14] ),
        .I2(\slv_reg0_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(\slv_reg3_reg_n_0_[15] ),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(\slv_reg3_reg_n_0_[16] ),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(\slv_reg3_reg_n_0_[17] ),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(\slv_reg3_reg_n_0_[18] ),
        .I2(\slv_reg0_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(\slv_reg3_reg_n_0_[19] ),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg2[1]),
        .I1(\slv_reg3_reg_n_0_[1] ),
        .I2(slv_reg0[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg2[20]),
        .I1(\slv_reg3_reg_n_0_[20] ),
        .I2(\slv_reg0_reg_n_0_[20] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg2[21]),
        .I1(\slv_reg3_reg_n_0_[21] ),
        .I2(\slv_reg0_reg_n_0_[21] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg2[22]),
        .I1(\slv_reg3_reg_n_0_[22] ),
        .I2(\slv_reg0_reg_n_0_[22] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg2[23]),
        .I1(\slv_reg3_reg_n_0_[23] ),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg2[24]),
        .I1(\slv_reg3_reg_n_0_[24] ),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg2[25]),
        .I1(\slv_reg3_reg_n_0_[25] ),
        .I2(\slv_reg0_reg_n_0_[25] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg2[26]),
        .I1(\slv_reg3_reg_n_0_[26] ),
        .I2(\slv_reg0_reg_n_0_[26] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(\slv_reg3_reg_n_0_[27] ),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg2[28]),
        .I1(\slv_reg3_reg_n_0_[28] ),
        .I2(\slv_reg0_reg_n_0_[28] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg2[29]),
        .I1(\slv_reg3_reg_n_0_[29] ),
        .I2(\slv_reg0_reg_n_0_[29] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg2[2]),
        .I1(\slv_reg3_reg_n_0_[2] ),
        .I2(slv_reg0[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg2[30]),
        .I1(\slv_reg3_reg_n_0_[30] ),
        .I2(\slv_reg0_reg_n_0_[30] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg2[31]),
        .I1(\slv_reg3_reg_n_0_[31] ),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg2[3]),
        .I1(\slv_reg3_reg_n_0_[3] ),
        .I2(slv_reg0[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg2[4]),
        .I1(\slv_reg3_reg_n_0_[4] ),
        .I2(slv_reg0[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg2[5]),
        .I1(\slv_reg3_reg_n_0_[5] ),
        .I2(slv_reg0[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(\slv_reg3_reg_n_0_[6] ),
        .I2(slv_reg0[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg2[7]),
        .I1(\slv_reg3_reg_n_0_[7] ),
        .I2(slv_reg0[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg2[8]),
        .I1(\slv_reg3_reg_n_0_[8] ),
        .I2(\slv_reg0_reg_n_0_[8] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg2[9]),
        .I1(\slv_reg3_reg_n_0_[9] ),
        .I2(\slv_reg0_reg_n_0_[9] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(\slv_reg1_reg[31]_0 [9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT5 #(
    .INIT(32'h05550333)) 
    dp_i_1
       (.I0(dp_i_2_n_0),
        .I1(dp_i_3_n_0),
        .I2(overflow),
        .I3(\slv_reg0_reg[0]_0 ),
        .I4(LED_activating_counter[2]),
        .O(r_OV_reg));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    dp_i_2
       (.I0(slv_reg2[5]),
        .I1(slv_reg2[7]),
        .I2(slv_reg2[4]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(slv_reg2[6]),
        .O(dp_i_2_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    dp_i_3
       (.I0(slv_reg2[1]),
        .I1(slv_reg2[3]),
        .I2(slv_reg2[0]),
        .I3(LED_activating_counter[0]),
        .I4(LED_activating_counter[1]),
        .I5(slv_reg2[2]),
        .O(dp_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry__0_i_1
       (.I0(Q[22]),
        .I1(\slv_reg1_reg[31]_0 [22]),
        .I2(Q[21]),
        .I3(\slv_reg1_reg[31]_0 [21]),
        .I4(\slv_reg1_reg[31]_0 [23]),
        .I5(Q[23]),
        .O(\old_slv1_reg[22] [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry__0_i_2
       (.I0(Q[19]),
        .I1(\slv_reg1_reg[31]_0 [19]),
        .I2(Q[18]),
        .I3(\slv_reg1_reg[31]_0 [18]),
        .I4(\slv_reg1_reg[31]_0 [20]),
        .I5(Q[20]),
        .O(\old_slv1_reg[22] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry__0_i_3
       (.I0(Q[16]),
        .I1(\slv_reg1_reg[31]_0 [16]),
        .I2(Q[15]),
        .I3(\slv_reg1_reg[31]_0 [15]),
        .I4(\slv_reg1_reg[31]_0 [17]),
        .I5(Q[17]),
        .O(\old_slv1_reg[22] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry__0_i_4
       (.I0(Q[13]),
        .I1(\slv_reg1_reg[31]_0 [13]),
        .I2(Q[12]),
        .I3(\slv_reg1_reg[31]_0 [12]),
        .I4(\slv_reg1_reg[31]_0 [14]),
        .I5(Q[14]),
        .O(\old_slv1_reg[22] [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    old_slv10_carry__1_i_1
       (.I0(Q[30]),
        .I1(\slv_reg1_reg[31]_0 [30]),
        .I2(\slv_reg1_reg[31]_0 [31]),
        .I3(Q[31]),
        .O(\old_slv1_reg[30] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry__1_i_2
       (.I0(Q[28]),
        .I1(\slv_reg1_reg[31]_0 [28]),
        .I2(Q[27]),
        .I3(\slv_reg1_reg[31]_0 [27]),
        .I4(\slv_reg1_reg[31]_0 [29]),
        .I5(Q[29]),
        .O(\old_slv1_reg[30] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry__1_i_3
       (.I0(Q[25]),
        .I1(\slv_reg1_reg[31]_0 [25]),
        .I2(Q[24]),
        .I3(\slv_reg1_reg[31]_0 [24]),
        .I4(\slv_reg1_reg[31]_0 [26]),
        .I5(Q[26]),
        .O(\old_slv1_reg[30] [0]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry_i_1
       (.I0(Q[10]),
        .I1(\slv_reg1_reg[31]_0 [10]),
        .I2(Q[9]),
        .I3(\slv_reg1_reg[31]_0 [9]),
        .I4(\slv_reg1_reg[31]_0 [11]),
        .I5(Q[11]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry_i_2
       (.I0(Q[7]),
        .I1(\slv_reg1_reg[31]_0 [7]),
        .I2(Q[6]),
        .I3(\slv_reg1_reg[31]_0 [6]),
        .I4(\slv_reg1_reg[31]_0 [8]),
        .I5(Q[8]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry_i_3
       (.I0(Q[4]),
        .I1(\slv_reg1_reg[31]_0 [4]),
        .I2(Q[3]),
        .I3(\slv_reg1_reg[31]_0 [3]),
        .I4(\slv_reg1_reg[31]_0 [5]),
        .I5(Q[5]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    old_slv10_carry_i_4
       (.I0(Q[1]),
        .I1(\slv_reg1_reg[31]_0 [1]),
        .I2(Q[0]),
        .I3(\slv_reg1_reg[31]_0 [0]),
        .I4(\slv_reg1_reg[31]_0 [2]),
        .I5(Q[2]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_Binary[0]_i_1 
       (.I0(\slv_reg1_reg[31]_0 [0]),
        .I1(\r_Binary_reg[0] ),
        .O(\slv_reg1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg[0]_0 ),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg[31]_0 [0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg[31]_0 [10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg[31]_0 [11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg[31]_0 [12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg[31]_0 [13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg[31]_0 [14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg[31]_0 [15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg[31]_0 [16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg[31]_0 [17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg[31]_0 [18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg[31]_0 [19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg[31]_0 [1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg[31]_0 [20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg[31]_0 [21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg[31]_0 [22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg[31]_0 [23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg[31]_0 [24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg[31]_0 [25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg[31]_0 [26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg[31]_0 [27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg[31]_0 [28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg[31]_0 [29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg[31]_0 [2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg[31]_0 [30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg[31]_0 [31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg[31]_0 [3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg[31]_0 [4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg[31]_0 [5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg[31]_0 [6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg[31]_0 [7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg[31]_0 [8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg[31]_0 [9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg3_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(SR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
