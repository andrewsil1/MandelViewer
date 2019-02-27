// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb 26 10:40:05 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.srcs/sources_1/bd/Fast_IP_Clock/ip/Fast_IP_Clock_mii_to_rmii_0_0/Fast_IP_Clock_mii_to_rmii_0_0_sim_netlist.v
// Design      : Fast_IP_Clock_mii_to_rmii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Fast_IP_Clock_mii_to_rmii_0_0,mii_to_rmii,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mii_to_rmii,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module Fast_IP_Clock_mii_to_rmii_0_0
   (rst_n,
    ref_clk,
    mac2rmii_tx_en,
    mac2rmii_txd,
    mac2rmii_tx_er,
    rmii2mac_tx_clk,
    rmii2mac_rx_clk,
    rmii2mac_col,
    rmii2mac_crs,
    rmii2mac_rx_dv,
    rmii2mac_rx_er,
    rmii2mac_rxd,
    phy2rmii_crs_dv,
    phy2rmii_rx_er,
    phy2rmii_rxd,
    rmii2phy_txd,
    rmii2phy_tx_en);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, BOARD.ASSOCIATED_PARAM REF_CLK_BOARD_INTERFACE, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input ref_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_EN" *) input mac2rmii_tx_en;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TXD" *) input [3:0]mac2rmii_txd;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_ER" *) input mac2rmii_tx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII TX_CLK" *) output rmii2mac_tx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_CLK" *) output rmii2mac_rx_clk;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII COL" *) output rmii2mac_col;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII CRS" *) output rmii2mac_crs;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_DV" *) output rmii2mac_rx_dv;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RX_ER" *) output rmii2mac_rx_er;
  (* x_interface_info = "xilinx.com:interface:mii:1.0 MII RXD" *) output [3:0]rmii2mac_rxd;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M CRS_DV" *) (* x_interface_parameter = "XIL_INTERFACENAME RMII_PHY_M, BOARD.ASSOCIATED_PARAM RMII_BOARD_INTERFACE" *) input phy2rmii_crs_dv;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M RX_ER" *) input phy2rmii_rx_er;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M RXD" *) input [1:0]phy2rmii_rxd;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M TXD" *) output [1:0]rmii2phy_txd;
  (* x_interface_info = "xilinx.com:interface:rmii:1.0 RMII_PHY_M TX_EN" *) output rmii2phy_tx_en;

  wire mac2rmii_tx_en;
  wire mac2rmii_tx_er;
  wire [3:0]mac2rmii_txd;
  wire phy2rmii_crs_dv;
  wire phy2rmii_rx_er;
  wire [1:0]phy2rmii_rxd;
  wire ref_clk;
  wire rmii2mac_col;
  wire rmii2mac_crs;
  wire rmii2mac_rx_clk;
  wire rmii2mac_rx_dv;
  wire rmii2mac_rx_er;
  wire [3:0]rmii2mac_rxd;
  wire rmii2mac_tx_clk;
  wire rmii2phy_tx_en;
  wire [1:0]rmii2phy_txd;
  wire rst_n;

  (* C_FAMILY = "artix7" *) 
  (* C_FIXED_SPEED = "1'b1" *) 
  (* C_INCLUDE_BUF = "2" *) 
  (* C_INSTANCE = "Fast_IP_Clock_mii_to_rmii_0_0" *) 
  (* C_SPEED_100 = "1'b1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* hdl = "VHDL" *) 
  (* imp_netlist = "TRUE" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "IP" *) 
  (* style = "HDL" *) 
  Fast_IP_Clock_mii_to_rmii_0_0_mii_to_rmii U0
       (.mac2rmii_tx_en(mac2rmii_tx_en),
        .mac2rmii_tx_er(mac2rmii_tx_er),
        .mac2rmii_txd(mac2rmii_txd),
        .phy2rmii_crs_dv(phy2rmii_crs_dv),
        .phy2rmii_rx_er(phy2rmii_rx_er),
        .phy2rmii_rxd(phy2rmii_rxd),
        .ref_clk(ref_clk),
        .rmii2mac_col(rmii2mac_col),
        .rmii2mac_crs(rmii2mac_crs),
        .rmii2mac_rx_clk(rmii2mac_rx_clk),
        .rmii2mac_rx_dv(rmii2mac_rx_dv),
        .rmii2mac_rx_er(rmii2mac_rx_er),
        .rmii2mac_rxd(rmii2mac_rxd),
        .rmii2mac_tx_clk(rmii2mac_tx_clk),
        .rmii2phy_tx_en(rmii2phy_tx_en),
        .rmii2phy_txd(rmii2phy_txd),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module Fast_IP_Clock_mii_to_rmii_0_0_SRL_FIFO
   (D,
    SR,
    fifo_ldr_ns,
    \FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] ,
    ref_clk,
    Data_In,
    Q,
    \Addr_Counters[3].FDRE_I_0 ,
    \FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[1] ,
    rx_end_packet);
  output [0:0]D;
  output [0:0]SR;
  output [0:0]fifo_ldr_ns;
  output [3:0]\FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] ;
  input ref_clk;
  input [3:0]Data_In;
  input [1:0]Q;
  input [0:0]\Addr_Counters[3].FDRE_I_0 ;
  input [1:0]\FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[1] ;
  input [1:0]rx_end_packet;

  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire [0:0]\Addr_Counters[3].FDRE_I_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire [0:0]D;
  wire D_0;
  wire [3:0]Data_In;
  wire [3:0]Data_Out;
  wire [3:0]\FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] ;
  wire [1:0]\FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[1] ;
  wire [1:0]Q;
  wire S;
  wire S0_out;
  wire S1_out;
  wire [0:0]SR;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire buffer_Empty__2;
  wire fIFO_Read__0;
  wire [0:0]fifo_ldr_ns;
  wire ref_clk;
  wire [1:0]rx_end_packet;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(ref_clk),
        .CE(D),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(SR));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h6666666666666664)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(fIFO_Read__0),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[2].FDRE_I_n_0 ),
        .I5(fifo_ldr_ns),
        .O(S));
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(fifo_ldr_ns),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[2].FDRE_I_n_0 ),
        .I5(fIFO_Read__0),
        .O(CI));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(fIFO_Read__0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(ref_clk),
        .CE(D),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h5A5A5A5A5A5A5A58)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(fIFO_Read__0),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[2].FDRE_I_n_0 ),
        .I5(fifo_ldr_ns),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(ref_clk),
        .CE(D),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555AAAA5555AAA8)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(fIFO_Read__0),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[2].FDRE_I_n_0 ),
        .I5(fifo_ldr_ns),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(ref_clk),
        .CE(D),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h55AA55AA55AA55A8)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(fIFO_Read__0),
        .I1(\Addr_Counters[0].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[2].FDRE_I_n_0 ),
        .I5(fifo_ldr_ns),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(ref_clk),
        .CE(1'b1),
        .D(D_0),
        .Q(D),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD8F8F8F8)) 
    Data_Exists_DFF_i_1
       (.I0(buffer_Empty__2),
        .I1(fifo_ldr_ns),
        .I2(D),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Data_Exists_DFF_i_2
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(buffer_Empty__2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(Data_In[3]),
        .Q(Data_Out[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(Data_In[2]),
        .Q(Data_Out[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(Data_In[1]),
        .Q(Data_Out[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\RMII_FIXED.I_RX/RX_100_MBPS.I_SRL_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(ref_clk),
        .D(Data_In[0]),
        .Q(Data_Out[0]));
  LUT4 #(
    .INIT(16'h4404)) 
    \FSM_sequential_RX_100_MBPS.fifo_ldr_cs[1]_i_1 
       (.I0(\FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[1] [1]),
        .I1(\FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[1] [0]),
        .I2(rx_end_packet[0]),
        .I3(rx_end_packet[1]),
        .O(fifo_ldr_ns));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_100_MBPS.Rmii2Mac_rxd[0]_i_1 
       (.I0(Q[1]),
        .I1(Data_Out[0]),
        .O(\FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_100_MBPS.Rmii2Mac_rxd[1]_i_1 
       (.I0(Q[1]),
        .I1(Data_Out[1]),
        .O(\FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_100_MBPS.Rmii2Mac_rxd[2]_i_1 
       (.I0(Q[1]),
        .I1(Data_Out[2]),
        .O(\FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_100_MBPS.Rmii2Mac_rxd[3]_i_1 
       (.I0(Q[1]),
        .I1(Data_Out[3]),
        .O(\FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    rmii2mac_col_i_1
       (.I0(\Addr_Counters[3].FDRE_I_0 ),
        .O(SR));
endmodule

(* C_FAMILY = "artix7" *) (* C_FIXED_SPEED = "1'b1" *) (* C_INCLUDE_BUF = "2" *) 
(* C_INSTANCE = "Fast_IP_Clock_mii_to_rmii_0_0" *) (* C_SPEED_100 = "1'b1" *) (* ORIG_REF_NAME = "mii_to_rmii" *) 
(* downgradeipidentifiedwarnings = "yes" *) (* hdl = "VHDL" *) (* imp_netlist = "TRUE" *) 
(* ip_group = "LOGICORE" *) (* iptype = "IP" *) (* style = "HDL" *) 
module Fast_IP_Clock_mii_to_rmii_0_0_mii_to_rmii
   (rst_n,
    ref_clk,
    mac2rmii_tx_en,
    mac2rmii_txd,
    mac2rmii_tx_er,
    rmii2mac_tx_clk,
    rmii2mac_rx_clk,
    rmii2mac_col,
    rmii2mac_crs,
    rmii2mac_rx_dv,
    rmii2mac_rx_er,
    rmii2mac_rxd,
    phy2rmii_crs_dv,
    phy2rmii_rx_er,
    phy2rmii_rxd,
    rmii2phy_txd,
    rmii2phy_tx_en);
  (* sigis = "RST" *) input rst_n;
  (* sigis = "CLK" *) input ref_clk;
  input mac2rmii_tx_en;
  input [3:0]mac2rmii_txd;
  input mac2rmii_tx_er;
  output rmii2mac_tx_clk;
  output rmii2mac_rx_clk;
  output rmii2mac_col;
  output rmii2mac_crs;
  output rmii2mac_rx_dv;
  output rmii2mac_rx_er;
  output [3:0]rmii2mac_rxd;
  input phy2rmii_crs_dv;
  input phy2rmii_rx_er;
  input [1:0]phy2rmii_rxd;
  output [1:0]rmii2phy_txd;
  output rmii2phy_tx_en;

  wire \RMII_FIXED.I_RX_n_5 ;
  wire \RMII_FIXED.I_RX_n_6 ;
  wire \RMII_FIXED.I_RX_n_7 ;
  wire \RMII_FIXED.I_RX_n_8 ;
  wire \RMII_FIXED.I_RX_n_9 ;
  wire \RMII_FIXED.I_TX_n_1 ;
  wire \RMII_FIXED.I_TX_n_2 ;
  wire Reset;
  wire Rmii2Mac_rx_dv;
  wire Rmii2Mac_rx_er;
  wire Rmii2Phy_tx_en;
  wire mac2Rmii_tx_en_d1;
  wire mac2Rmii_tx_en_d2;
  wire mac2Rmii_tx_er_d1;
  wire mac2Rmii_tx_er_d2;
  wire [3:0]mac2Rmii_txd_d1;
  wire [3:0]mac2Rmii_txd_d2;
  wire mac2rmii_tx_en;
  wire mac2rmii_tx_er;
  wire [3:0]mac2rmii_txd;
  wire [3:2]p_0_in;
  wire phy2Rmii_crs_dv_d1_reg_n_0;
  wire phy2Rmii_crs_dv_d2;
  wire phy2Rmii_rx_er_d1;
  wire phy2Rmii_rx_er_d2;
  wire \phy2Rmii_rxd_d1_reg_n_0_[0] ;
  wire \phy2Rmii_rxd_d1_reg_n_0_[1] ;
  wire phy2rmii_crs_dv;
  wire phy2rmii_rx_er;
  wire [1:0]phy2rmii_rxd;
  wire ref_clk;
  wire rmii2Mac_crs_i;
  wire rmii2Mac_rx_clk_i;
  wire rmii2Mac_tx_clk_i;
  wire rmii2mac_col;
  wire rmii2mac_crs;
  wire rmii2mac_rx_clk;
  wire rmii2mac_rx_clk_bi;
  wire rmii2mac_rx_dv;
  wire rmii2mac_rx_er;
  wire [3:0]rmii2mac_rxd;
  wire rmii2mac_tx_clk;
  wire rmii2mac_tx_clk_bi;
  wire rmii2phy_tx_en;
  wire [1:0]rmii2phy_txd;
  wire rst_n;
  wire \rst_n_d_reg_n_0_[0] ;
  wire sync_rst_n;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH \BUFH_USED_1.RX_CLK_BUFH 
       (.I(rmii2mac_rx_clk_bi),
        .O(rmii2mac_rx_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH \BUFH_USED_1.TX_CLK_BUFH 
       (.I(rmii2mac_tx_clk_bi),
        .O(rmii2mac_tx_clk));
  Fast_IP_Clock_mii_to_rmii_0_0_rmii_rx_fixed \RMII_FIXED.I_RX 
       (.\Addr_Counters[3].FDRE_I (sync_rst_n),
        .Q(rmii2Mac_rx_clk_i),
        .\RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 ({\RMII_FIXED.I_RX_n_5 ,\RMII_FIXED.I_RX_n_6 ,\RMII_FIXED.I_RX_n_7 ,\RMII_FIXED.I_RX_n_8 }),
        .\RX_100_MBPS.phy2Rmii_rxd_d1_reg[3]_0 (p_0_in),
        .\RX_100_MBPS.rmii2Mac_crs_i_reg_0 (\RMII_FIXED.I_RX_n_9 ),
        .Reset(Reset),
        .Rmii2Mac_rx_dv(Rmii2Mac_rx_dv),
        .Rmii2Mac_rx_er(Rmii2Mac_rx_er),
        .mac2Rmii_tx_en_d2(mac2Rmii_tx_en_d2),
        .phy2Rmii_crs_dv_d2(phy2Rmii_crs_dv_d2),
        .phy2Rmii_rx_er_d2(phy2Rmii_rx_er_d2),
        .ref_clk(ref_clk),
        .rmii2Mac_crs_i(rmii2Mac_crs_i));
  Fast_IP_Clock_mii_to_rmii_0_0_rmii_tx_fixed \RMII_FIXED.I_TX 
       (.Q(mac2Rmii_txd_d2),
        .Reset(Reset),
        .Rmii2Phy_tx_en(Rmii2Phy_tx_en),
        .\Rmii2Phy_txd_reg[1]_0 ({\RMII_FIXED.I_TX_n_1 ,\RMII_FIXED.I_TX_n_2 }),
        .mac2Rmii_tx_en_d2(mac2Rmii_tx_en_d2),
        .mac2Rmii_tx_er_d2(mac2Rmii_tx_er_d2),
        .ref_clk(ref_clk),
        .rmii2Mac_tx_clk_i(rmii2Mac_tx_clk_i));
  FDRE mac2Rmii_tx_en_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_tx_en),
        .Q(mac2Rmii_tx_en_d1),
        .R(Reset));
  FDRE mac2Rmii_tx_en_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_tx_en_d1),
        .Q(mac2Rmii_tx_en_d2),
        .R(Reset));
  FDRE mac2Rmii_tx_er_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_tx_er),
        .Q(mac2Rmii_tx_er_d1),
        .R(Reset));
  FDRE mac2Rmii_tx_er_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_tx_er_d1),
        .Q(mac2Rmii_tx_er_d2),
        .R(Reset));
  FDRE \mac2Rmii_txd_d1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[0]),
        .Q(mac2Rmii_txd_d1[0]),
        .R(Reset));
  FDRE \mac2Rmii_txd_d1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[1]),
        .Q(mac2Rmii_txd_d1[1]),
        .R(Reset));
  FDRE \mac2Rmii_txd_d1_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[2]),
        .Q(mac2Rmii_txd_d1[2]),
        .R(Reset));
  FDRE \mac2Rmii_txd_d1_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2rmii_txd[3]),
        .Q(mac2Rmii_txd_d1[3]),
        .R(Reset));
  FDRE \mac2Rmii_txd_d2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[0]),
        .Q(mac2Rmii_txd_d2[0]),
        .R(Reset));
  FDRE \mac2Rmii_txd_d2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[1]),
        .Q(mac2Rmii_txd_d2[1]),
        .R(Reset));
  FDRE \mac2Rmii_txd_d2_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[2]),
        .Q(mac2Rmii_txd_d2[2]),
        .R(Reset));
  FDRE \mac2Rmii_txd_d2_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_txd_d1[3]),
        .Q(mac2Rmii_txd_d2[3]),
        .R(Reset));
  FDRE phy2Rmii_crs_dv_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_crs_dv),
        .Q(phy2Rmii_crs_dv_d1_reg_n_0),
        .R(Reset));
  FDRE phy2Rmii_crs_dv_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_crs_dv_d1_reg_n_0),
        .Q(phy2Rmii_crs_dv_d2),
        .R(Reset));
  FDRE phy2Rmii_rx_er_d1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rx_er),
        .Q(phy2Rmii_rx_er_d1),
        .R(Reset));
  FDRE phy2Rmii_rx_er_d2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_rx_er_d1),
        .Q(phy2Rmii_rx_er_d2),
        .R(Reset));
  FDRE \phy2Rmii_rxd_d1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rxd[0]),
        .Q(\phy2Rmii_rxd_d1_reg_n_0_[0] ),
        .R(Reset));
  FDRE \phy2Rmii_rxd_d1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2rmii_rxd[1]),
        .Q(\phy2Rmii_rxd_d1_reg_n_0_[1] ),
        .R(Reset));
  FDRE \phy2Rmii_rxd_d2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_rxd_d1_reg_n_0_[0] ),
        .Q(p_0_in[2]),
        .R(Reset));
  FDRE \phy2Rmii_rxd_d2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\phy2Rmii_rxd_d1_reg_n_0_[1] ),
        .Q(p_0_in[3]),
        .R(Reset));
  FDRE rmii2mac_col_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_FIXED.I_RX_n_9 ),
        .Q(rmii2mac_col),
        .R(Reset));
  FDRE rmii2mac_crs_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_crs_i),
        .Q(rmii2mac_crs),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    rmii2mac_rx_clk_bi_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rx_clk_i),
        .Q(rmii2mac_rx_clk_bi),
        .R(Reset));
  FDRE rmii2mac_rx_dv_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(Rmii2Mac_rx_dv),
        .Q(rmii2mac_rx_dv),
        .R(Reset));
  FDRE rmii2mac_rx_er_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(Rmii2Mac_rx_er),
        .Q(rmii2mac_rx_er),
        .R(Reset));
  FDRE \rmii2mac_rxd_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_FIXED.I_RX_n_8 ),
        .Q(rmii2mac_rxd[0]),
        .R(Reset));
  FDRE \rmii2mac_rxd_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_FIXED.I_RX_n_7 ),
        .Q(rmii2mac_rxd[1]),
        .R(Reset));
  FDRE \rmii2mac_rxd_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_FIXED.I_RX_n_6 ),
        .Q(rmii2mac_rxd[2]),
        .R(Reset));
  FDRE \rmii2mac_rxd_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_FIXED.I_RX_n_5 ),
        .Q(rmii2mac_rxd[3]),
        .R(Reset));
  FDRE #(
    .INIT(1'b0)) 
    rmii2mac_tx_clk_bi_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_tx_clk_i),
        .Q(rmii2mac_tx_clk_bi),
        .R(Reset));
  FDRE rmii2phy_tx_en_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(Rmii2Phy_tx_en),
        .Q(rmii2phy_tx_en),
        .R(Reset));
  FDRE \rmii2phy_txd_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_FIXED.I_TX_n_2 ),
        .Q(rmii2phy_txd[0]),
        .R(Reset));
  FDRE \rmii2phy_txd_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RMII_FIXED.I_TX_n_1 ),
        .Q(rmii2phy_txd[1]),
        .R(Reset));
  FDRE \rst_n_d_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rst_n),
        .Q(\rst_n_d_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \rst_n_d_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\rst_n_d_reg_n_0_[0] ),
        .Q(sync_rst_n),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rmii_rx_fixed" *) 
module Fast_IP_Clock_mii_to_rmii_0_0_rmii_rx_fixed
   (Reset,
    rmii2Mac_crs_i,
    Rmii2Mac_rx_dv,
    Q,
    Rmii2Mac_rx_er,
    \RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 ,
    \RX_100_MBPS.rmii2Mac_crs_i_reg_0 ,
    ref_clk,
    phy2Rmii_crs_dv_d2,
    phy2Rmii_rx_er_d2,
    \RX_100_MBPS.phy2Rmii_rxd_d1_reg[3]_0 ,
    \Addr_Counters[3].FDRE_I ,
    mac2Rmii_tx_en_d2);
  output Reset;
  output rmii2Mac_crs_i;
  output Rmii2Mac_rx_dv;
  output [0:0]Q;
  output Rmii2Mac_rx_er;
  output [3:0]\RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 ;
  output \RX_100_MBPS.rmii2Mac_crs_i_reg_0 ;
  input ref_clk;
  input phy2Rmii_crs_dv_d2;
  input phy2Rmii_rx_er_d2;
  input [1:0]\RX_100_MBPS.phy2Rmii_rxd_d1_reg[3]_0 ;
  input [0:0]\Addr_Counters[3].FDRE_I ;
  input mac2Rmii_tx_en_d2;

  wire [0:0]\Addr_Counters[3].FDRE_I ;
  wire [1:4]Data_In;
  wire [3:2]L;
  wire [0:0]Q;
  wire \RX_100_MBPS.I_SRL_FIFO_n_3 ;
  wire \RX_100_MBPS.I_SRL_FIFO_n_4 ;
  wire \RX_100_MBPS.I_SRL_FIFO_n_5 ;
  wire \RX_100_MBPS.I_SRL_FIFO_n_6 ;
  wire \RX_100_MBPS.Rmii2Mac_rx_er_i_1_n_0 ;
  wire [3:0]\RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 ;
  wire [1:0]\RX_100_MBPS.phy2Rmii_rxd_d1_reg[3]_0 ;
  wire \RX_100_MBPS.rmii2Mac_crs_i_reg_0 ;
  wire \RX_100_MBPS.rx_begin_packet[0]_i_1_n_0 ;
  wire \RX_100_MBPS.rx_begin_packet[0]_i_2_n_0 ;
  wire \RX_100_MBPS.rx_begin_packet[1]_i_1_n_0 ;
  wire \RX_100_MBPS.rx_end_packet[0]_i_1_n_0 ;
  wire \RX_100_MBPS.rx_end_packet[1]_i_1_n_0 ;
  wire Reset;
  wire Rmii2Mac_rx_dv;
  wire Rmii2Mac_rx_er;
  wire fIFO_Data_Exists;
  wire [0:0]fifo_flshr_ns;
  wire [1:0]fifo_ldr_cs;
  wire [1:0]fifo_ldr_ns;
  wire mac2Rmii_tx_en_d2;
  wire [1:0]p_0_in;
  wire p_5_out;
  wire phy2Rmii_crs_dv_d1;
  wire phy2Rmii_crs_dv_d2;
  wire phy2Rmii_crs_dv_d2_0;
  wire phy2Rmii_crs_dv_d3;
  wire phy2Rmii_crs_dv_d4;
  wire phy2Rmii_rx_er_d2;
  wire ref_clk;
  wire rmii2Mac_crs_i;
  wire rmii2Mac_rx_er_d1;
  wire rmii2Mac_rx_er_d2;
  wire rmii2Mac_rx_er_d3;
  wire [1:0]rx_begin_packet;
  wire [1:0]rx_end_packet;
  wire rx_out_mux_sel;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_RX_100_MBPS.fifo_flshr_cs[0]_i_1 
       (.I0(Q),
        .O(fifo_flshr_ns));
  (* FSM_ENCODED_STATES = "rx100_clk_h:11,flshr_idle_h:01,rx100_clk_l:10,flshr_idle_l:00" *) 
  FDRE \FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(fifo_flshr_ns),
        .Q(Q),
        .R(Reset));
  (* FSM_ENCODED_STATES = "rx100_clk_h:11,flshr_idle_h:01,rx100_clk_l:10,flshr_idle_l:00" *) 
  FDRE \FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(fIFO_Data_Exists),
        .Q(rx_out_mux_sel),
        .R(Reset));
  LUT6 #(
    .INIT(64'h00000000F4F404F4)) 
    \FSM_sequential_RX_100_MBPS.fifo_ldr_cs[0]_i_1 
       (.I0(rx_begin_packet[1]),
        .I1(rx_begin_packet[0]),
        .I2(fifo_ldr_cs[1]),
        .I3(rx_end_packet[0]),
        .I4(rx_end_packet[1]),
        .I5(fifo_ldr_cs[0]),
        .O(fifo_ldr_ns[0]));
  (* FSM_ENCODED_STATES = "rx_wr:01,idle_no_wr:00,rx_no_wr:10" *) 
  FDRE \FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(fifo_ldr_ns[0]),
        .Q(fifo_ldr_cs[0]),
        .R(Reset));
  (* FSM_ENCODED_STATES = "rx_wr:01,idle_no_wr:00,rx_no_wr:10" *) 
  FDRE \FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(fifo_ldr_ns[1]),
        .Q(fifo_ldr_cs[1]),
        .R(Reset));
  Fast_IP_Clock_mii_to_rmii_0_0_SRL_FIFO \RX_100_MBPS.I_SRL_FIFO 
       (.\Addr_Counters[3].FDRE_I_0 (\Addr_Counters[3].FDRE_I ),
        .D(fIFO_Data_Exists),
        .Data_In({Data_In[1],Data_In[2],Data_In[3],Data_In[4]}),
        .\FSM_sequential_RX_100_MBPS.fifo_flshr_cs_reg[1] ({\RX_100_MBPS.I_SRL_FIFO_n_3 ,\RX_100_MBPS.I_SRL_FIFO_n_4 ,\RX_100_MBPS.I_SRL_FIFO_n_5 ,\RX_100_MBPS.I_SRL_FIFO_n_6 }),
        .\FSM_sequential_RX_100_MBPS.fifo_ldr_cs_reg[1] (fifo_ldr_cs),
        .Q({rx_out_mux_sel,Q}),
        .SR(Reset),
        .fifo_ldr_ns(fifo_ldr_ns[1]),
        .ref_clk(ref_clk),
        .rx_end_packet(rx_end_packet));
  FDRE \RX_100_MBPS.Rmii2Mac_rx_dv_reg 
       (.C(ref_clk),
        .CE(Q),
        .D(rx_out_mux_sel),
        .Q(Rmii2Mac_rx_dv),
        .R(Reset));
  LUT5 #(
    .INIT(32'hC0A000A0)) 
    \RX_100_MBPS.Rmii2Mac_rx_er_i_1 
       (.I0(Rmii2Mac_rx_er),
        .I1(rmii2Mac_rx_er_d3),
        .I2(\Addr_Counters[3].FDRE_I ),
        .I3(Q),
        .I4(rx_out_mux_sel),
        .O(\RX_100_MBPS.Rmii2Mac_rx_er_i_1_n_0 ));
  FDRE \RX_100_MBPS.Rmii2Mac_rx_er_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RX_100_MBPS.Rmii2Mac_rx_er_i_1_n_0 ),
        .Q(Rmii2Mac_rx_er),
        .R(1'b0));
  FDRE \RX_100_MBPS.Rmii2Mac_rxd_reg[0] 
       (.C(ref_clk),
        .CE(Q),
        .D(\RX_100_MBPS.I_SRL_FIFO_n_6 ),
        .Q(\RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 [0]),
        .R(Reset));
  FDRE \RX_100_MBPS.Rmii2Mac_rxd_reg[1] 
       (.C(ref_clk),
        .CE(Q),
        .D(\RX_100_MBPS.I_SRL_FIFO_n_5 ),
        .Q(\RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 [1]),
        .R(Reset));
  FDRE \RX_100_MBPS.Rmii2Mac_rxd_reg[2] 
       (.C(ref_clk),
        .CE(Q),
        .D(\RX_100_MBPS.I_SRL_FIFO_n_4 ),
        .Q(\RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 [2]),
        .R(Reset));
  FDRE \RX_100_MBPS.Rmii2Mac_rxd_reg[3] 
       (.C(ref_clk),
        .CE(Q),
        .D(\RX_100_MBPS.I_SRL_FIFO_n_3 ),
        .Q(\RX_100_MBPS.Rmii2Mac_rxd_reg[3]_0 [3]),
        .R(Reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \RX_100_MBPS.phy2Rmii_crs_dv_d1_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_crs_dv_d2),
        .Q(phy2Rmii_crs_dv_d1),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_crs_dv_d2_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_crs_dv_d1),
        .Q(phy2Rmii_crs_dv_d2_0),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_crs_dv_d3_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_crs_dv_d2_0),
        .Q(phy2Rmii_crs_dv_d3),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_crs_dv_d4_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_crs_dv_d3),
        .Q(phy2Rmii_crs_dv_d4),
        .R(Reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d1_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RX_100_MBPS.phy2Rmii_rxd_d1_reg[3]_0 [0]),
        .Q(p_0_in[0]),
        .R(Reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d1_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RX_100_MBPS.phy2Rmii_rxd_d1_reg[3]_0 [1]),
        .Q(p_0_in[1]),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d2_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(L[2]),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d2_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(L[3]),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d3_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(Data_In[2]),
        .Q(Data_In[4]),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d3_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(Data_In[1]),
        .Q(Data_In[3]),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d3_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(L[2]),
        .Q(Data_In[2]),
        .R(Reset));
  FDRE \RX_100_MBPS.phy2Rmii_rxd_d3_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(L[3]),
        .Q(Data_In[1]),
        .R(Reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \RX_100_MBPS.rmii2Mac_crs_i_i_1 
       (.I0(rmii2Mac_crs_i),
        .I1(phy2Rmii_crs_dv_d4),
        .I2(phy2Rmii_crs_dv_d2_0),
        .O(p_5_out));
  FDRE \RX_100_MBPS.rmii2Mac_crs_i_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(p_5_out),
        .Q(rmii2Mac_crs_i),
        .R(Reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE \RX_100_MBPS.rmii2Mac_rx_er_d1_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy2Rmii_rx_er_d2),
        .Q(rmii2Mac_rx_er_d1),
        .R(Reset));
  FDRE \RX_100_MBPS.rmii2Mac_rx_er_d2_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rx_er_d1),
        .Q(rmii2Mac_rx_er_d2),
        .R(Reset));
  FDRE \RX_100_MBPS.rmii2Mac_rx_er_d3_reg 
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii2Mac_rx_er_d2),
        .Q(rmii2Mac_rx_er_d3),
        .R(Reset));
  LUT5 #(
    .INIT(32'h0000AAEA)) 
    \RX_100_MBPS.rx_begin_packet[0]_i_1 
       (.I0(rx_begin_packet[0]),
        .I1(phy2Rmii_crs_dv_d2_0),
        .I2(L[2]),
        .I3(L[3]),
        .I4(\RX_100_MBPS.rx_begin_packet[0]_i_2_n_0 ),
        .O(\RX_100_MBPS.rx_begin_packet[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \RX_100_MBPS.rx_begin_packet[0]_i_2 
       (.I0(rx_end_packet[1]),
        .I1(rx_end_packet[0]),
        .I2(\Addr_Counters[3].FDRE_I ),
        .O(\RX_100_MBPS.rx_begin_packet[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \RX_100_MBPS.rx_begin_packet[1]_i_1 
       (.I0(rx_begin_packet[0]),
        .I1(\Addr_Counters[3].FDRE_I ),
        .I2(rx_end_packet[0]),
        .I3(rx_end_packet[1]),
        .O(\RX_100_MBPS.rx_begin_packet[1]_i_1_n_0 ));
  FDRE \RX_100_MBPS.rx_begin_packet_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RX_100_MBPS.rx_begin_packet[0]_i_1_n_0 ),
        .Q(rx_begin_packet[0]),
        .R(1'b0));
  FDRE \RX_100_MBPS.rx_begin_packet_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RX_100_MBPS.rx_begin_packet[1]_i_1_n_0 ),
        .Q(rx_begin_packet[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD0D0D0DD00000000)) 
    \RX_100_MBPS.rx_end_packet[0]_i_1 
       (.I0(rx_begin_packet[0]),
        .I1(rx_begin_packet[1]),
        .I2(rx_end_packet[0]),
        .I3(phy2Rmii_crs_dv_d3),
        .I4(phy2Rmii_crs_dv_d2_0),
        .I5(\Addr_Counters[3].FDRE_I ),
        .O(\RX_100_MBPS.rx_end_packet[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \RX_100_MBPS.rx_end_packet[1]_i_1 
       (.I0(rx_end_packet[0]),
        .I1(\Addr_Counters[3].FDRE_I ),
        .I2(rx_begin_packet[0]),
        .I3(rx_begin_packet[1]),
        .O(\RX_100_MBPS.rx_end_packet[1]_i_1_n_0 ));
  FDRE \RX_100_MBPS.rx_end_packet_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RX_100_MBPS.rx_end_packet[0]_i_1_n_0 ),
        .Q(rx_end_packet[0]),
        .R(1'b0));
  FDRE \RX_100_MBPS.rx_end_packet_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\RX_100_MBPS.rx_end_packet[1]_i_1_n_0 ),
        .Q(rx_end_packet[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    rmii2mac_col_i_2
       (.I0(rmii2Mac_crs_i),
        .I1(mac2Rmii_tx_en_d2),
        .O(\RX_100_MBPS.rmii2Mac_crs_i_reg_0 ));
endmodule

(* ORIG_REF_NAME = "rmii_tx_fixed" *) 
module Fast_IP_Clock_mii_to_rmii_0_0_rmii_tx_fixed
   (Rmii2Phy_tx_en,
    \Rmii2Phy_txd_reg[1]_0 ,
    rmii2Mac_tx_clk_i,
    Reset,
    mac2Rmii_tx_er_d2,
    ref_clk,
    mac2Rmii_tx_en_d2,
    Q);
  output Rmii2Phy_tx_en;
  output [1:0]\Rmii2Phy_txd_reg[1]_0 ;
  output rmii2Mac_tx_clk_i;
  input Reset;
  input mac2Rmii_tx_er_d2;
  input ref_clk;
  input mac2Rmii_tx_en_d2;
  input [3:0]Q;

  wire \FSM_onehot_present_state[2]_i_1_n_0 ;
  wire \FSM_onehot_present_state_reg_n_0_[0] ;
  wire \FSM_onehot_present_state_reg_n_0_[1] ;
  wire \FSM_onehot_present_state_reg_n_0_[3] ;
  wire [3:0]Q;
  wire Reset;
  wire Rmii2Phy_tx_en;
  wire \Rmii2Phy_txd[0]_i_1_n_0 ;
  wire \Rmii2Phy_txd[1]_i_1_n_0 ;
  wire [1:0]\Rmii2Phy_txd_reg[1]_0 ;
  wire mac2Rmii_tx_en_d;
  wire mac2Rmii_tx_en_d2;
  wire mac2Rmii_tx_er_d;
  wire mac2Rmii_tx_er_d2;
  wire \mac2Rmii_txd_d_reg_n_0_[0] ;
  wire \mac2Rmii_txd_d_reg_n_0_[1] ;
  wire \mac2Rmii_txd_d_reg_n_0_[3] ;
  wire p_0_in;
  wire ref_clk;
  wire rmii2Mac_tx_clk_i;
  wire tx_in_reg_en;
  wire txd_dibit;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_present_state[2]_i_1 
       (.I0(\FSM_onehot_present_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_present_state_reg_n_0_[3] ),
        .O(\FSM_onehot_present_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_present_state_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_present_state_reg_n_0_[0] ),
        .S(Reset));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\FSM_onehot_present_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_present_state_reg_n_0_[1] ),
        .R(Reset));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\FSM_onehot_present_state[2]_i_1_n_0 ),
        .Q(txd_dibit),
        .R(Reset));
  (* FSM_ENCODED_STATES = "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_present_state_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(txd_dibit),
        .Q(\FSM_onehot_present_state_reg_n_0_[3] ),
        .R(Reset));
  FDRE Rmii2Phy_tx_en_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac2Rmii_tx_en_d),
        .Q(Rmii2Phy_tx_en),
        .R(Reset));
  LUT5 #(
    .INIT(32'h47BB7488)) 
    \Rmii2Phy_txd[0]_i_1 
       (.I0(p_0_in),
        .I1(txd_dibit),
        .I2(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I3(mac2Rmii_tx_er_d),
        .I4(\mac2Rmii_txd_d_reg_n_0_[0] ),
        .O(\Rmii2Phy_txd[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFCB8B8)) 
    \Rmii2Phy_txd[1]_i_1 
       (.I0(\mac2Rmii_txd_d_reg_n_0_[3] ),
        .I1(txd_dibit),
        .I2(\mac2Rmii_txd_d_reg_n_0_[1] ),
        .I3(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I4(mac2Rmii_tx_er_d),
        .O(\Rmii2Phy_txd[1]_i_1_n_0 ));
  FDRE \Rmii2Phy_txd_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rmii2Phy_txd[0]_i_1_n_0 ),
        .Q(\Rmii2Phy_txd_reg[1]_0 [0]),
        .R(Reset));
  FDRE \Rmii2Phy_txd_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\Rmii2Phy_txd[1]_i_1_n_0 ),
        .Q(\Rmii2Phy_txd_reg[1]_0 [1]),
        .R(Reset));
  FDRE mac2Rmii_tx_en_d_reg
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(mac2Rmii_tx_en_d2),
        .Q(mac2Rmii_tx_en_d),
        .R(Reset));
  LUT2 #(
    .INIT(4'hE)) 
    mac2Rmii_tx_er_d_i_1
       (.I0(txd_dibit),
        .I1(\FSM_onehot_present_state_reg_n_0_[0] ),
        .O(tx_in_reg_en));
  FDRE mac2Rmii_tx_er_d_reg
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(mac2Rmii_tx_er_d2),
        .Q(mac2Rmii_tx_er_d),
        .R(Reset));
  FDRE \mac2Rmii_txd_d_reg[0] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[0]),
        .Q(\mac2Rmii_txd_d_reg_n_0_[0] ),
        .R(Reset));
  FDRE \mac2Rmii_txd_d_reg[1] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[1]),
        .Q(\mac2Rmii_txd_d_reg_n_0_[1] ),
        .R(Reset));
  FDRE \mac2Rmii_txd_d_reg[2] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[2]),
        .Q(p_0_in),
        .R(Reset));
  FDRE \mac2Rmii_txd_d_reg[3] 
       (.C(ref_clk),
        .CE(tx_in_reg_en),
        .D(Q[3]),
        .Q(\mac2Rmii_txd_d_reg_n_0_[3] ),
        .R(Reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rmii2mac_tx_clk_bi_i_1
       (.I0(\FSM_onehot_present_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_present_state_reg_n_0_[1] ),
        .O(rmii2Mac_tx_clk_i));
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
