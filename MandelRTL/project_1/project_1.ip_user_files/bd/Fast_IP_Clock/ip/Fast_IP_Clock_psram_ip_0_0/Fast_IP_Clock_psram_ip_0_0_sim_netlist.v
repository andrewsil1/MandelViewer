// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jun  8 19:34:06 2019
// Host        : AndrewSi64 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Fast_IP_Clock_psram_ip_0_0 -prefix
//               Fast_IP_Clock_psram_ip_0_0_ Fast_IP_Clock_psram_ip_0_0_sim_netlist.v
// Design      : Fast_IP_Clock_psram_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Fast_IP_Clock_psram_ip_0_0_AsyncPSRAM
   (SR,
    mem_cen_i_reg_0,
    MEM_OEN,
    MEM_WEN,
    MEM_BEN,
    MEM_CRE,
    s00_axi_aresetn_0,
    s00_axi_wstrb_2_sp_1,
    \state_reg[2] ,
    mem_idle_reg_0,
    mem_idle_reg_1,
    next_state18_out__0,
    E,
    mem_idle_reg_2,
    s00_axi_wstrb_1_sp_1,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    go_reg,
    MEM_ADDR_OUT,
    mem_idle_reg_3,
    mem_idle_reg_4,
    MEM_DATA_T,
    mem_idle_reg_5,
    MEM_DATA_O,
    \mem_data_rd_i_reg[15]_0 ,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn,
    state,
    axi_rlast_reg,
    s00_axi_rlast,
    axi_rlast_reg_0,
    go,
    command_reg,
    MEM_UBN_reg_0,
    MEM_LBN_reg_0,
    \state_reg[0]_1 ,
    axi_arv_arr_flag,
    s00_axi_wstrb,
    command_reg_0,
    \state_reg[1] ,
    go_reg_0,
    go_reg_1,
    axi_wready_reg,
    s00_axi_wvalid,
    axi_awv_awr_flag,
    command_reg_1,
    \MEM_DATA_O_reg[15]_0 ,
    MEM_DATA_I);
  output [0:0]SR;
  output mem_cen_i_reg_0;
  output MEM_OEN;
  output MEM_WEN;
  output [1:0]MEM_BEN;
  output MEM_CRE;
  output s00_axi_aresetn_0;
  output s00_axi_wstrb_2_sp_1;
  output \state_reg[2] ;
  output mem_idle_reg_0;
  output mem_idle_reg_1;
  output next_state18_out__0;
  output [0:0]E;
  output mem_idle_reg_2;
  output s00_axi_wstrb_1_sp_1;
  output \state_reg[0] ;
  output [0:0]\state_reg[0]_0 ;
  output go_reg;
  output [22:0]MEM_ADDR_OUT;
  output mem_idle_reg_3;
  output mem_idle_reg_4;
  output [0:0]MEM_DATA_T;
  output mem_idle_reg_5;
  output [15:0]MEM_DATA_O;
  output [15:0]\mem_data_rd_i_reg[15]_0 ;
  input s00_axi_aclk;
  input [22:0]Q;
  input s00_axi_aresetn;
  input [2:0]state;
  input axi_rlast_reg;
  input s00_axi_rlast;
  input axi_rlast_reg_0;
  input go;
  input command_reg;
  input MEM_UBN_reg_0;
  input MEM_LBN_reg_0;
  input \state_reg[0]_1 ;
  input axi_arv_arr_flag;
  input [3:0]s00_axi_wstrb;
  input command_reg_0;
  input [0:0]\state_reg[1] ;
  input go_reg_0;
  input go_reg_1;
  input axi_wready_reg;
  input s00_axi_wvalid;
  input axi_awv_awr_flag;
  input command_reg_1;
  input [15:0]\MEM_DATA_O_reg[15]_0 ;
  input [15:0]MEM_DATA_I;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_10_n_0 ;
  wire \FSM_sequential_state[1]_i_11_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_3 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_1 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_2 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_3 ;
  wire [22:0]MEM_ADDR_OUT;
  wire [1:0]MEM_BEN;
  wire MEM_CRE;
  wire MEM_CRE_i_1_n_0;
  wire [15:0]MEM_DATA_I;
  wire [15:0]MEM_DATA_O;
  wire [15:0]\MEM_DATA_O_reg[15]_0 ;
  wire [0:0]MEM_DATA_T;
  wire MEM_LBN_i_1_n_0;
  wire MEM_LBN_reg_0;
  wire MEM_OEN;
  wire MEM_UBN_i_1_n_0;
  wire MEM_UBN_i_2_n_0;
  wire MEM_UBN_reg_0;
  wire MEM_WEN;
  wire MEM_WEN_i_1_n_0;
  wire [22:0]Q;
  wire [0:0]SR;
  wire axi_arv_arr_flag;
  wire axi_awv_awr_flag;
  wire axi_rlast_reg;
  wire axi_rlast_reg_0;
  wire axi_wready_i_2_n_0;
  wire axi_wready_reg;
  wire ce_cycle_counter0;
  wire \ce_cycle_counter[7]_i_2_n_0 ;
  wire \ce_cycle_counter[8]_i_2_n_0 ;
  wire \ce_cycle_counter[8]_i_4_n_0 ;
  wire \ce_cycle_counter[8]_i_5_n_0 ;
  wire \ce_cycle_counter[8]_i_6_n_0 ;
  wire [8:0]ce_cycle_counter_reg;
  wire cem_time_expired_i_1_n_0;
  wire cem_time_expired_reg_n_0;
  wire cen_old;
  wire command_i_4_n_0;
  wire command_reg;
  wire command_reg_0;
  wire command_reg_1;
  wire current_cmd;
  wire current_cmd_reg_n_0;
  wire [2:0]cycle_time;
  wire \cycle_time_reg_n_0_[0] ;
  wire \cycle_time_reg_n_0_[1] ;
  wire \cycle_time_reg_n_0_[2] ;
  wire eqOp;
  wire go;
  wire go_reg;
  wire go_reg_0;
  wire go_reg_1;
  wire [18:0]last_page_read;
  wire \last_page_read[0]_i_1_n_0 ;
  wire \last_page_read[10]_i_1_n_0 ;
  wire \last_page_read[11]_i_1_n_0 ;
  wire \last_page_read[12]_i_1_n_0 ;
  wire \last_page_read[13]_i_1_n_0 ;
  wire \last_page_read[14]_i_1_n_0 ;
  wire \last_page_read[15]_i_1_n_0 ;
  wire \last_page_read[16]_i_1_n_0 ;
  wire \last_page_read[17]_i_1_n_0 ;
  wire \last_page_read[18]_i_2_n_0 ;
  wire \last_page_read[1]_i_1_n_0 ;
  wire \last_page_read[2]_i_1_n_0 ;
  wire \last_page_read[3]_i_1_n_0 ;
  wire \last_page_read[4]_i_1_n_0 ;
  wire \last_page_read[5]_i_1_n_0 ;
  wire \last_page_read[6]_i_1_n_0 ;
  wire \last_page_read[7]_i_1_n_0 ;
  wire \last_page_read[8]_i_1_n_0 ;
  wire \last_page_read[9]_i_1_n_0 ;
  wire last_page_read_0;
  wire [22:0]mem_addr_out_i;
  wire \mem_addr_out_i[22]_i_2_n_0 ;
  wire mem_cen_i_i_11_n_0;
  wire mem_cen_i_i_12_n_0;
  wire mem_cen_i_i_13_n_0;
  wire mem_cen_i_i_14_n_0;
  wire mem_cen_i_i_15_n_0;
  wire mem_cen_i_i_16_n_0;
  wire mem_cen_i_i_17_n_0;
  wire mem_cen_i_i_18_n_0;
  wire mem_cen_i_i_1_n_0;
  wire mem_cen_i_i_2_n_0;
  wire mem_cen_i_i_3_n_0;
  wire mem_cen_i_i_5_n_0;
  wire mem_cen_i_i_6_n_0;
  wire mem_cen_i_i_7_n_0;
  wire mem_cen_i_i_8_n_0;
  wire mem_cen_i_i_9_n_0;
  wire mem_cen_i_reg_0;
  wire mem_cen_i_reg_i_10_n_0;
  wire mem_cen_i_reg_i_10_n_1;
  wire mem_cen_i_reg_i_10_n_2;
  wire mem_cen_i_reg_i_10_n_3;
  wire mem_cen_i_reg_i_4_n_2;
  wire mem_cen_i_reg_i_4_n_3;
  wire mem_data_rd_i;
  wire [15:0]\mem_data_rd_i_reg[15]_0 ;
  wire mem_idle;
  wire mem_idle_i_1_n_0;
  wire mem_idle_reg_0;
  wire mem_idle_reg_1;
  wire mem_idle_reg_2;
  wire mem_idle_reg_3;
  wire mem_idle_reg_4;
  wire mem_idle_reg_5;
  wire mem_oen_i;
  wire mem_oen_i_i_1_n_0;
  wire mem_oen_i_i_3_n_0;
  wire neqOp;
  wire next_state18_out__0;
  wire [8:0]p_0_in;
  wire page_valid_i_1_n_0;
  wire page_valid_i_2_n_0;
  wire page_valid_reg_n_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_rlast;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wstrb_1_sn_1;
  wire s00_axi_wstrb_2_sn_1;
  wire s00_axi_wvalid;
  wire [2:0]state;
  wire state1__12;
  wire \state[2]_i_4_n_0 ;
  wire [1:0]state_1;
  wire \state_reg[0] ;
  wire [0:0]\state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire [0:0]\state_reg[1] ;
  wire \state_reg[2] ;
  wire waitcount;
  wire \waitcount[0]_i_1_n_0 ;
  wire \waitcount[1]_i_1_n_0 ;
  wire \waitcount[2]_i_1_n_0 ;
  wire \waitcount[3]_i_1_n_0 ;
  wire \waitcount[4]_i_1_n_0 ;
  wire \waitcount[5]_i_1_n_0 ;
  wire \waitcount[6]_i_2_n_0 ;
  wire \waitcount[6]_i_3_n_0 ;
  wire \waitcount_reg_n_0_[0] ;
  wire \waitcount_reg_n_0_[1] ;
  wire \waitcount_reg_n_0_[2] ;
  wire \waitcount_reg_n_0_[3] ;
  wire \waitcount_reg_n_0_[4] ;
  wire \waitcount_reg_n_0_[5] ;
  wire \waitcount_reg_n_0_[6] ;
  wire [3:3]\NLW_FSM_sequential_state_reg[1]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED ;
  wire [3:0]NLW_mem_cen_i_reg_i_10_O_UNCONNECTED;
  wire [3:3]NLW_mem_cen_i_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_mem_cen_i_reg_i_4_O_UNCONNECTED;

  assign s00_axi_wstrb_1_sp_1 = s00_axi_wstrb_1_sn_1;
  assign s00_axi_wstrb_2_sp_1 = s00_axi_wstrb_2_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hE5EF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state_1[0]),
        .I1(go),
        .I2(state_1[1]),
        .I3(state1__12),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FC00FFAA00AA00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state1__12),
        .I1(neqOp),
        .I2(mem_cen_i_i_3_n_0),
        .I3(state_1[0]),
        .I4(go),
        .I5(state_1[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[1]_i_10 
       (.I0(Q[7]),
        .I1(last_page_read[3]),
        .I2(Q[8]),
        .I3(last_page_read[4]),
        .I4(last_page_read[5]),
        .I5(Q[9]),
        .O(\FSM_sequential_state[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[1]_i_11 
       (.I0(Q[4]),
        .I1(last_page_read[0]),
        .I2(Q[5]),
        .I3(last_page_read[1]),
        .I4(last_page_read[2]),
        .I5(Q[6]),
        .O(\FSM_sequential_state[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(mem_cen_i_i_9_n_0),
        .I1(\waitcount_reg_n_0_[5] ),
        .I2(\waitcount_reg_n_0_[6] ),
        .I3(\waitcount_reg_n_0_[3] ),
        .I4(\waitcount_reg_n_0_[4] ),
        .O(state1__12));
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(last_page_read[18]),
        .I1(Q[22]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(Q[19]),
        .I1(last_page_read[15]),
        .I2(Q[20]),
        .I3(last_page_read[16]),
        .I4(last_page_read[17]),
        .I5(Q[21]),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(Q[16]),
        .I1(last_page_read[12]),
        .I2(Q[17]),
        .I3(last_page_read[13]),
        .I4(last_page_read[14]),
        .I5(Q[18]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(Q[13]),
        .I1(last_page_read[9]),
        .I2(Q[14]),
        .I3(last_page_read[10]),
        .I4(last_page_read[11]),
        .I5(Q[15]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(Q[10]),
        .I1(last_page_read[6]),
        .I2(Q[11]),
        .I3(last_page_read[7]),
        .I4(last_page_read[8]),
        .I5(Q[12]),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "st_startpage:00,st_delay:11,st_reset:10,st_count:01" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state_1[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "st_startpage:00,st_delay:11,st_reset:10,st_count:01" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state_1[1]),
        .R(SR));
  CARRY4 \FSM_sequential_state_reg[1]_i_3 
       (.CI(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .CO({\NLW_FSM_sequential_state_reg[1]_i_3_CO_UNCONNECTED [3],neqOp,\FSM_sequential_state_reg[1]_i_3_n_2 ,\FSM_sequential_state_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(\NLW_FSM_sequential_state_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\FSM_sequential_state[1]_i_5_n_0 ,\FSM_sequential_state[1]_i_6_n_0 ,\FSM_sequential_state[1]_i_7_n_0 }));
  CARRY4 \FSM_sequential_state_reg[1]_i_4 
       (.CI(1'b0),
        .CO({\FSM_sequential_state_reg[1]_i_4_n_0 ,\FSM_sequential_state_reg[1]_i_4_n_1 ,\FSM_sequential_state_reg[1]_i_4_n_2 ,\FSM_sequential_state_reg[1]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_FSM_sequential_state_reg[1]_i_4_O_UNCONNECTED [3:0]),
        .S({\FSM_sequential_state[1]_i_8_n_0 ,\FSM_sequential_state[1]_i_9_n_0 ,\FSM_sequential_state[1]_i_10_n_0 ,\FSM_sequential_state[1]_i_11_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    MEM_CRE_i_1
       (.I0(state_1[0]),
        .I1(state_1[1]),
        .O(MEM_CRE_i_1_n_0));
  FDRE MEM_CRE_reg
       (.C(s00_axi_aclk),
        .CE(mem_oen_i_i_1_n_0),
        .D(MEM_CRE_i_1_n_0),
        .Q(MEM_CRE),
        .R(SR));
  FDRE \MEM_DATA_O_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [0]),
        .Q(MEM_DATA_O[0]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [10]),
        .Q(MEM_DATA_O[10]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [11]),
        .Q(MEM_DATA_O[11]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [12]),
        .Q(MEM_DATA_O[12]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [13]),
        .Q(MEM_DATA_O[13]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [14]),
        .Q(MEM_DATA_O[14]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [15]),
        .Q(MEM_DATA_O[15]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [1]),
        .Q(MEM_DATA_O[1]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [2]),
        .Q(MEM_DATA_O[2]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [3]),
        .Q(MEM_DATA_O[3]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [4]),
        .Q(MEM_DATA_O[4]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [5]),
        .Q(MEM_DATA_O[5]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [6]),
        .Q(MEM_DATA_O[6]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [7]),
        .Q(MEM_DATA_O[7]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [8]),
        .Q(MEM_DATA_O[8]),
        .R(1'b0));
  FDRE \MEM_DATA_O_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\MEM_DATA_O_reg[15]_0 [9]),
        .Q(MEM_DATA_O[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \MEM_DATA_T[0]_INST_0 
       (.I0(MEM_OEN),
        .O(MEM_DATA_T));
  LUT3 #(
    .INIT(8'h8C)) 
    MEM_LBN_i_1
       (.I0(MEM_LBN_reg_0),
        .I1(state_1[1]),
        .I2(go),
        .O(MEM_LBN_i_1_n_0));
  FDSE MEM_LBN_reg
       (.C(s00_axi_aclk),
        .CE(MEM_UBN_i_1_n_0),
        .D(MEM_LBN_i_1_n_0),
        .Q(MEM_BEN[0]),
        .S(SR));
  LUT1 #(
    .INIT(2'h1)) 
    MEM_UBN_i_1
       (.I0(state_1[0]),
        .O(MEM_UBN_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    MEM_UBN_i_2
       (.I0(MEM_UBN_reg_0),
        .I1(state_1[1]),
        .I2(go),
        .O(MEM_UBN_i_2_n_0));
  FDSE MEM_UBN_reg
       (.C(s00_axi_aclk),
        .CE(MEM_UBN_i_1_n_0),
        .D(MEM_UBN_i_2_n_0),
        .Q(MEM_BEN[1]),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF888F88)) 
    MEM_WEN_i_1
       (.I0(state_1[0]),
        .I1(mem_oen_i_i_3_n_0),
        .I2(go),
        .I3(state_1[1]),
        .I4(command_reg),
        .O(MEM_WEN_i_1_n_0));
  FDSE MEM_WEN_reg
       (.C(s00_axi_aclk),
        .CE(mem_oen_i_i_1_n_0),
        .D(MEM_WEN_i_1_n_0),
        .Q(MEM_WEN),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFC80)) 
    \axi_rdata[15]_i_2 
       (.I0(mem_idle),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(mem_idle_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFF20000)) 
    \axi_rdata[31]_i_2 
       (.I0(mem_idle),
        .I1(go),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(mem_idle_reg_3));
  LUT6 #(
    .INIT(64'h3000380800000000)) 
    axi_rlast_i_1
       (.I0(mem_idle_reg_0),
        .I1(state[2]),
        .I2(axi_rlast_reg),
        .I3(s00_axi_rlast),
        .I4(axi_rlast_reg_0),
        .I5(s00_axi_aresetn),
        .O(\state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_rlast_i_2
       (.I0(mem_idle),
        .I1(go),
        .O(mem_idle_reg_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    axi_rvalid_i_1
       (.I0(go),
        .I1(mem_idle),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .I5(s00_axi_aresetn),
        .O(go_reg));
  LUT6 #(
    .INIT(64'h8888888088808880)) 
    axi_wready_i_1
       (.I0(s00_axi_aresetn),
        .I1(axi_wready_i_2_n_0),
        .I2(state[2]),
        .I3(state[1]),
        .I4(s00_axi_wstrb_2_sn_1),
        .I5(state[0]),
        .O(s00_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h1122112201220000)) 
    axi_wready_i_2
       (.I0(state[0]),
        .I1(state[2]),
        .I2(go),
        .I3(state[1]),
        .I4(mem_idle),
        .I5(axi_wready_reg),
        .O(axi_wready_i_2_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    axi_wready_i_3
       (.I0(s00_axi_wstrb[2]),
        .I1(s00_axi_wstrb[3]),
        .I2(mem_idle),
        .O(s00_axi_wstrb_2_sn_1));
  LUT1 #(
    .INIT(2'h1)) 
    \ce_cycle_counter[0]_i_1 
       (.I0(ce_cycle_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ce_cycle_counter[1]_i_1 
       (.I0(ce_cycle_counter_reg[0]),
        .I1(ce_cycle_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \ce_cycle_counter[2]_i_1 
       (.I0(ce_cycle_counter_reg[1]),
        .I1(ce_cycle_counter_reg[0]),
        .I2(ce_cycle_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \ce_cycle_counter[3]_i_1 
       (.I0(ce_cycle_counter_reg[2]),
        .I1(ce_cycle_counter_reg[0]),
        .I2(ce_cycle_counter_reg[1]),
        .I3(ce_cycle_counter_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \ce_cycle_counter[4]_i_1 
       (.I0(ce_cycle_counter_reg[2]),
        .I1(ce_cycle_counter_reg[4]),
        .I2(ce_cycle_counter_reg[1]),
        .I3(ce_cycle_counter_reg[0]),
        .I4(ce_cycle_counter_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \ce_cycle_counter[5]_i_1 
       (.I0(ce_cycle_counter_reg[1]),
        .I1(ce_cycle_counter_reg[0]),
        .I2(ce_cycle_counter_reg[3]),
        .I3(ce_cycle_counter_reg[2]),
        .I4(ce_cycle_counter_reg[4]),
        .I5(ce_cycle_counter_reg[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \ce_cycle_counter[6]_i_1 
       (.I0(ce_cycle_counter_reg[5]),
        .I1(ce_cycle_counter_reg[4]),
        .I2(ce_cycle_counter_reg[2]),
        .I3(\ce_cycle_counter[7]_i_2_n_0 ),
        .I4(ce_cycle_counter_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \ce_cycle_counter[7]_i_1 
       (.I0(ce_cycle_counter_reg[4]),
        .I1(ce_cycle_counter_reg[2]),
        .I2(\ce_cycle_counter[7]_i_2_n_0 ),
        .I3(ce_cycle_counter_reg[6]),
        .I4(ce_cycle_counter_reg[5]),
        .I5(ce_cycle_counter_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ce_cycle_counter[7]_i_2 
       (.I0(ce_cycle_counter_reg[1]),
        .I1(ce_cycle_counter_reg[0]),
        .I2(ce_cycle_counter_reg[3]),
        .O(\ce_cycle_counter[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ce_cycle_counter[8]_i_1 
       (.I0(cen_old),
        .I1(mem_cen_i_reg_0),
        .O(ce_cycle_counter0));
  LUT2 #(
    .INIT(4'h2)) 
    \ce_cycle_counter[8]_i_2 
       (.I0(\ce_cycle_counter[8]_i_4_n_0 ),
        .I1(mem_cen_i_reg_0),
        .O(\ce_cycle_counter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \ce_cycle_counter[8]_i_3 
       (.I0(ce_cycle_counter_reg[7]),
        .I1(ce_cycle_counter_reg[8]),
        .I2(ce_cycle_counter_reg[5]),
        .I3(ce_cycle_counter_reg[6]),
        .I4(\ce_cycle_counter[8]_i_5_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \ce_cycle_counter[8]_i_4 
       (.I0(\ce_cycle_counter[7]_i_2_n_0 ),
        .I1(ce_cycle_counter_reg[2]),
        .I2(ce_cycle_counter_reg[4]),
        .I3(\ce_cycle_counter[8]_i_6_n_0 ),
        .I4(ce_cycle_counter_reg[7]),
        .I5(ce_cycle_counter_reg[8]),
        .O(\ce_cycle_counter[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ce_cycle_counter[8]_i_5 
       (.I0(ce_cycle_counter_reg[4]),
        .I1(ce_cycle_counter_reg[2]),
        .I2(ce_cycle_counter_reg[3]),
        .I3(ce_cycle_counter_reg[0]),
        .I4(ce_cycle_counter_reg[1]),
        .O(\ce_cycle_counter[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \ce_cycle_counter[8]_i_6 
       (.I0(ce_cycle_counter_reg[6]),
        .I1(ce_cycle_counter_reg[5]),
        .O(\ce_cycle_counter[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(ce_cycle_counter_reg[0]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(ce_cycle_counter_reg[1]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(ce_cycle_counter_reg[2]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(ce_cycle_counter_reg[3]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(ce_cycle_counter_reg[4]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(ce_cycle_counter_reg[5]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(ce_cycle_counter_reg[6]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(ce_cycle_counter_reg[7]),
        .R(ce_cycle_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \ce_cycle_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\ce_cycle_counter[8]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(ce_cycle_counter_reg[8]),
        .R(ce_cycle_counter0));
  LUT4 #(
    .INIT(16'hC0C5)) 
    cem_time_expired_i_1
       (.I0(\ce_cycle_counter[8]_i_4_n_0 ),
        .I1(cem_time_expired_reg_n_0),
        .I2(mem_cen_i_reg_0),
        .I3(cen_old),
        .O(cem_time_expired_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cem_time_expired_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(cem_time_expired_i_1_n_0),
        .Q(cem_time_expired_reg_n_0),
        .R(1'b0));
  FDRE cen_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(mem_cen_i_reg_0),
        .Q(cen_old),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA0A3FFFFA0A30000)) 
    command_i_1
       (.I0(mem_idle),
        .I1(command_reg_0),
        .I2(command_reg_1),
        .I3(state[0]),
        .I4(command_i_4_n_0),
        .I5(command_reg),
        .O(mem_idle_reg_5));
  LUT6 #(
    .INIT(64'h0000F0EF0000000F)) 
    command_i_4
       (.I0(s00_axi_wstrb[2]),
        .I1(s00_axi_wstrb[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(mem_idle),
        .O(command_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    current_cmd_i_1
       (.I0(command_reg),
        .I1(state_1[1]),
        .I2(go),
        .O(current_cmd));
  FDSE #(
    .INIT(1'b1)) 
    current_cmd_reg
       (.C(s00_axi_aclk),
        .CE(MEM_UBN_i_1_n_0),
        .D(current_cmd),
        .Q(current_cmd_reg_n_0),
        .S(SR));
  LUT6 #(
    .INIT(64'hDF000000FFFFFFFF)) 
    \cycle_time[0]_i_1 
       (.I0(page_valid_reg_n_0),
        .I1(cem_time_expired_reg_n_0),
        .I2(eqOp),
        .I3(command_reg),
        .I4(go),
        .I5(state_1[1]),
        .O(cycle_time[0]));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \cycle_time[2]_i_1 
       (.I0(eqOp),
        .I1(page_valid_reg_n_0),
        .I2(cem_time_expired_reg_n_0),
        .I3(command_reg),
        .I4(state_1[1]),
        .I5(go),
        .O(cycle_time[2]));
  FDSE #(
    .INIT(1'b0)) 
    \cycle_time_reg[0] 
       (.C(s00_axi_aclk),
        .CE(MEM_UBN_i_1_n_0),
        .D(cycle_time[0]),
        .Q(\cycle_time_reg_n_0_[0] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \cycle_time_reg[1] 
       (.C(s00_axi_aclk),
        .CE(MEM_UBN_i_1_n_0),
        .D(1'b1),
        .Q(\cycle_time_reg_n_0_[1] ),
        .S(SR));
  FDSE #(
    .INIT(1'b0)) 
    \cycle_time_reg[2] 
       (.C(s00_axi_aclk),
        .CE(MEM_UBN_i_1_n_0),
        .D(cycle_time[2]),
        .Q(\cycle_time_reg_n_0_[2] ),
        .S(SR));
  LUT6 #(
    .INIT(64'h00CE00C200020002)) 
    go_i_1
       (.I0(go_reg_0),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(go_reg_1),
        .I5(mem_idle),
        .O(\state_reg[0] ));
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[0]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[4]),
        .O(\last_page_read[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[10]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[14]),
        .O(\last_page_read[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[11]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[15]),
        .O(\last_page_read[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[12]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[16]),
        .O(\last_page_read[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[13]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[17]),
        .O(\last_page_read[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[14]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[18]),
        .O(\last_page_read[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[15]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[19]),
        .O(\last_page_read[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[16]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[20]),
        .O(\last_page_read[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[17]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[21]),
        .O(\last_page_read[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \last_page_read[18]_i_1 
       (.I0(state_1[0]),
        .I1(state_1[1]),
        .O(last_page_read_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[18]_i_2 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[22]),
        .O(\last_page_read[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[1]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[5]),
        .O(\last_page_read[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[2]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[6]),
        .O(\last_page_read[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[3]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[7]),
        .O(\last_page_read[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[4]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[8]),
        .O(\last_page_read[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[5]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[9]),
        .O(\last_page_read[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[6]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[10]),
        .O(\last_page_read[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[7]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[11]),
        .O(\last_page_read[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[8]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[12]),
        .O(\last_page_read[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \last_page_read[9]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(MEM_ADDR_OUT[13]),
        .O(\last_page_read[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[0]_i_1_n_0 ),
        .Q(last_page_read[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[10] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[10]_i_1_n_0 ),
        .Q(last_page_read[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[11] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[11]_i_1_n_0 ),
        .Q(last_page_read[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[12] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[12]_i_1_n_0 ),
        .Q(last_page_read[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[13] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[13]_i_1_n_0 ),
        .Q(last_page_read[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[14] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[14]_i_1_n_0 ),
        .Q(last_page_read[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[15] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[15]_i_1_n_0 ),
        .Q(last_page_read[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[16] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[16]_i_1_n_0 ),
        .Q(last_page_read[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[17] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[17]_i_1_n_0 ),
        .Q(last_page_read[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[18] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[18]_i_2_n_0 ),
        .Q(last_page_read[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[1]_i_1_n_0 ),
        .Q(last_page_read[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[2] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[2]_i_1_n_0 ),
        .Q(last_page_read[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[3] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[3]_i_1_n_0 ),
        .Q(last_page_read[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[4] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[4]_i_1_n_0 ),
        .Q(last_page_read[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[5] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[5]_i_1_n_0 ),
        .Q(last_page_read[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[6] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[6]_i_1_n_0 ),
        .Q(last_page_read[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[7] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[7]_i_1_n_0 ),
        .Q(last_page_read[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[8] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[8]_i_1_n_0 ),
        .Q(last_page_read[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \last_page_read_reg[9] 
       (.C(s00_axi_aclk),
        .CE(last_page_read_0),
        .D(\last_page_read[9]_i_1_n_0 ),
        .Q(last_page_read[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555F57F5555557F)) 
    \mem_addr[22]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(s00_axi_wstrb_2_sn_1),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(mem_idle),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[0]_i_1 
       (.I0(state_1[1]),
        .I1(Q[0]),
        .O(mem_addr_out_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[10]_i_1 
       (.I0(state_1[1]),
        .I1(Q[10]),
        .O(mem_addr_out_i[10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[11]_i_1 
       (.I0(state_1[1]),
        .I1(Q[11]),
        .O(mem_addr_out_i[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[12]_i_1 
       (.I0(state_1[1]),
        .I1(Q[12]),
        .O(mem_addr_out_i[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[13]_i_1 
       (.I0(state_1[1]),
        .I1(Q[13]),
        .O(mem_addr_out_i[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[14]_i_1 
       (.I0(state_1[1]),
        .I1(Q[14]),
        .O(mem_addr_out_i[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[15]_i_1 
       (.I0(state_1[1]),
        .I1(Q[15]),
        .O(mem_addr_out_i[15]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[16]_i_1 
       (.I0(state_1[1]),
        .I1(Q[16]),
        .O(mem_addr_out_i[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[17]_i_1 
       (.I0(state_1[1]),
        .I1(Q[17]),
        .O(mem_addr_out_i[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[18]_i_1 
       (.I0(state_1[1]),
        .I1(Q[18]),
        .O(mem_addr_out_i[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[19]_i_1 
       (.I0(state_1[1]),
        .I1(Q[19]),
        .O(mem_addr_out_i[19]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[1]_i_1 
       (.I0(state_1[1]),
        .I1(Q[1]),
        .O(mem_addr_out_i[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[20]_i_1 
       (.I0(state_1[1]),
        .I1(Q[20]),
        .O(mem_addr_out_i[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[21]_i_1 
       (.I0(state_1[1]),
        .I1(Q[21]),
        .O(mem_addr_out_i[21]));
  LUT1 #(
    .INIT(2'h1)) 
    \mem_addr_out_i[22]_i_1 
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT3 #(
    .INIT(8'h0D)) 
    \mem_addr_out_i[22]_i_2 
       (.I0(state_1[1]),
        .I1(go),
        .I2(state_1[0]),
        .O(\mem_addr_out_i[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[22]_i_3 
       (.I0(state_1[1]),
        .I1(Q[22]),
        .O(mem_addr_out_i[22]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[2]_i_1 
       (.I0(state_1[1]),
        .I1(Q[2]),
        .O(mem_addr_out_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[3]_i_1 
       (.I0(state_1[1]),
        .I1(Q[3]),
        .O(mem_addr_out_i[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_addr_out_i[4]_i_1 
       (.I0(Q[4]),
        .I1(state_1[1]),
        .O(mem_addr_out_i[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[5]_i_1 
       (.I0(state_1[1]),
        .I1(Q[5]),
        .O(mem_addr_out_i[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[6]_i_1 
       (.I0(state_1[1]),
        .I1(Q[6]),
        .O(mem_addr_out_i[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \mem_addr_out_i[7]_i_1 
       (.I0(Q[7]),
        .I1(state_1[1]),
        .O(mem_addr_out_i[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[8]_i_1 
       (.I0(state_1[1]),
        .I1(Q[8]),
        .O(mem_addr_out_i[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_addr_out_i[9]_i_1 
       (.I0(state_1[1]),
        .I1(Q[9]),
        .O(mem_addr_out_i[9]));
  FDRE \mem_addr_out_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[0]),
        .Q(MEM_ADDR_OUT[0]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[10]),
        .Q(MEM_ADDR_OUT[10]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[11]),
        .Q(MEM_ADDR_OUT[11]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[12]),
        .Q(MEM_ADDR_OUT[12]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[13]),
        .Q(MEM_ADDR_OUT[13]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[14]),
        .Q(MEM_ADDR_OUT[14]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[15]),
        .Q(MEM_ADDR_OUT[15]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[16]),
        .Q(MEM_ADDR_OUT[16]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[17]),
        .Q(MEM_ADDR_OUT[17]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[18]),
        .Q(MEM_ADDR_OUT[18]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[19]),
        .Q(MEM_ADDR_OUT[19]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[1]),
        .Q(MEM_ADDR_OUT[1]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[20]),
        .Q(MEM_ADDR_OUT[20]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[21]),
        .Q(MEM_ADDR_OUT[21]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[22]),
        .Q(MEM_ADDR_OUT[22]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[2]),
        .Q(MEM_ADDR_OUT[2]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[3]),
        .Q(MEM_ADDR_OUT[3]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[4]),
        .Q(MEM_ADDR_OUT[4]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[5]),
        .Q(MEM_ADDR_OUT[5]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[6]),
        .Q(MEM_ADDR_OUT[6]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[7]),
        .Q(MEM_ADDR_OUT[7]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[8]),
        .Q(MEM_ADDR_OUT[8]),
        .R(SR));
  FDRE \mem_addr_out_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\mem_addr_out_i[22]_i_2_n_0 ),
        .D(mem_addr_out_i[9]),
        .Q(MEM_ADDR_OUT[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000022000F)) 
    \mem_byte_en[1]_i_3 
       (.I0(mem_idle),
        .I1(go),
        .I2(command_reg_0),
        .I3(state[0]),
        .I4(state[1]),
        .I5(state[2]),
        .O(mem_idle_reg_2));
  LUT6 #(
    .INIT(64'hEFAAFFFFEFAA0000)) 
    mem_cen_i_i_1
       (.I0(mem_cen_i_i_2_n_0),
        .I1(mem_cen_i_i_3_n_0),
        .I2(eqOp),
        .I3(mem_cen_i_i_5_n_0),
        .I4(mem_cen_i_i_6_n_0),
        .I5(mem_cen_i_reg_0),
        .O(mem_cen_i_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    mem_cen_i_i_11
       (.I0(last_page_read[18]),
        .I1(Q[22]),
        .O(mem_cen_i_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_cen_i_i_12
       (.I0(Q[19]),
        .I1(last_page_read[15]),
        .I2(Q[20]),
        .I3(last_page_read[16]),
        .I4(last_page_read[17]),
        .I5(Q[21]),
        .O(mem_cen_i_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_cen_i_i_13
       (.I0(Q[16]),
        .I1(last_page_read[12]),
        .I2(Q[17]),
        .I3(last_page_read[13]),
        .I4(last_page_read[14]),
        .I5(Q[18]),
        .O(mem_cen_i_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF00F200)) 
    mem_cen_i_i_14
       (.I0(cem_time_expired_reg_n_0),
        .I1(mem_cen_i_reg_0),
        .I2(go),
        .I3(state_1[1]),
        .I4(state_1[0]),
        .O(mem_cen_i_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_cen_i_i_15
       (.I0(Q[13]),
        .I1(last_page_read[9]),
        .I2(Q[14]),
        .I3(last_page_read[10]),
        .I4(last_page_read[11]),
        .I5(Q[15]),
        .O(mem_cen_i_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_cen_i_i_16
       (.I0(Q[10]),
        .I1(last_page_read[6]),
        .I2(Q[11]),
        .I3(last_page_read[7]),
        .I4(last_page_read[8]),
        .I5(Q[12]),
        .O(mem_cen_i_i_16_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_cen_i_i_17
       (.I0(Q[7]),
        .I1(last_page_read[3]),
        .I2(Q[8]),
        .I3(last_page_read[4]),
        .I4(last_page_read[5]),
        .I5(Q[9]),
        .O(mem_cen_i_i_17_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_cen_i_i_18
       (.I0(Q[4]),
        .I1(last_page_read[0]),
        .I2(Q[5]),
        .I3(last_page_read[1]),
        .I4(last_page_read[2]),
        .I5(Q[6]),
        .O(mem_cen_i_i_18_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    mem_cen_i_i_2
       (.I0(mem_cen_i_i_7_n_0),
        .I1(mem_cen_i_i_8_n_0),
        .I2(mem_cen_i_i_9_n_0),
        .I3(current_cmd_reg_n_0),
        .I4(state_1[0]),
        .I5(state_1[1]),
        .O(mem_cen_i_i_2_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    mem_cen_i_i_3
       (.I0(page_valid_reg_n_0),
        .I1(cem_time_expired_reg_n_0),
        .I2(command_reg),
        .O(mem_cen_i_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    mem_cen_i_i_5
       (.I0(state_1[1]),
        .I1(go),
        .I2(state_1[0]),
        .O(mem_cen_i_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBAAABBBB)) 
    mem_cen_i_i_6
       (.I0(mem_cen_i_i_14_n_0),
        .I1(state_1[1]),
        .I2(mem_cen_i_i_9_n_0),
        .I3(mem_cen_i_i_8_n_0),
        .I4(state_1[0]),
        .O(mem_cen_i_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    mem_cen_i_i_7
       (.I0(mem_cen_i_reg_0),
        .I1(state_1[0]),
        .I2(cem_time_expired_reg_n_0),
        .I3(state_1[1]),
        .O(mem_cen_i_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    mem_cen_i_i_8
       (.I0(\waitcount_reg_n_0_[4] ),
        .I1(\waitcount_reg_n_0_[3] ),
        .I2(\waitcount_reg_n_0_[6] ),
        .I3(\waitcount_reg_n_0_[5] ),
        .O(mem_cen_i_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    mem_cen_i_i_9
       (.I0(\cycle_time_reg_n_0_[0] ),
        .I1(\waitcount_reg_n_0_[0] ),
        .I2(\cycle_time_reg_n_0_[1] ),
        .I3(\waitcount_reg_n_0_[1] ),
        .I4(\waitcount_reg_n_0_[2] ),
        .I5(\cycle_time_reg_n_0_[2] ),
        .O(mem_cen_i_i_9_n_0));
  FDSE mem_cen_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(mem_cen_i_i_1_n_0),
        .Q(mem_cen_i_reg_0),
        .S(SR));
  CARRY4 mem_cen_i_reg_i_10
       (.CI(1'b0),
        .CO({mem_cen_i_reg_i_10_n_0,mem_cen_i_reg_i_10_n_1,mem_cen_i_reg_i_10_n_2,mem_cen_i_reg_i_10_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mem_cen_i_reg_i_10_O_UNCONNECTED[3:0]),
        .S({mem_cen_i_i_15_n_0,mem_cen_i_i_16_n_0,mem_cen_i_i_17_n_0,mem_cen_i_i_18_n_0}));
  CARRY4 mem_cen_i_reg_i_4
       (.CI(mem_cen_i_reg_i_10_n_0),
        .CO({NLW_mem_cen_i_reg_i_4_CO_UNCONNECTED[3],eqOp,mem_cen_i_reg_i_4_n_2,mem_cen_i_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_mem_cen_i_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,mem_cen_i_i_11_n_0,mem_cen_i_i_12_n_0,mem_cen_i_i_13_n_0}));
  LUT4 #(
    .INIT(16'h2000)) 
    \mem_data_rd_i[15]_i_1 
       (.I0(current_cmd_reg_n_0),
        .I1(state_1[1]),
        .I2(state_1[0]),
        .I3(state1__12),
        .O(mem_data_rd_i));
  FDRE \mem_data_rd_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[0]),
        .Q(\mem_data_rd_i_reg[15]_0 [0]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[10]),
        .Q(\mem_data_rd_i_reg[15]_0 [10]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[11]),
        .Q(\mem_data_rd_i_reg[15]_0 [11]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[12] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[12]),
        .Q(\mem_data_rd_i_reg[15]_0 [12]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[13] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[13]),
        .Q(\mem_data_rd_i_reg[15]_0 [13]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[14] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[14]),
        .Q(\mem_data_rd_i_reg[15]_0 [14]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[15] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[15]),
        .Q(\mem_data_rd_i_reg[15]_0 [15]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[1]),
        .Q(\mem_data_rd_i_reg[15]_0 [1]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[2]),
        .Q(\mem_data_rd_i_reg[15]_0 [2]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[3]),
        .Q(\mem_data_rd_i_reg[15]_0 [3]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[4]),
        .Q(\mem_data_rd_i_reg[15]_0 [4]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[5]),
        .Q(\mem_data_rd_i_reg[15]_0 [5]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[6]),
        .Q(\mem_data_rd_i_reg[15]_0 [6]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[7]),
        .Q(\mem_data_rd_i_reg[15]_0 [7]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[8]),
        .Q(\mem_data_rd_i_reg[15]_0 [8]),
        .R(SR));
  FDRE \mem_data_rd_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(mem_data_rd_i),
        .D(MEM_DATA_I[9]),
        .Q(\mem_data_rd_i_reg[15]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'hEEDFEEDFFFDFEEDF)) 
    \mem_data_wr[15]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(s00_axi_wstrb_2_sn_1),
        .I3(state[1]),
        .I4(mem_idle),
        .I5(go),
        .O(\state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    mem_idle_i_1
       (.I0(state_1[0]),
        .I1(mem_oen_i_i_3_n_0),
        .I2(state_1[1]),
        .I3(go),
        .O(mem_idle_i_1_n_0));
  FDSE mem_idle_reg
       (.C(s00_axi_aclk),
        .CE(mem_oen_i_i_1_n_0),
        .D(mem_idle_i_1_n_0),
        .Q(mem_idle),
        .S(SR));
  LUT3 #(
    .INIT(8'h4F)) 
    mem_oen_i_i_1
       (.I0(state_1[1]),
        .I1(mem_oen_i_i_3_n_0),
        .I2(state_1[0]),
        .O(mem_oen_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F007F7F)) 
    mem_oen_i_i_2
       (.I0(command_reg),
        .I1(go),
        .I2(state_1[1]),
        .I3(mem_oen_i_i_3_n_0),
        .I4(state_1[0]),
        .O(mem_oen_i));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    mem_oen_i_i_3
       (.I0(\waitcount_reg_n_0_[4] ),
        .I1(\waitcount_reg_n_0_[3] ),
        .I2(\waitcount_reg_n_0_[6] ),
        .I3(\waitcount_reg_n_0_[5] ),
        .I4(mem_cen_i_i_9_n_0),
        .O(mem_oen_i_i_3_n_0));
  FDSE mem_oen_i_reg
       (.C(s00_axi_aclk),
        .CE(mem_oen_i_i_1_n_0),
        .D(mem_oen_i),
        .Q(MEM_OEN),
        .S(SR));
  LUT4 #(
    .INIT(16'h2F20)) 
    page_valid_i_1
       (.I0(current_cmd_reg_n_0),
        .I1(state_1[1]),
        .I2(page_valid_i_2_n_0),
        .I3(page_valid_reg_n_0),
        .O(page_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FF0400)) 
    page_valid_i_2
       (.I0(go),
        .I1(cem_time_expired_reg_n_0),
        .I2(mem_cen_i_reg_0),
        .I3(state_1[1]),
        .I4(state_1[0]),
        .O(page_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    page_valid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(page_valid_i_1_n_0),
        .Q(page_valid_reg_n_0),
        .R(SR));
  LUT5 #(
    .INIT(32'h10001F00)) 
    \state[1]_i_2 
       (.I0(s00_axi_wstrb[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(next_state18_out__0),
        .I3(\state_reg[0]_1 ),
        .I4(\state_reg[1] ),
        .O(s00_axi_wstrb_1_sn_1));
  LUT5 #(
    .INIT(32'h00040000)) 
    \state[2]_i_2 
       (.I0(axi_wready_reg),
        .I1(s00_axi_wvalid),
        .I2(mem_idle),
        .I3(axi_arv_arr_flag),
        .I4(axi_awv_awr_flag),
        .O(next_state18_out__0));
  LUT5 #(
    .INIT(32'hEAEEEAEA)) 
    \state[2]_i_3 
       (.I0(\state[2]_i_4_n_0 ),
        .I1(\state_reg[0]_1 ),
        .I2(next_state18_out__0),
        .I3(mem_idle),
        .I4(axi_arv_arr_flag),
        .O(mem_idle_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF8CAE88)) 
    \state[2]_i_4 
       (.I0(state[0]),
        .I1(mem_idle),
        .I2(go),
        .I3(state[2]),
        .I4(state[1]),
        .O(\state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \waitcount[0]_i_1 
       (.I0(mem_oen_i_i_3_n_0),
        .I1(\waitcount_reg_n_0_[0] ),
        .O(\waitcount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \waitcount[1]_i_1 
       (.I0(mem_oen_i_i_3_n_0),
        .I1(\waitcount_reg_n_0_[0] ),
        .I2(\waitcount_reg_n_0_[1] ),
        .O(\waitcount[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \waitcount[2]_i_1 
       (.I0(mem_oen_i_i_3_n_0),
        .I1(\waitcount_reg_n_0_[0] ),
        .I2(\waitcount_reg_n_0_[1] ),
        .I3(\waitcount_reg_n_0_[2] ),
        .O(\waitcount[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \waitcount[3]_i_1 
       (.I0(mem_oen_i_i_3_n_0),
        .I1(\waitcount_reg_n_0_[1] ),
        .I2(\waitcount_reg_n_0_[0] ),
        .I3(\waitcount_reg_n_0_[2] ),
        .I4(\waitcount_reg_n_0_[3] ),
        .O(\waitcount[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \waitcount[4]_i_1 
       (.I0(mem_oen_i_i_3_n_0),
        .I1(\waitcount_reg_n_0_[3] ),
        .I2(\waitcount_reg_n_0_[2] ),
        .I3(\waitcount_reg_n_0_[0] ),
        .I4(\waitcount_reg_n_0_[1] ),
        .I5(\waitcount_reg_n_0_[4] ),
        .O(\waitcount[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h21)) 
    \waitcount[5]_i_1 
       (.I0(\waitcount[6]_i_3_n_0 ),
        .I1(mem_oen_i_i_3_n_0),
        .I2(\waitcount_reg_n_0_[5] ),
        .O(\waitcount[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \waitcount[6]_i_1 
       (.I0(state_1[1]),
        .I1(state_1[0]),
        .I2(s00_axi_aresetn),
        .O(waitcount));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0B04)) 
    \waitcount[6]_i_2 
       (.I0(\waitcount[6]_i_3_n_0 ),
        .I1(\waitcount_reg_n_0_[5] ),
        .I2(mem_oen_i_i_3_n_0),
        .I3(\waitcount_reg_n_0_[6] ),
        .O(\waitcount[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \waitcount[6]_i_3 
       (.I0(\waitcount_reg_n_0_[3] ),
        .I1(\waitcount_reg_n_0_[2] ),
        .I2(\waitcount_reg_n_0_[0] ),
        .I3(\waitcount_reg_n_0_[1] ),
        .I4(\waitcount_reg_n_0_[4] ),
        .O(\waitcount[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \waitcount_reg[0] 
       (.C(s00_axi_aclk),
        .CE(waitcount),
        .D(\waitcount[0]_i_1_n_0 ),
        .Q(\waitcount_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \waitcount_reg[1] 
       (.C(s00_axi_aclk),
        .CE(waitcount),
        .D(\waitcount[1]_i_1_n_0 ),
        .Q(\waitcount_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \waitcount_reg[2] 
       (.C(s00_axi_aclk),
        .CE(waitcount),
        .D(\waitcount[2]_i_1_n_0 ),
        .Q(\waitcount_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \waitcount_reg[3] 
       (.C(s00_axi_aclk),
        .CE(waitcount),
        .D(\waitcount[3]_i_1_n_0 ),
        .Q(\waitcount_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \waitcount_reg[4] 
       (.C(s00_axi_aclk),
        .CE(waitcount),
        .D(\waitcount[4]_i_1_n_0 ),
        .Q(\waitcount_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \waitcount_reg[5] 
       (.C(s00_axi_aclk),
        .CE(waitcount),
        .D(\waitcount[5]_i_1_n_0 ),
        .Q(\waitcount_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \waitcount_reg[6] 
       (.C(s00_axi_aclk),
        .CE(waitcount),
        .D(\waitcount[6]_i_2_n_0 ),
        .Q(\waitcount_reg_n_0_[6] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Fast_IP_Clock_psram_ip_0_0,psram_ip_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "psram_ip_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Fast_IP_Clock_psram_ip_0_0
   (MEM_ADDR_OUT,
    MEM_CEN,
    MEM_OEN,
    MEM_WEN,
    MEM_BEN,
    MEM_ADV,
    MEM_CRE,
    MEM_DATA_I,
    MEM_DATA_O,
    MEM_DATA_T,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awid,
    s00_axi_awaddr,
    s00_axi_awlen,
    s00_axi_awsize,
    s00_axi_awburst,
    s00_axi_awlock,
    s00_axi_awcache,
    s00_axi_awprot,
    s00_axi_awqos,
    s00_axi_awregion,
    s00_axi_awuser,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wlast,
    s00_axi_wuser,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bid,
    s00_axi_bresp,
    s00_axi_buser,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_arid,
    s00_axi_araddr,
    s00_axi_arlen,
    s00_axi_arsize,
    s00_axi_arburst,
    s00_axi_arlock,
    s00_axi_arcache,
    s00_axi_arprot,
    s00_axi_arqos,
    s00_axi_arregion,
    s00_axi_aruser,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rid,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rlast,
    s00_axi_ruser,
    s00_axi_rvalid,
    s00_axi_rready);
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl ADDR" *) output [22:0]MEM_ADDR_OUT;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl CE_N" *) output MEM_CEN;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl OEN" *) output MEM_OEN;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl WEN" *) output MEM_WEN;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl BEN" *) output [1:0]MEM_BEN;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl ADV_LDN" *) output MEM_ADV;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl CRE" *) output MEM_CRE;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl DQ_I" *) input [15:0]MEM_DATA_I;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl DQ_O" *) output [15:0]MEM_DATA_O;
  (* x_interface_info = "xilinx.com:interface:emc:1.0 psram_rtl DQ_T" *) output [15:0]MEM_DATA_T;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ.DATA_WIDTH 32, WIZ.MEMORY_SIZE 1024, SUPPORTS_NARROW_BURST 1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 24, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [1:0]s00_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [23:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]s00_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]s00_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]s00_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input s00_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]s00_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]s00_axi_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]s00_axi_awregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWUSER" *) input [0:0]s00_axi_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input s00_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) input [0:0]s00_axi_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [1:0]s00_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BUSER" *) output [0:0]s00_axi_buser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [1:0]s00_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [23:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]s00_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]s00_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]s00_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input s00_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]s00_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]s00_axi_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]s00_axi_arregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARUSER" *) input [0:0]s00_axi_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [1:0]s00_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output s00_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [0:0]s00_axi_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire [22:0]MEM_ADDR_OUT;
  wire [1:0]MEM_BEN;
  wire MEM_CEN;
  wire MEM_CRE;
  wire [15:0]MEM_DATA_I;
  wire [15:0]MEM_DATA_O;
  wire [0:0]\^MEM_DATA_T ;
  wire MEM_OEN;
  wire MEM_WEN;
  wire s00_axi_aclk;
  wire [23:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [23:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign MEM_ADV = \<const0> ;
  assign MEM_DATA_T[15] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[14] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[13] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[12] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[11] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[10] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[9] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[8] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[7] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[6] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[5] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[4] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[3] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[2] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[1] = \^MEM_DATA_T [0];
  assign MEM_DATA_T[0] = \^MEM_DATA_T [0];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_buser[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0 U0
       (.MEM_ADDR_OUT(MEM_ADDR_OUT),
        .MEM_BEN(MEM_BEN),
        .MEM_CRE(MEM_CRE),
        .MEM_DATA_I(MEM_DATA_I),
        .MEM_DATA_O(MEM_DATA_O),
        .MEM_DATA_T(\^MEM_DATA_T ),
        .MEM_OEN(MEM_OEN),
        .MEM_WEN(MEM_WEN),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .axi_wready_reg(s00_axi_wready),
        .mem_cen_i_reg(MEM_CEN),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[23:1]),
        .s00_axi_arburst(s00_axi_arburst),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arlen(s00_axi_arlen),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[23:2]),
        .s00_axi_awburst(s00_axi_awburst),
        .s00_axi_awlen(s00_axi_awlen),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wlast(s00_axi_wlast),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0
   (mem_cen_i_reg,
    MEM_ADDR_OUT,
    MEM_OEN,
    MEM_WEN,
    MEM_BEN,
    MEM_CRE,
    MEM_DATA_O,
    s00_axi_rdata,
    s00_axi_rlast,
    axi_rvalid_reg,
    axi_arready_reg,
    axi_wready_reg,
    axi_awready_reg,
    MEM_DATA_T,
    s00_axi_bvalid,
    s00_axi_arlen,
    s00_axi_awlen,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_wstrb,
    MEM_DATA_I,
    s00_axi_arburst,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_araddr,
    s00_axi_awburst,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wlast,
    s00_axi_bready);
  output mem_cen_i_reg;
  output [22:0]MEM_ADDR_OUT;
  output MEM_OEN;
  output MEM_WEN;
  output [1:0]MEM_BEN;
  output MEM_CRE;
  output [15:0]MEM_DATA_O;
  output [31:0]s00_axi_rdata;
  output s00_axi_rlast;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output axi_wready_reg;
  output axi_awready_reg;
  output [0:0]MEM_DATA_T;
  output s00_axi_bvalid;
  input [7:0]s00_axi_arlen;
  input [7:0]s00_axi_awlen;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [3:0]s00_axi_wstrb;
  input [15:0]MEM_DATA_I;
  input [1:0]s00_axi_arburst;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [22:0]s00_axi_araddr;
  input [1:0]s00_axi_awburst;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [21:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_wlast;
  input s00_axi_bready;

  wire [22:0]MEM_ADDR_OUT;
  wire [1:0]MEM_BEN;
  wire MEM_CRE;
  wire [15:0]MEM_DATA_I;
  wire [15:0]MEM_DATA_O;
  wire [0:0]MEM_DATA_T;
  wire MEM_OEN;
  wire MEM_WEN;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire axi_wready_reg;
  wire mem_cen_i_reg;
  wire s00_axi_aclk;
  wire [22:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arvalid;
  wire [21:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0_S00_AXI psram_ip_v1_0_S00_AXI_inst
       (.MEM_ADDR_OUT(MEM_ADDR_OUT),
        .MEM_BEN(MEM_BEN),
        .MEM_CRE(MEM_CRE),
        .MEM_DATA_I(MEM_DATA_I),
        .MEM_DATA_O(MEM_DATA_O),
        .MEM_DATA_T(MEM_DATA_T),
        .MEM_OEN(MEM_OEN),
        .MEM_WEN(MEM_WEN),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .mem_cen_i_reg(mem_cen_i_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arburst(s00_axi_arburst),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arlen(s00_axi_arlen),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awburst(s00_axi_awburst),
        .s00_axi_awlen(s00_axi_awlen),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wlast(s00_axi_wlast),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module Fast_IP_Clock_psram_ip_0_0_psram_ip_v1_0_S00_AXI
   (mem_cen_i_reg,
    MEM_ADDR_OUT,
    MEM_OEN,
    MEM_WEN,
    MEM_BEN,
    MEM_CRE,
    MEM_DATA_O,
    s00_axi_rdata,
    s00_axi_rlast,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    axi_wready_reg_0,
    axi_awready_reg_0,
    MEM_DATA_T,
    s00_axi_bvalid,
    s00_axi_arlen,
    s00_axi_awlen,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_wstrb,
    MEM_DATA_I,
    s00_axi_arburst,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_araddr,
    s00_axi_awburst,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wlast,
    s00_axi_bready);
  output mem_cen_i_reg;
  output [22:0]MEM_ADDR_OUT;
  output MEM_OEN;
  output MEM_WEN;
  output [1:0]MEM_BEN;
  output MEM_CRE;
  output [15:0]MEM_DATA_O;
  output [31:0]s00_axi_rdata;
  output s00_axi_rlast;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output [0:0]MEM_DATA_T;
  output s00_axi_bvalid;
  input [7:0]s00_axi_arlen;
  input [7:0]s00_axi_awlen;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [3:0]s00_axi_wstrb;
  input [15:0]MEM_DATA_I;
  input [1:0]s00_axi_arburst;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [22:0]s00_axi_araddr;
  input [1:0]s00_axi_awburst;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [21:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input s00_axi_wlast;
  input s00_axi_bready;

  wire AsyncPSRAMinst_n_10;
  wire AsyncPSRAMinst_n_11;
  wire AsyncPSRAMinst_n_13;
  wire AsyncPSRAMinst_n_14;
  wire AsyncPSRAMinst_n_15;
  wire AsyncPSRAMinst_n_16;
  wire AsyncPSRAMinst_n_17;
  wire AsyncPSRAMinst_n_18;
  wire AsyncPSRAMinst_n_42;
  wire AsyncPSRAMinst_n_43;
  wire AsyncPSRAMinst_n_45;
  wire AsyncPSRAMinst_n_7;
  wire AsyncPSRAMinst_n_8;
  wire AsyncPSRAMinst_n_9;
  wire [23:2]L;
  wire [22:0]MEM_ADDR_OUT;
  wire [1:0]MEM_BEN;
  wire MEM_CRE;
  wire [15:0]MEM_DATA_I;
  wire [15:0]MEM_DATA_O;
  wire [0:0]MEM_DATA_T;
  wire MEM_OEN;
  wire MEM_WEN;
  wire axi_araddr1;
  wire axi_araddr110_out;
  wire \axi_araddr[23]_i_1_n_0 ;
  wire \axi_araddr[23]_i_3_n_0 ;
  wire \axi_araddr[23]_i_4_n_0 ;
  wire \axi_araddr[23]_i_5_n_0 ;
  wire \axi_araddr[23]_i_6_n_0 ;
  wire \axi_araddr[23]_i_7_n_0 ;
  wire \axi_araddr[23]_i_8_n_0 ;
  wire \axi_araddr_reg_n_0_[1] ;
  wire [7:0]axi_arlen;
  wire \axi_arlen_cntr[6]_i_2_n_0 ;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire axi_arready_i_1_n_0;
  wire axi_arready_i_2_n_0;
  wire axi_arready_i_3_n_0;
  wire axi_arready_i_4_n_0;
  wire axi_arready_reg_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1_n_0;
  wire \axi_awaddr[10]_i_1_n_0 ;
  wire \axi_awaddr[11]_i_1_n_0 ;
  wire \axi_awaddr[12]_i_1_n_0 ;
  wire \axi_awaddr[13]_i_1_n_0 ;
  wire \axi_awaddr[14]_i_1_n_0 ;
  wire \axi_awaddr[15]_i_1_n_0 ;
  wire \axi_awaddr[16]_i_1_n_0 ;
  wire \axi_awaddr[17]_i_1_n_0 ;
  wire \axi_awaddr[18]_i_1_n_0 ;
  wire \axi_awaddr[19]_i_1_n_0 ;
  wire \axi_awaddr[20]_i_1_n_0 ;
  wire \axi_awaddr[21]_i_1_n_0 ;
  wire \axi_awaddr[22]_i_1_n_0 ;
  wire \axi_awaddr[23]_i_1_n_0 ;
  wire \axi_awaddr[23]_i_2_n_0 ;
  wire \axi_awaddr[23]_i_3_n_0 ;
  wire \axi_awaddr[23]_i_4_n_0 ;
  wire \axi_awaddr[23]_i_5_n_0 ;
  wire \axi_awaddr[23]_i_6_n_0 ;
  wire \axi_awaddr[23]_i_7_n_0 ;
  wire \axi_awaddr[23]_i_8_n_0 ;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr[5]_i_1_n_0 ;
  wire \axi_awaddr[6]_i_1_n_0 ;
  wire \axi_awaddr[7]_i_1_n_0 ;
  wire \axi_awaddr[8]_i_1_n_0 ;
  wire \axi_awaddr[9]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[10] ;
  wire \axi_awaddr_reg_n_0_[11] ;
  wire \axi_awaddr_reg_n_0_[12] ;
  wire \axi_awaddr_reg_n_0_[13] ;
  wire \axi_awaddr_reg_n_0_[14] ;
  wire \axi_awaddr_reg_n_0_[15] ;
  wire \axi_awaddr_reg_n_0_[16] ;
  wire \axi_awaddr_reg_n_0_[17] ;
  wire \axi_awaddr_reg_n_0_[18] ;
  wire \axi_awaddr_reg_n_0_[19] ;
  wire \axi_awaddr_reg_n_0_[20] ;
  wire \axi_awaddr_reg_n_0_[21] ;
  wire \axi_awaddr_reg_n_0_[22] ;
  wire \axi_awaddr_reg_n_0_[23] ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire \axi_awaddr_reg_n_0_[7] ;
  wire \axi_awaddr_reg_n_0_[8] ;
  wire \axi_awaddr_reg_n_0_[9] ;
  wire [7:0]axi_awlen;
  wire \axi_awlen_cntr[0]_i_1_n_0 ;
  wire \axi_awlen_cntr[6]_i_2_n_0 ;
  wire \axi_awlen_cntr[7]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_2_n_0 ;
  wire \axi_awlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_awlen_cntr_reg;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rlast_i_3_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_reg_0;
  wire command_i_2_n_0;
  wire command_i_3_n_0;
  wire command_reg_n_0;
  wire go;
  wire go14_out__0;
  wire go1__1;
  wire go_i_2_n_0;
  wire go_i_3_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire leqOp;
  wire leqOp15_in;
  wire leqOp_carry_i_1_n_0;
  wire leqOp_carry_i_2_n_0;
  wire leqOp_carry_i_3_n_0;
  wire leqOp_carry_i_4_n_0;
  wire leqOp_carry_i_5_n_0;
  wire leqOp_carry_i_6_n_0;
  wire leqOp_carry_i_7_n_0;
  wire leqOp_carry_i_8_n_0;
  wire leqOp_carry_n_1;
  wire leqOp_carry_n_2;
  wire leqOp_carry_n_3;
  wire \leqOp_inferred__0/i__carry_n_1 ;
  wire \leqOp_inferred__0/i__carry_n_2 ;
  wire \leqOp_inferred__0/i__carry_n_3 ;
  wire [22:0]mem_addr;
  wire \mem_addr[0]_i_1_n_0 ;
  wire \mem_addr[0]_i_2_n_0 ;
  wire \mem_addr[10]_i_1_n_0 ;
  wire \mem_addr[11]_i_1_n_0 ;
  wire \mem_addr[12]_i_1_n_0 ;
  wire \mem_addr[13]_i_1_n_0 ;
  wire \mem_addr[14]_i_1_n_0 ;
  wire \mem_addr[15]_i_1_n_0 ;
  wire \mem_addr[16]_i_1_n_0 ;
  wire \mem_addr[17]_i_1_n_0 ;
  wire \mem_addr[18]_i_1_n_0 ;
  wire \mem_addr[19]_i_1_n_0 ;
  wire \mem_addr[1]_i_1_n_0 ;
  wire \mem_addr[20]_i_1_n_0 ;
  wire \mem_addr[21]_i_1_n_0 ;
  wire \mem_addr[22]_i_2_n_0 ;
  wire \mem_addr[22]_i_3_n_0 ;
  wire \mem_addr[22]_i_5_n_0 ;
  wire \mem_addr[22]_i_6_n_0 ;
  wire \mem_addr[2]_i_1_n_0 ;
  wire \mem_addr[3]_i_1_n_0 ;
  wire \mem_addr[4]_i_1_n_0 ;
  wire \mem_addr[5]_i_1_n_0 ;
  wire \mem_addr[6]_i_1_n_0 ;
  wire \mem_addr[7]_i_1_n_0 ;
  wire \mem_addr[8]_i_1_n_0 ;
  wire \mem_addr[9]_i_1_n_0 ;
  wire \mem_addr_reg[12]_i_2_n_0 ;
  wire \mem_addr_reg[12]_i_2_n_1 ;
  wire \mem_addr_reg[12]_i_2_n_2 ;
  wire \mem_addr_reg[12]_i_2_n_3 ;
  wire \mem_addr_reg[16]_i_2_n_0 ;
  wire \mem_addr_reg[16]_i_2_n_1 ;
  wire \mem_addr_reg[16]_i_2_n_2 ;
  wire \mem_addr_reg[16]_i_2_n_3 ;
  wire \mem_addr_reg[20]_i_2_n_0 ;
  wire \mem_addr_reg[20]_i_2_n_1 ;
  wire \mem_addr_reg[20]_i_2_n_2 ;
  wire \mem_addr_reg[20]_i_2_n_3 ;
  wire \mem_addr_reg[22]_i_4_n_3 ;
  wire \mem_addr_reg[4]_i_2_n_0 ;
  wire \mem_addr_reg[4]_i_2_n_1 ;
  wire \mem_addr_reg[4]_i_2_n_2 ;
  wire \mem_addr_reg[4]_i_2_n_3 ;
  wire \mem_addr_reg[8]_i_2_n_0 ;
  wire \mem_addr_reg[8]_i_2_n_1 ;
  wire \mem_addr_reg[8]_i_2_n_2 ;
  wire \mem_addr_reg[8]_i_2_n_3 ;
  wire \mem_byte_en[0]_i_1_n_0 ;
  wire \mem_byte_en[0]_i_2_n_0 ;
  wire \mem_byte_en[1]_i_1_n_0 ;
  wire \mem_byte_en[1]_i_2_n_0 ;
  wire \mem_byte_en[1]_i_4_n_0 ;
  wire \mem_byte_en[1]_i_5_n_0 ;
  wire \mem_byte_en_reg_n_0_[0] ;
  wire \mem_byte_en_reg_n_0_[1] ;
  wire mem_cen_i_reg;
  wire [15:0]mem_data_rd;
  wire [15:0]mem_data_wr;
  wire \mem_data_wr[0]_i_1_n_0 ;
  wire \mem_data_wr[10]_i_1_n_0 ;
  wire \mem_data_wr[11]_i_1_n_0 ;
  wire \mem_data_wr[12]_i_1_n_0 ;
  wire \mem_data_wr[13]_i_1_n_0 ;
  wire \mem_data_wr[14]_i_1_n_0 ;
  wire \mem_data_wr[15]_i_2_n_0 ;
  wire \mem_data_wr[15]_i_3_n_0 ;
  wire \mem_data_wr[15]_i_4_n_0 ;
  wire \mem_data_wr[15]_i_5_n_0 ;
  wire \mem_data_wr[1]_i_1_n_0 ;
  wire \mem_data_wr[2]_i_1_n_0 ;
  wire \mem_data_wr[3]_i_1_n_0 ;
  wire \mem_data_wr[4]_i_1_n_0 ;
  wire \mem_data_wr[5]_i_1_n_0 ;
  wire \mem_data_wr[6]_i_1_n_0 ;
  wire \mem_data_wr[7]_i_1_n_0 ;
  wire \mem_data_wr[8]_i_1_n_0 ;
  wire \mem_data_wr[9]_i_1_n_0 ;
  wire [23:2]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_i_5_n_0;
  wire minusOp_carry__0_i_6_n_0;
  wire minusOp_carry__0_i_7_n_0;
  wire minusOp_carry__0_i_8_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_i_5_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_i_5_n_0;
  wire minusOp_carry_i_6_n_0;
  wire minusOp_carry_i_7_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_4 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_4 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry__1_n_6 ;
  wire \minusOp_inferred__0/i__carry__1_n_7 ;
  wire \minusOp_inferred__0/i__carry__2_n_0 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_4 ;
  wire \minusOp_inferred__0/i__carry__2_n_5 ;
  wire \minusOp_inferred__0/i__carry__2_n_6 ;
  wire \minusOp_inferred__0/i__carry__2_n_7 ;
  wire \minusOp_inferred__0/i__carry__3_n_0 ;
  wire \minusOp_inferred__0/i__carry__3_n_1 ;
  wire \minusOp_inferred__0/i__carry__3_n_2 ;
  wire \minusOp_inferred__0/i__carry__3_n_3 ;
  wire \minusOp_inferred__0/i__carry__3_n_4 ;
  wire \minusOp_inferred__0/i__carry__3_n_5 ;
  wire \minusOp_inferred__0/i__carry__3_n_6 ;
  wire \minusOp_inferred__0/i__carry__3_n_7 ;
  wire \minusOp_inferred__0/i__carry__4_n_3 ;
  wire \minusOp_inferred__0/i__carry__4_n_6 ;
  wire \minusOp_inferred__0/i__carry__4_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  wire next_state18_out__0;
  wire p_17_in;
  wire [23:1]p_2_in;
  wire [7:0]plusOp;
  wire [22:1]plusOp0_in;
  wire [7:1]plusOp__0;
  wire [23:3]plusOp__1;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_4 ;
  wire \plusOp_inferred__0/i__carry__2_n_5 ;
  wire \plusOp_inferred__0/i__carry__2_n_6 ;
  wire \plusOp_inferred__0/i__carry__2_n_7 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_4 ;
  wire \plusOp_inferred__0/i__carry__3_n_5 ;
  wire \plusOp_inferred__0/i__carry__3_n_6 ;
  wire \plusOp_inferred__0/i__carry__3_n_7 ;
  wire \plusOp_inferred__0/i__carry__4_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire reset_p;
  wire s00_axi_aclk;
  wire [22:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire s00_axi_aresetn;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arvalid;
  wire [21:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire [3:0]NLW_leqOp_carry_O_UNCONNECTED;
  wire [3:0]\NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_mem_addr_reg[22]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_mem_addr_reg[22]_i_4_O_UNCONNECTED ;
  wire [3:1]NLW_minusOp_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__4_O_UNCONNECTED;
  wire [3:1]\NLW_minusOp_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:2]\NLW_minusOp_inferred__0/i__carry__4_O_UNCONNECTED ;
  wire [3:0]NLW_plusOp_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp_carry__4_O_UNCONNECTED;
  wire [3:0]\NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED ;
  wire [3:1]\NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED ;

  Fast_IP_Clock_psram_ip_0_0_AsyncPSRAM AsyncPSRAMinst
       (.E(AsyncPSRAMinst_n_13),
        .MEM_ADDR_OUT(MEM_ADDR_OUT),
        .MEM_BEN(MEM_BEN),
        .MEM_CRE(MEM_CRE),
        .MEM_DATA_I(MEM_DATA_I),
        .MEM_DATA_O(MEM_DATA_O),
        .\MEM_DATA_O_reg[15]_0 (mem_data_wr),
        .MEM_DATA_T(MEM_DATA_T),
        .MEM_LBN_reg_0(\mem_byte_en_reg_n_0_[0] ),
        .MEM_OEN(MEM_OEN),
        .MEM_UBN_reg_0(\mem_byte_en_reg_n_0_[1] ),
        .MEM_WEN(MEM_WEN),
        .Q(mem_addr),
        .SR(reset_p),
        .axi_arv_arr_flag(axi_arv_arr_flag),
        .axi_awv_awr_flag(axi_awv_awr_flag),
        .axi_rlast_reg(axi_rlast_i_3_n_0),
        .axi_rlast_reg_0(axi_arready_i_2_n_0),
        .axi_wready_reg(axi_wready_reg_0),
        .command_reg(command_reg_n_0),
        .command_reg_0(command_i_2_n_0),
        .command_reg_1(command_i_3_n_0),
        .go(go),
        .go_reg(AsyncPSRAMinst_n_18),
        .go_reg_0(go_i_2_n_0),
        .go_reg_1(go_i_3_n_0),
        .mem_cen_i_reg_0(mem_cen_i_reg),
        .\mem_data_rd_i_reg[15]_0 (mem_data_rd),
        .mem_idle_reg_0(AsyncPSRAMinst_n_10),
        .mem_idle_reg_1(AsyncPSRAMinst_n_11),
        .mem_idle_reg_2(AsyncPSRAMinst_n_14),
        .mem_idle_reg_3(AsyncPSRAMinst_n_42),
        .mem_idle_reg_4(AsyncPSRAMinst_n_43),
        .mem_idle_reg_5(AsyncPSRAMinst_n_45),
        .next_state18_out__0(next_state18_out__0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(AsyncPSRAMinst_n_7),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wstrb_1_sp_1(AsyncPSRAMinst_n_15),
        .s00_axi_wstrb_2_sp_1(AsyncPSRAMinst_n_8),
        .s00_axi_wvalid(s00_axi_wvalid),
        .state(state),
        .\state_reg[0] (AsyncPSRAMinst_n_16),
        .\state_reg[0]_0 (AsyncPSRAMinst_n_17),
        .\state_reg[0]_1 (\state[0]_i_3_n_0 ),
        .\state_reg[1] (\axi_araddr_reg_n_0_[1] ),
        .\state_reg[2] (AsyncPSRAMinst_n_9));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[10]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[10]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[10]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[9]),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[11]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[11]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[11]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[10]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[12]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[12]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[12]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[11]),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[13]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[13]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[13]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[12]),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[14]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[14]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[14]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[13]),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[15]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[15]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[15]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[14]),
        .O(p_2_in[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[16]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[16]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[16]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[15]),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[17]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[17]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[17]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[16]),
        .O(p_2_in[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[18]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[18]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[18]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[17]),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[19]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[19]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[19]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[18]),
        .O(p_2_in[19]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \axi_araddr[1]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(axi_arv_arr_flag),
        .I2(s00_axi_arvalid),
        .I3(s00_axi_araddr[0]),
        .I4(\axi_araddr_reg_n_0_[1] ),
        .I5(\axi_araddr[23]_i_4_n_0 ),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[20]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[20]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[20]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[19]),
        .O(p_2_in[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[21]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[21]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[21]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[20]),
        .O(p_2_in[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[22]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[22]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[22]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[21]),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0000000)) 
    \axi_araddr[23]_i_1 
       (.I0(s00_axi_arburst[0]),
        .I1(s00_axi_arburst[1]),
        .I2(leqOp),
        .I3(s00_axi_rready),
        .I4(axi_rvalid_reg_0),
        .I5(axi_araddr110_out),
        .O(\axi_araddr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[23]_i_2 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[23]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[23]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[22]),
        .O(p_2_in[23]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \axi_araddr[23]_i_3 
       (.I0(\axi_araddr[23]_i_5_n_0 ),
        .I1(\axi_araddr[23]_i_6_n_0 ),
        .I2(\axi_araddr[23]_i_7_n_0 ),
        .I3(\axi_araddr[23]_i_8_n_0 ),
        .I4(s00_axi_arburst[0]),
        .I5(axi_araddr110_out),
        .O(\axi_araddr[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \axi_araddr[23]_i_4 
       (.I0(\axi_araddr[23]_i_5_n_0 ),
        .I1(\axi_araddr[23]_i_6_n_0 ),
        .I2(\axi_araddr[23]_i_7_n_0 ),
        .I3(\axi_araddr[23]_i_8_n_0 ),
        .I4(s00_axi_arburst[0]),
        .I5(axi_araddr110_out),
        .O(\axi_araddr[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \axi_araddr[23]_i_5 
       (.I0(s00_axi_arlen[5]),
        .I1(L[7]),
        .I2(s00_axi_arlen[6]),
        .I3(L[8]),
        .I4(L[6]),
        .I5(s00_axi_arlen[4]),
        .O(\axi_araddr[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_araddr[23]_i_6 
       (.I0(L[9]),
        .I1(s00_axi_arlen[7]),
        .O(\axi_araddr[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \axi_araddr[23]_i_7 
       (.I0(L[5]),
        .I1(s00_axi_arlen[3]),
        .I2(s00_axi_arlen[0]),
        .I3(L[2]),
        .O(\axi_araddr[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \axi_araddr[23]_i_8 
       (.I0(L[4]),
        .I1(s00_axi_arlen[2]),
        .I2(L[3]),
        .I3(s00_axi_arlen[1]),
        .O(\axi_araddr[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[2]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(L[2]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[2]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[1]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[3]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[3]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[3]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[2]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[4]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[4]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[4]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[3]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[5]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[5]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[5]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[4]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[6]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[6]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[6]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[5]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[7]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[7]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[7]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[6]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[8]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[8]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[8]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[7]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_araddr[9]_i_1 
       (.I0(\axi_araddr[23]_i_3_n_0 ),
        .I1(plusOp__1[9]),
        .I2(\axi_araddr[23]_i_4_n_0 ),
        .I3(minusOp[9]),
        .I4(axi_araddr110_out),
        .I5(s00_axi_araddr[8]),
        .O(p_2_in[9]));
  FDRE \axi_araddr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(L[10]),
        .R(reset_p));
  FDRE \axi_araddr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(L[11]),
        .R(reset_p));
  FDRE \axi_araddr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(L[12]),
        .R(reset_p));
  FDRE \axi_araddr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(L[13]),
        .R(reset_p));
  FDRE \axi_araddr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(L[14]),
        .R(reset_p));
  FDRE \axi_araddr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(L[15]),
        .R(reset_p));
  FDRE \axi_araddr_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(L[16]),
        .R(reset_p));
  FDRE \axi_araddr_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(L[17]),
        .R(reset_p));
  FDRE \axi_araddr_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(L[18]),
        .R(reset_p));
  FDRE \axi_araddr_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(L[19]),
        .R(reset_p));
  FDRE \axi_araddr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(\axi_araddr_reg_n_0_[1] ),
        .R(reset_p));
  FDRE \axi_araddr_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(L[20]),
        .R(reset_p));
  FDRE \axi_araddr_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(L[21]),
        .R(reset_p));
  FDRE \axi_araddr_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(L[22]),
        .R(reset_p));
  FDRE \axi_araddr_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(L[23]),
        .R(reset_p));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(L[2]),
        .R(reset_p));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(L[3]),
        .R(reset_p));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(L[4]),
        .R(reset_p));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(L[5]),
        .R(reset_p));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(L[6]),
        .R(reset_p));
  FDRE \axi_araddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(L[7]),
        .R(reset_p));
  FDRE \axi_araddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(L[8]),
        .R(reset_p));
  FDRE \axi_araddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[23]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(L[9]),
        .R(reset_p));
  LUT3 #(
    .INIT(8'h10)) 
    \axi_arlen[7]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(axi_arv_arr_flag),
        .I2(s00_axi_arvalid),
        .O(axi_araddr110_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(axi_arlen_cntr_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[3]),
        .I4(axi_arlen_cntr_reg[4]),
        .I5(axi_arlen_cntr_reg[5]),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen_cntr_reg[3]),
        .I3(\axi_arlen_cntr[6]_i_2_n_0 ),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \axi_arlen_cntr[6]_i_2 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .O(\axi_arlen_cntr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h02FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(axi_arv_arr_flag),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_aresetn),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(leqOp),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .O(axi_araddr1));
  LUT3 #(
    .INIT(8'hD2)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(axi_arlen_cntr_reg[6]),
        .I1(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I2(axi_arlen_cntr_reg[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \axi_arlen_cntr[7]_i_4 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[3]),
        .I4(axi_arlen_cntr_reg[4]),
        .I5(axi_arlen_cntr_reg[5]),
        .O(\axi_arlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_arlen_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[0]),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr1),
        .D(plusOp[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_reg[0] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[0]),
        .Q(axi_arlen[0]),
        .R(reset_p));
  FDRE \axi_arlen_reg[1] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[1]),
        .Q(axi_arlen[1]),
        .R(reset_p));
  FDRE \axi_arlen_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[2]),
        .Q(axi_arlen[2]),
        .R(reset_p));
  FDRE \axi_arlen_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[3]),
        .Q(axi_arlen[3]),
        .R(reset_p));
  FDRE \axi_arlen_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[4]),
        .Q(axi_arlen[4]),
        .R(reset_p));
  FDRE \axi_arlen_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[5]),
        .Q(axi_arlen[5]),
        .R(reset_p));
  FDRE \axi_arlen_reg[6] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[6]),
        .Q(axi_arlen[6]),
        .R(reset_p));
  FDRE \axi_arlen_reg[7] 
       (.C(s00_axi_aclk),
        .CE(axi_araddr110_out),
        .D(s00_axi_arlen[7]),
        .Q(axi_arlen[7]),
        .R(reset_p));
  LUT6 #(
    .INIT(64'h40FF404000FF0000)) 
    axi_arready_i_1
       (.I0(axi_arready_i_2_n_0),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_rready),
        .I3(axi_awv_awr_flag),
        .I4(axi_araddr110_out),
        .I5(axi_arready_reg_0),
        .O(axi_arready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6)) 
    axi_arready_i_2
       (.I0(axi_arlen[7]),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(axi_arlen_cntr_reg[6]),
        .I3(axi_arlen[6]),
        .I4(axi_arready_i_3_n_0),
        .I5(axi_arready_i_4_n_0),
        .O(axi_arready_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    axi_arready_i_3
       (.I0(axi_arlen[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen[0]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen[3]),
        .I5(axi_arlen_cntr_reg[3]),
        .O(axi_arready_i_3_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    axi_arready_i_4
       (.I0(axi_arlen[5]),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(axi_arlen[1]),
        .I3(axi_arlen_cntr_reg[1]),
        .I4(axi_arlen[2]),
        .I5(axi_arlen_cntr_reg[2]),
        .O(axi_arready_i_4_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(reset_p));
  LUT6 #(
    .INIT(64'hF4FFFFFF44444444)) 
    axi_arv_arr_flag_i_1
       (.I0(axi_awv_awr_flag),
        .I1(axi_araddr110_out),
        .I2(axi_arready_i_2_n_0),
        .I3(axi_rvalid_reg_0),
        .I4(s00_axi_rready),
        .I5(axi_arv_arr_flag),
        .O(axi_arv_arr_flag_i_1_n_0));
  FDRE axi_arv_arr_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(axi_arv_arr_flag),
        .R(reset_p));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[10]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__0_n_4 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__1_n_7 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[8]),
        .O(\axi_awaddr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[11]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__1_n_7 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__1_n_6 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[9]),
        .O(\axi_awaddr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[12]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__1_n_6 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[10]),
        .O(\axi_awaddr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[13]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__1_n_5 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__1_n_4 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[11]),
        .O(\axi_awaddr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[14]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__1_n_4 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__2_n_7 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[12]),
        .O(\axi_awaddr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[15]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__2_n_7 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__2_n_6 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[13]),
        .O(\axi_awaddr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[16]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__2_n_6 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__2_n_5 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[14]),
        .O(\axi_awaddr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[17]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__2_n_5 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__2_n_4 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[15]),
        .O(\axi_awaddr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[18]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__2_n_4 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__3_n_7 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[16]),
        .O(\axi_awaddr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[19]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__3_n_7 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__3_n_6 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[17]),
        .O(\axi_awaddr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[20]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__3_n_6 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__3_n_5 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[18]),
        .O(\axi_awaddr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[21]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__3_n_5 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__3_n_4 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[19]),
        .O(\axi_awaddr[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[22]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__3_n_4 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__4_n_7 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[20]),
        .O(\axi_awaddr[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0000000)) 
    \axi_awaddr[23]_i_1 
       (.I0(s00_axi_awburst[0]),
        .I1(s00_axi_awburst[1]),
        .I2(axi_wready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(leqOp15_in),
        .I5(p_17_in),
        .O(\axi_awaddr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[23]_i_2 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__4_n_7 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__4_n_6 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[21]),
        .O(\axi_awaddr[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFB)) 
    \axi_awaddr[23]_i_3 
       (.I0(\axi_awaddr[23]_i_5_n_0 ),
        .I1(\axi_awaddr[23]_i_6_n_0 ),
        .I2(\axi_awaddr[23]_i_7_n_0 ),
        .I3(\axi_awaddr[23]_i_8_n_0 ),
        .I4(s00_axi_awburst[0]),
        .I5(p_17_in),
        .O(\axi_awaddr[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \axi_awaddr[23]_i_4 
       (.I0(\axi_awaddr[23]_i_5_n_0 ),
        .I1(\axi_awaddr[23]_i_6_n_0 ),
        .I2(\axi_awaddr[23]_i_7_n_0 ),
        .I3(\axi_awaddr[23]_i_8_n_0 ),
        .I4(s00_axi_awburst[0]),
        .I5(p_17_in),
        .O(\axi_awaddr[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \axi_awaddr[23]_i_5 
       (.I0(s00_axi_awlen[5]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(s00_axi_awlen[6]),
        .I3(\axi_awaddr_reg_n_0_[8] ),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .I5(s00_axi_awlen[4]),
        .O(\axi_awaddr[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_awaddr[23]_i_6 
       (.I0(\axi_awaddr_reg_n_0_[9] ),
        .I1(s00_axi_awlen[7]),
        .O(\axi_awaddr[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h44F4)) 
    \axi_awaddr[23]_i_7 
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(s00_axi_awlen[3]),
        .I2(s00_axi_awlen[0]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \axi_awaddr[23]_i_8 
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(s00_axi_awlen[2]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awlen[1]),
        .O(\axi_awaddr[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_awaddr[2]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry_n_7 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[3]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry_n_7 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry_n_6 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[4]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry_n_6 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry_n_5 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[5]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry_n_5 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry_n_4 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[3]),
        .O(\axi_awaddr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[6]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry_n_4 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__0_n_7 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[4]),
        .O(\axi_awaddr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[7]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__0_n_7 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__0_n_6 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[5]),
        .O(\axi_awaddr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[8]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__0_n_6 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__0_n_5 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[6]),
        .O(\axi_awaddr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[9]_i_1 
       (.I0(\axi_awaddr[23]_i_3_n_0 ),
        .I1(\plusOp_inferred__0/i__carry__0_n_5 ),
        .I2(\axi_awaddr[23]_i_4_n_0 ),
        .I3(\minusOp_inferred__0/i__carry__0_n_4 ),
        .I4(p_17_in),
        .I5(s00_axi_awaddr[7]),
        .O(\axi_awaddr[9]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[10]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[10] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[11]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[11] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[12]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[12] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[13]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[13] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[14]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[14] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[15]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[15] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[16]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[16] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[17]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[17] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[18]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[18] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[19]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[19] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[20]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[20] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[21]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[21] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[22]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[22] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[23]_i_2_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[23] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[5]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[6]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[7]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[7] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[8]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[8] ),
        .R(reset_p));
  FDRE \axi_awaddr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[23]_i_1_n_0 ),
        .D(\axi_awaddr[9]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[9] ),
        .R(reset_p));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_awlen[7]_i_1 
       (.I0(axi_awv_awr_flag),
        .I1(s00_axi_awvalid),
        .I2(axi_awready_reg_0),
        .O(p_17_in));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .O(\axi_awlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg[2]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[2]),
        .I4(axi_awlen_cntr_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg[2]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[3]),
        .I4(axi_awlen_cntr_reg[4]),
        .I5(axi_awlen_cntr_reg[5]),
        .O(plusOp__0[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \axi_awlen_cntr[6]_i_1 
       (.I0(axi_awlen_cntr_reg[4]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(\axi_awlen_cntr[6]_i_2_n_0 ),
        .I3(axi_awlen_cntr_reg[2]),
        .I4(axi_awlen_cntr_reg[5]),
        .I5(axi_awlen_cntr_reg[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \axi_awlen_cntr[6]_i_2 
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(axi_awlen_cntr_reg[0]),
        .O(\axi_awlen_cntr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_awlen_cntr[7]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(axi_awv_awr_flag),
        .I3(s00_axi_aresetn),
        .O(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_awlen_cntr[7]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(s00_axi_wvalid),
        .I2(leqOp15_in),
        .O(\axi_awlen_cntr[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \axi_awlen_cntr[7]_i_3 
       (.I0(axi_awlen_cntr_reg[6]),
        .I1(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I2(axi_awlen_cntr_reg[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[3]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(\axi_awlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_awlen_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(\axi_awlen_cntr[0]_i_1_n_0 ),
        .Q(axi_awlen_cntr_reg[0]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(plusOp__0[1]),
        .Q(axi_awlen_cntr_reg[1]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(plusOp__0[2]),
        .Q(axi_awlen_cntr_reg[2]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(plusOp__0[3]),
        .Q(axi_awlen_cntr_reg[3]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(plusOp__0[4]),
        .Q(axi_awlen_cntr_reg[4]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(plusOp__0[5]),
        .Q(axi_awlen_cntr_reg[5]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(plusOp__0[6]),
        .Q(axi_awlen_cntr_reg[6]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_awlen_cntr[7]_i_2_n_0 ),
        .D(plusOp__0[7]),
        .Q(axi_awlen_cntr_reg[7]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[0]),
        .Q(axi_awlen[0]),
        .R(reset_p));
  FDRE \axi_awlen_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[1]),
        .Q(axi_awlen[1]),
        .R(reset_p));
  FDRE \axi_awlen_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[2]),
        .Q(axi_awlen[2]),
        .R(reset_p));
  FDRE \axi_awlen_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[3]),
        .Q(axi_awlen[3]),
        .R(reset_p));
  FDRE \axi_awlen_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[4]),
        .Q(axi_awlen[4]),
        .R(reset_p));
  FDRE \axi_awlen_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[5]),
        .Q(axi_awlen[5]),
        .R(reset_p));
  FDRE \axi_awlen_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[6]),
        .Q(axi_awlen[6]),
        .R(reset_p));
  FDRE \axi_awlen_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(s00_axi_awlen[7]),
        .Q(axi_awlen[7]),
        .R(reset_p));
  LUT6 #(
    .INIT(64'h88888888000F0000)) 
    axi_awready_i_1
       (.I0(axi_wready_reg_0),
        .I1(s00_axi_wlast),
        .I2(axi_arv_arr_flag),
        .I3(axi_awv_awr_flag),
        .I4(s00_axi_awvalid),
        .I5(axi_awready_reg_0),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(axi_awready_reg_0),
        .R(reset_p));
  LUT6 #(
    .INIT(64'h0010CCDCCCDCCCDC)) 
    axi_awv_awr_flag_i_1
       (.I0(axi_arv_arr_flag),
        .I1(axi_awv_awr_flag),
        .I2(s00_axi_awvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_wready_reg_0),
        .I5(s00_axi_wlast),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE axi_awv_awr_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(reset_p));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(axi_awv_awr_flag),
        .I4(s00_axi_wlast),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(reset_p));
  LUT4 #(
    .INIT(16'hDDD5)) 
    \axi_rdata[15]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE0FF)) 
    \axi_rdata[31]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(s00_axi_aresetn),
        .O(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[0]),
        .Q(s00_axi_rdata[0]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[10]),
        .Q(s00_axi_rdata[10]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[11]),
        .Q(s00_axi_rdata[11]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[12]),
        .Q(s00_axi_rdata[12]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[13]),
        .Q(s00_axi_rdata[13]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[14]),
        .Q(s00_axi_rdata[14]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[15]),
        .Q(s00_axi_rdata[15]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[0]),
        .Q(s00_axi_rdata[16]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[1]),
        .Q(s00_axi_rdata[17]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[2]),
        .Q(s00_axi_rdata[18]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[3]),
        .Q(s00_axi_rdata[19]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[1]),
        .Q(s00_axi_rdata[1]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[4]),
        .Q(s00_axi_rdata[20]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[5]),
        .Q(s00_axi_rdata[21]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[6]),
        .Q(s00_axi_rdata[22]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[7]),
        .Q(s00_axi_rdata[23]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[8]),
        .Q(s00_axi_rdata[24]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[9]),
        .Q(s00_axi_rdata[25]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[10]),
        .Q(s00_axi_rdata[26]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[11]),
        .Q(s00_axi_rdata[27]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[12]),
        .Q(s00_axi_rdata[28]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[13]),
        .Q(s00_axi_rdata[29]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[2]),
        .Q(s00_axi_rdata[2]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[14]),
        .Q(s00_axi_rdata[30]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_42),
        .D(mem_data_rd[15]),
        .Q(s00_axi_rdata[31]),
        .R(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[3]),
        .Q(s00_axi_rdata[3]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[4]),
        .Q(s00_axi_rdata[4]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[5]),
        .Q(s00_axi_rdata[5]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[6]),
        .Q(s00_axi_rdata[6]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[7]),
        .Q(s00_axi_rdata[7]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[8]),
        .Q(s00_axi_rdata[8]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_43),
        .D(mem_data_rd[9]),
        .Q(s00_axi_rdata[9]),
        .R(\axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    axi_rlast_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .O(axi_rlast_i_3_n_0));
  FDRE axi_rlast_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(AsyncPSRAMinst_n_9),
        .Q(s00_axi_rlast),
        .R(1'b0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(AsyncPSRAMinst_n_18),
        .Q(axi_rvalid_reg_0),
        .R(1'b0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(AsyncPSRAMinst_n_7),
        .Q(axi_wready_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    command_i_2
       (.I0(axi_wready_reg_0),
        .I1(s00_axi_wvalid),
        .I2(axi_arv_arr_flag),
        .I3(axi_awv_awr_flag),
        .O(command_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    command_i_3
       (.I0(state[2]),
        .I1(state[1]),
        .O(command_i_3_n_0));
  FDSE command_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(AsyncPSRAMinst_n_45),
        .Q(command_reg_n_0),
        .S(reset_p));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    go_i_2
       (.I0(command_i_2_n_0),
        .I1(axi_rvalid_reg_0),
        .I2(axi_arv_arr_flag),
        .O(go_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    go_i_3
       (.I0(s00_axi_wstrb[3]),
        .I1(s00_axi_wstrb[2]),
        .O(go_i_3_n_0));
  FDRE go_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(AsyncPSRAMinst_n_16),
        .Q(go),
        .R(reset_p));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(\axi_awaddr_reg_n_0_[8] ),
        .I1(s00_axi_awlen[6]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2
       (.I0(\axi_awaddr_reg_n_0_[7] ),
        .I1(s00_axi_awlen[5]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(s00_axi_awlen[4]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(s00_axi_awlen[3]),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5
       (.I0(s00_axi_awlen[6]),
        .I1(\axi_awaddr_reg_n_0_[8] ),
        .I2(s00_axi_awlen[7]),
        .I3(\axi_awaddr_reg_n_0_[9] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_6
       (.I0(s00_axi_awlen[5]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(s00_axi_awlen[6]),
        .I3(\axi_awaddr_reg_n_0_[8] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_7
       (.I0(s00_axi_awlen[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awlen[5]),
        .I3(\axi_awaddr_reg_n_0_[7] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_8
       (.I0(s00_axi_awlen[3]),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s00_axi_awlen[4]),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(\axi_awaddr_reg_n_0_[9] ),
        .I1(s00_axi_awlen[7]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_2
       (.I0(\axi_awaddr_reg_n_0_[12] ),
        .I1(\axi_awaddr_reg_n_0_[13] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(\axi_awaddr_reg_n_0_[11] ),
        .I1(\axi_awaddr_reg_n_0_[12] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(\axi_awaddr_reg_n_0_[10] ),
        .I1(\axi_awaddr_reg_n_0_[11] ),
        .O(i__carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    i__carry__1_i_5
       (.I0(s00_axi_awlen[7]),
        .I1(\axi_awaddr_reg_n_0_[9] ),
        .I2(\axi_awaddr_reg_n_0_[10] ),
        .O(i__carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1
       (.I0(\axi_awaddr_reg_n_0_[16] ),
        .I1(\axi_awaddr_reg_n_0_[17] ),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2
       (.I0(\axi_awaddr_reg_n_0_[15] ),
        .I1(\axi_awaddr_reg_n_0_[16] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_3
       (.I0(\axi_awaddr_reg_n_0_[14] ),
        .I1(\axi_awaddr_reg_n_0_[15] ),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_4
       (.I0(\axi_awaddr_reg_n_0_[13] ),
        .I1(\axi_awaddr_reg_n_0_[14] ),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(\axi_awaddr_reg_n_0_[20] ),
        .I1(\axi_awaddr_reg_n_0_[21] ),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(\axi_awaddr_reg_n_0_[19] ),
        .I1(\axi_awaddr_reg_n_0_[20] ),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3
       (.I0(\axi_awaddr_reg_n_0_[18] ),
        .I1(\axi_awaddr_reg_n_0_[19] ),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4
       (.I0(\axi_awaddr_reg_n_0_[17] ),
        .I1(\axi_awaddr_reg_n_0_[18] ),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_1
       (.I0(\axi_awaddr_reg_n_0_[22] ),
        .I1(\axi_awaddr_reg_n_0_[23] ),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__4_i_2
       (.I0(\axi_awaddr_reg_n_0_[21] ),
        .I1(\axi_awaddr_reg_n_0_[22] ),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1
       (.I0(\axi_awaddr_reg_n_0_[4] ),
        .I1(s00_axi_awlen[2]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(axi_awlen[7]),
        .I1(axi_awlen_cntr_reg[7]),
        .I2(axi_awlen[6]),
        .I3(axi_awlen_cntr_reg[6]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_2
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(s00_axi_awlen[1]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2__0
       (.I0(axi_awlen[5]),
        .I1(axi_awlen_cntr_reg[5]),
        .I2(axi_awlen[4]),
        .I3(axi_awlen_cntr_reg[4]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_3
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awlen[0]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(axi_awlen[3]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen[2]),
        .I3(axi_awlen_cntr_reg[2]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(axi_awlen[1]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen[0]),
        .I3(axi_awlen_cntr_reg[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry_i_4__0
       (.I0(s00_axi_awlen[2]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_awlen[3]),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(axi_awlen[6]),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen[7]),
        .I3(axi_awlen_cntr_reg[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry_i_5__0
       (.I0(s00_axi_awlen[1]),
        .I1(\axi_awaddr_reg_n_0_[3] ),
        .I2(s00_axi_awlen[2]),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(axi_awlen[4]),
        .I1(axi_awlen_cntr_reg[4]),
        .I2(axi_awlen[5]),
        .I3(axi_awlen_cntr_reg[5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i__carry_i_6__0
       (.I0(s00_axi_awlen[0]),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .I2(s00_axi_awlen[1]),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7
       (.I0(s00_axi_awlen[0]),
        .I1(\axi_awaddr_reg_n_0_[2] ),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(axi_awlen[2]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen[3]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    i__carry_i_8
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen[1]),
        .I3(axi_awlen[0]),
        .O(i__carry_i_8_n_0));
  CARRY4 leqOp_carry
       (.CI(1'b0),
        .CO({leqOp,leqOp_carry_n_1,leqOp_carry_n_2,leqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({leqOp_carry_i_1_n_0,leqOp_carry_i_2_n_0,leqOp_carry_i_3_n_0,leqOp_carry_i_4_n_0}),
        .O(NLW_leqOp_carry_O_UNCONNECTED[3:0]),
        .S({leqOp_carry_i_5_n_0,leqOp_carry_i_6_n_0,leqOp_carry_i_7_n_0,leqOp_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    leqOp_carry_i_1
       (.I0(axi_arlen[7]),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(axi_arlen[6]),
        .I3(axi_arlen_cntr_reg[6]),
        .O(leqOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    leqOp_carry_i_2
       (.I0(axi_arlen[5]),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(axi_arlen[4]),
        .I3(axi_arlen_cntr_reg[4]),
        .O(leqOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    leqOp_carry_i_3
       (.I0(axi_arlen[3]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen[2]),
        .I3(axi_arlen_cntr_reg[2]),
        .O(leqOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    leqOp_carry_i_4
       (.I0(axi_arlen[1]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen[0]),
        .I3(axi_arlen_cntr_reg[0]),
        .O(leqOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_5
       (.I0(axi_arlen[6]),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen[7]),
        .I3(axi_arlen_cntr_reg[7]),
        .O(leqOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_6
       (.I0(axi_arlen[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen[5]),
        .I3(axi_arlen_cntr_reg[5]),
        .O(leqOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_7
       (.I0(axi_arlen[3]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen[2]),
        .I3(axi_arlen_cntr_reg[2]),
        .O(leqOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    leqOp_carry_i_8
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen[1]),
        .I3(axi_arlen[0]),
        .O(leqOp_carry_i_8_n_0));
  CARRY4 \leqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({leqOp15_in,\leqOp_inferred__0/i__carry_n_1 ,\leqOp_inferred__0/i__carry_n_2 ,\leqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}),
        .O(\NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7__0_n_0,i__carry_i_8_n_0}));
  LUT6 #(
    .INIT(64'h0E0E000000FF0000)) 
    \mem_addr[0]_i_1 
       (.I0(\mem_addr[0]_i_2_n_0 ),
        .I1(go1__1),
        .I2(go14_out__0),
        .I3(mem_addr[0]),
        .I4(s00_axi_aresetn),
        .I5(\state[0]_i_3_n_0 ),
        .O(\mem_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \mem_addr[0]_i_2 
       (.I0(\axi_araddr_reg_n_0_[1] ),
        .I1(axi_rvalid_reg_0),
        .I2(axi_arv_arr_flag),
        .O(\mem_addr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \mem_addr[0]_i_3 
       (.I0(axi_awv_awr_flag),
        .I1(axi_arv_arr_flag),
        .I2(s00_axi_wvalid),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_wstrb[1]),
        .I5(s00_axi_wstrb[0]),
        .O(go1__1));
  LUT6 #(
    .INIT(64'h0020002000200000)) 
    \mem_addr[0]_i_4 
       (.I0(axi_awv_awr_flag),
        .I1(axi_arv_arr_flag),
        .I2(s00_axi_wvalid),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_wstrb[1]),
        .I5(s00_axi_wstrb[0]),
        .O(go14_out__0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[10]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[10]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[11] ),
        .I4(L[11]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[11]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[11]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[12] ),
        .I4(L[12]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[12]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[12]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[13] ),
        .I4(L[13]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[13]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[13]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[14] ),
        .I4(L[14]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[14]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[14]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[15] ),
        .I4(L[15]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[15]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[15]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[16] ),
        .I4(L[16]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[16]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[16]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[17] ),
        .I4(L[17]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[17]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[17]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[18] ),
        .I4(L[18]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[18]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[18]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[19] ),
        .I4(L[19]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[19]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[19]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[20] ),
        .I4(L[20]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[1]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[1]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(L[2]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[20]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[20]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[21] ),
        .I4(L[21]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[21]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[21]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[22] ),
        .I4(L[22]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[22]_i_2 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[22]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[23] ),
        .I4(L[23]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \mem_addr[22]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(\mem_addr[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \mem_addr[22]_i_5 
       (.I0(axi_awv_awr_flag),
        .I1(command_i_2_n_0),
        .I2(axi_arv_arr_flag),
        .I3(\state[0]_i_3_n_0 ),
        .I4(s00_axi_aresetn),
        .O(\mem_addr[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB0000000)) 
    \mem_addr[22]_i_6 
       (.I0(command_i_2_n_0),
        .I1(axi_rvalid_reg_0),
        .I2(\state[0]_i_3_n_0 ),
        .I3(s00_axi_aresetn),
        .I4(axi_arv_arr_flag),
        .O(\mem_addr[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[2]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[2]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(L[3]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[3]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[3]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(L[4]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[4]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[4]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(L[5]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[5]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[5]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .I4(L[6]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[6]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[6]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[7] ),
        .I4(L[7]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[7]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[7]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[8] ),
        .I4(L[8]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[8]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[8]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[9] ),
        .I4(L[9]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \mem_addr[9]_i_1 
       (.I0(\mem_addr[22]_i_3_n_0 ),
        .I1(plusOp0_in[9]),
        .I2(\mem_addr[22]_i_5_n_0 ),
        .I3(\axi_awaddr_reg_n_0_[10] ),
        .I4(L[10]),
        .I5(\mem_addr[22]_i_6_n_0 ),
        .O(\mem_addr[9]_i_1_n_0 ));
  FDRE \mem_addr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[0]_i_1_n_0 ),
        .Q(mem_addr[0]),
        .R(1'b0));
  FDRE \mem_addr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[10]_i_1_n_0 ),
        .Q(mem_addr[10]),
        .R(1'b0));
  FDRE \mem_addr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[11]_i_1_n_0 ),
        .Q(mem_addr[11]),
        .R(1'b0));
  FDRE \mem_addr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[12]_i_1_n_0 ),
        .Q(mem_addr[12]),
        .R(1'b0));
  CARRY4 \mem_addr_reg[12]_i_2 
       (.CI(\mem_addr_reg[8]_i_2_n_0 ),
        .CO({\mem_addr_reg[12]_i_2_n_0 ,\mem_addr_reg[12]_i_2_n_1 ,\mem_addr_reg[12]_i_2_n_2 ,\mem_addr_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[12:9]),
        .S(mem_addr[12:9]));
  FDRE \mem_addr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[13]_i_1_n_0 ),
        .Q(mem_addr[13]),
        .R(1'b0));
  FDRE \mem_addr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[14]_i_1_n_0 ),
        .Q(mem_addr[14]),
        .R(1'b0));
  FDRE \mem_addr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[15]_i_1_n_0 ),
        .Q(mem_addr[15]),
        .R(1'b0));
  FDRE \mem_addr_reg[16] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[16]_i_1_n_0 ),
        .Q(mem_addr[16]),
        .R(1'b0));
  CARRY4 \mem_addr_reg[16]_i_2 
       (.CI(\mem_addr_reg[12]_i_2_n_0 ),
        .CO({\mem_addr_reg[16]_i_2_n_0 ,\mem_addr_reg[16]_i_2_n_1 ,\mem_addr_reg[16]_i_2_n_2 ,\mem_addr_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[16:13]),
        .S(mem_addr[16:13]));
  FDRE \mem_addr_reg[17] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[17]_i_1_n_0 ),
        .Q(mem_addr[17]),
        .R(1'b0));
  FDRE \mem_addr_reg[18] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[18]_i_1_n_0 ),
        .Q(mem_addr[18]),
        .R(1'b0));
  FDRE \mem_addr_reg[19] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[19]_i_1_n_0 ),
        .Q(mem_addr[19]),
        .R(1'b0));
  FDRE \mem_addr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[1]_i_1_n_0 ),
        .Q(mem_addr[1]),
        .R(1'b0));
  FDRE \mem_addr_reg[20] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[20]_i_1_n_0 ),
        .Q(mem_addr[20]),
        .R(1'b0));
  CARRY4 \mem_addr_reg[20]_i_2 
       (.CI(\mem_addr_reg[16]_i_2_n_0 ),
        .CO({\mem_addr_reg[20]_i_2_n_0 ,\mem_addr_reg[20]_i_2_n_1 ,\mem_addr_reg[20]_i_2_n_2 ,\mem_addr_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[20:17]),
        .S(mem_addr[20:17]));
  FDRE \mem_addr_reg[21] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[21]_i_1_n_0 ),
        .Q(mem_addr[21]),
        .R(1'b0));
  FDRE \mem_addr_reg[22] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[22]_i_2_n_0 ),
        .Q(mem_addr[22]),
        .R(1'b0));
  CARRY4 \mem_addr_reg[22]_i_4 
       (.CI(\mem_addr_reg[20]_i_2_n_0 ),
        .CO({\NLW_mem_addr_reg[22]_i_4_CO_UNCONNECTED [3:1],\mem_addr_reg[22]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem_addr_reg[22]_i_4_O_UNCONNECTED [3:2],plusOp0_in[22:21]}),
        .S({1'b0,1'b0,mem_addr[22:21]}));
  FDRE \mem_addr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[2]_i_1_n_0 ),
        .Q(mem_addr[2]),
        .R(1'b0));
  FDRE \mem_addr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[3]_i_1_n_0 ),
        .Q(mem_addr[3]),
        .R(1'b0));
  FDRE \mem_addr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[4]_i_1_n_0 ),
        .Q(mem_addr[4]),
        .R(1'b0));
  CARRY4 \mem_addr_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\mem_addr_reg[4]_i_2_n_0 ,\mem_addr_reg[4]_i_2_n_1 ,\mem_addr_reg[4]_i_2_n_2 ,\mem_addr_reg[4]_i_2_n_3 }),
        .CYINIT(mem_addr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[4:1]),
        .S(mem_addr[4:1]));
  FDRE \mem_addr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[5]_i_1_n_0 ),
        .Q(mem_addr[5]),
        .R(1'b0));
  FDRE \mem_addr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[6]_i_1_n_0 ),
        .Q(mem_addr[6]),
        .R(1'b0));
  FDRE \mem_addr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[7]_i_1_n_0 ),
        .Q(mem_addr[7]),
        .R(1'b0));
  FDRE \mem_addr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[8]_i_1_n_0 ),
        .Q(mem_addr[8]),
        .R(1'b0));
  CARRY4 \mem_addr_reg[8]_i_2 
       (.CI(\mem_addr_reg[4]_i_2_n_0 ),
        .CO({\mem_addr_reg[8]_i_2_n_0 ,\mem_addr_reg[8]_i_2_n_1 ,\mem_addr_reg[8]_i_2_n_2 ,\mem_addr_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp0_in[8:5]),
        .S(mem_addr[8:5]));
  FDRE \mem_addr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_13),
        .D(\mem_addr[9]_i_1_n_0 ),
        .Q(mem_addr[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \mem_byte_en[0]_i_1 
       (.I0(\mem_byte_en_reg_n_0_[0] ),
        .I1(\mem_byte_en[1]_i_2_n_0 ),
        .I2(AsyncPSRAMinst_n_14),
        .I3(\mem_byte_en[0]_i_2_n_0 ),
        .I4(\mem_byte_en[1]_i_5_n_0 ),
        .O(\mem_byte_en[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5554555555575555)) 
    \mem_byte_en[0]_i_2 
       (.I0(s00_axi_wstrb[2]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(go14_out__0),
        .I5(s00_axi_wstrb[0]),
        .O(\mem_byte_en[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEE2)) 
    \mem_byte_en[1]_i_1 
       (.I0(\mem_byte_en_reg_n_0_[1] ),
        .I1(\mem_byte_en[1]_i_2_n_0 ),
        .I2(AsyncPSRAMinst_n_14),
        .I3(\mem_byte_en[1]_i_4_n_0 ),
        .I4(\mem_byte_en[1]_i_5_n_0 ),
        .O(\mem_byte_en[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h01330103)) 
    \mem_byte_en[1]_i_2 
       (.I0(AsyncPSRAMinst_n_8),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(AsyncPSRAMinst_n_10),
        .O(\mem_byte_en[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5554555555575555)) 
    \mem_byte_en[1]_i_4 
       (.I0(s00_axi_wstrb[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(go14_out__0),
        .I5(s00_axi_wstrb[1]),
        .O(\mem_byte_en[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h0400FFFF)) 
    \mem_byte_en[1]_i_5 
       (.I0(command_i_2_n_0),
        .I1(\state[0]_i_3_n_0 ),
        .I2(axi_rvalid_reg_0),
        .I3(axi_arv_arr_flag),
        .I4(s00_axi_aresetn),
        .O(\mem_byte_en[1]_i_5_n_0 ));
  FDRE \mem_byte_en_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\mem_byte_en[0]_i_1_n_0 ),
        .Q(\mem_byte_en_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \mem_byte_en_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\mem_byte_en[1]_i_1_n_0 ),
        .Q(\mem_byte_en_reg_n_0_[1] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[0]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[16]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[10]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[26]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[11]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[27]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[12]_i_1 
       (.I0(s00_axi_wdata[12]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[28]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[13]_i_1 
       (.I0(s00_axi_wdata[13]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[29]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[14]_i_1 
       (.I0(s00_axi_wdata[14]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[30]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[15]_i_2 
       (.I0(s00_axi_wdata[15]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[31]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \mem_data_wr[15]_i_3 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(go14_out__0),
        .O(\mem_data_wr[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000ABAA)) 
    \mem_data_wr[15]_i_4 
       (.I0(state[0]),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(\mem_data_wr[15]_i_5_n_0 ),
        .I4(state[1]),
        .I5(state[2]),
        .O(\mem_data_wr[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mem_data_wr[15]_i_5 
       (.I0(axi_wready_reg_0),
        .I1(s00_axi_wvalid),
        .I2(axi_arv_arr_flag),
        .I3(axi_awv_awr_flag),
        .O(\mem_data_wr[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[1]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[17]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[2]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[18]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[3]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[19]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[4]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[20]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[21]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[22]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[7]_i_1 
       (.I0(s00_axi_wdata[7]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[23]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[8]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[24]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \mem_data_wr[9]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(\mem_data_wr[15]_i_3_n_0 ),
        .I2(s00_axi_wdata[25]),
        .I3(\mem_data_wr[15]_i_4_n_0 ),
        .O(\mem_data_wr[9]_i_1_n_0 ));
  FDRE \mem_data_wr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[0]_i_1_n_0 ),
        .Q(mem_data_wr[0]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[10] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[10]_i_1_n_0 ),
        .Q(mem_data_wr[10]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[11] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[11]_i_1_n_0 ),
        .Q(mem_data_wr[11]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[12] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[12]_i_1_n_0 ),
        .Q(mem_data_wr[12]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[13] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[13]_i_1_n_0 ),
        .Q(mem_data_wr[13]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[14] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[14]_i_1_n_0 ),
        .Q(mem_data_wr[14]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[15] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[15]_i_2_n_0 ),
        .Q(mem_data_wr[15]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[1]_i_1_n_0 ),
        .Q(mem_data_wr[1]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[2]_i_1_n_0 ),
        .Q(mem_data_wr[2]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[3]_i_1_n_0 ),
        .Q(mem_data_wr[3]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[4]_i_1_n_0 ),
        .Q(mem_data_wr[4]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[5]_i_1_n_0 ),
        .Q(mem_data_wr[5]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[6]_i_1_n_0 ),
        .Q(mem_data_wr[6]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[7] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[7]_i_1_n_0 ),
        .Q(mem_data_wr[7]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[8] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[8]_i_1_n_0 ),
        .Q(mem_data_wr[8]),
        .R(reset_p));
  FDRE \mem_data_wr_reg[9] 
       (.C(s00_axi_aclk),
        .CE(AsyncPSRAMinst_n_17),
        .D(\mem_data_wr[9]_i_1_n_0 ),
        .Q(mem_data_wr[9]),
        .R(reset_p));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,1'b0}),
        .O(minusOp[5:2]),
        .S({minusOp_carry_i_4_n_0,minusOp_carry_i_5_n_0,minusOp_carry_i_6_n_0,minusOp_carry_i_7_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}),
        .O(minusOp[9:6]),
        .S({minusOp_carry__0_i_5_n_0,minusOp_carry__0_i_6_n_0,minusOp_carry__0_i_7_n_0,minusOp_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    minusOp_carry__0_i_1
       (.I0(L[8]),
        .I1(s00_axi_arlen[6]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    minusOp_carry__0_i_2
       (.I0(L[7]),
        .I1(s00_axi_arlen[5]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    minusOp_carry__0_i_3
       (.I0(L[6]),
        .I1(s00_axi_arlen[4]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    minusOp_carry__0_i_4
       (.I0(L[5]),
        .I1(s00_axi_arlen[3]),
        .O(minusOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    minusOp_carry__0_i_5
       (.I0(s00_axi_arlen[6]),
        .I1(L[8]),
        .I2(s00_axi_arlen[7]),
        .I3(L[9]),
        .O(minusOp_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    minusOp_carry__0_i_6
       (.I0(s00_axi_arlen[5]),
        .I1(L[7]),
        .I2(s00_axi_arlen[6]),
        .I3(L[8]),
        .O(minusOp_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    minusOp_carry__0_i_7
       (.I0(s00_axi_arlen[4]),
        .I1(L[6]),
        .I2(s00_axi_arlen[5]),
        .I3(L[7]),
        .O(minusOp_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    minusOp_carry__0_i_8
       (.I0(s00_axi_arlen[3]),
        .I1(L[5]),
        .I2(s00_axi_arlen[4]),
        .I3(L[6]),
        .O(minusOp_carry__0_i_8_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({L[12:10],minusOp_carry__1_i_1_n_0}),
        .O(minusOp[13:10]),
        .S({minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0,minusOp_carry__1_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    minusOp_carry__1_i_1
       (.I0(L[9]),
        .I1(s00_axi_arlen[7]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_2
       (.I0(L[12]),
        .I1(L[13]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_3
       (.I0(L[11]),
        .I1(L[12]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_4
       (.I0(L[10]),
        .I1(L[11]),
        .O(minusOp_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h4B)) 
    minusOp_carry__1_i_5
       (.I0(s00_axi_arlen[7]),
        .I1(L[9]),
        .I2(L[10]),
        .O(minusOp_carry__1_i_5_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(L[16:13]),
        .O(minusOp[17:14]),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_1
       (.I0(L[16]),
        .I1(L[17]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_2
       (.I0(L[15]),
        .I1(L[16]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_3
       (.I0(L[14]),
        .I1(L[15]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__2_i_4
       (.I0(L[13]),
        .I1(L[14]),
        .O(minusOp_carry__2_i_4_n_0));
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(L[20:17]),
        .O(minusOp[21:18]),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_1
       (.I0(L[20]),
        .I1(L[21]),
        .O(minusOp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_2
       (.I0(L[19]),
        .I1(L[20]),
        .O(minusOp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_3
       (.I0(L[18]),
        .I1(L[19]),
        .O(minusOp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__3_i_4
       (.I0(L[17]),
        .I1(L[18]),
        .O(minusOp_carry__3_i_4_n_0));
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({NLW_minusOp_carry__4_CO_UNCONNECTED[3:1],minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,L[21]}),
        .O({NLW_minusOp_carry__4_O_UNCONNECTED[3:2],minusOp[23:22]}),
        .S({1'b0,1'b0,minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_1
       (.I0(L[22]),
        .I1(L[23]),
        .O(minusOp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__4_i_2
       (.I0(L[21]),
        .I1(L[22]),
        .O(minusOp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    minusOp_carry_i_1
       (.I0(L[4]),
        .I1(s00_axi_arlen[2]),
        .O(minusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    minusOp_carry_i_2
       (.I0(L[3]),
        .I1(s00_axi_arlen[1]),
        .O(minusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    minusOp_carry_i_3
       (.I0(L[2]),
        .I1(s00_axi_arlen[0]),
        .O(minusOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    minusOp_carry_i_4
       (.I0(s00_axi_arlen[2]),
        .I1(L[4]),
        .I2(s00_axi_arlen[3]),
        .I3(L[5]),
        .O(minusOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    minusOp_carry_i_5
       (.I0(s00_axi_arlen[1]),
        .I1(L[3]),
        .I2(s00_axi_arlen[2]),
        .I3(L[4]),
        .O(minusOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    minusOp_carry_i_6
       (.I0(s00_axi_arlen[0]),
        .I1(L[2]),
        .I2(s00_axi_arlen[1]),
        .I3(L[3]),
        .O(minusOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    minusOp_carry_i_7
       (.I0(s00_axi_arlen[0]),
        .I1(L[2]),
        .O(minusOp_carry_i_7_n_0));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,1'b0}),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O({\minusOp_inferred__0/i__carry__0_n_4 ,\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_awaddr_reg_n_0_[12] ,\axi_awaddr_reg_n_0_[11] ,\axi_awaddr_reg_n_0_[10] ,i__carry__1_i_1_n_0}),
        .O({\minusOp_inferred__0/i__carry__1_n_4 ,\minusOp_inferred__0/i__carry__1_n_5 ,\minusOp_inferred__0/i__carry__1_n_6 ,\minusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0,i__carry__1_i_5_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__2_n_0 ,\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_awaddr_reg_n_0_[16] ,\axi_awaddr_reg_n_0_[15] ,\axi_awaddr_reg_n_0_[14] ,\axi_awaddr_reg_n_0_[13] }),
        .O({\minusOp_inferred__0/i__carry__2_n_4 ,\minusOp_inferred__0/i__carry__2_n_5 ,\minusOp_inferred__0/i__carry__2_n_6 ,\minusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__3 
       (.CI(\minusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__3_n_0 ,\minusOp_inferred__0/i__carry__3_n_1 ,\minusOp_inferred__0/i__carry__3_n_2 ,\minusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_awaddr_reg_n_0_[20] ,\axi_awaddr_reg_n_0_[19] ,\axi_awaddr_reg_n_0_[18] ,\axi_awaddr_reg_n_0_[17] }),
        .O({\minusOp_inferred__0/i__carry__3_n_4 ,\minusOp_inferred__0/i__carry__3_n_5 ,\minusOp_inferred__0/i__carry__3_n_6 ,\minusOp_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__4 
       (.CI(\minusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__4_CO_UNCONNECTED [3:1],\minusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\axi_awaddr_reg_n_0_[21] }),
        .O({\NLW_minusOp_inferred__0/i__carry__4_O_UNCONNECTED [3:2],\minusOp_inferred__0/i__carry__4_n_6 ,\minusOp_inferred__0/i__carry__4_n_7 }),
        .S({1'b0,1'b0,i__carry__4_i_1_n_0,i__carry__4_i_2_n_0}));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(L[2]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[6:3]),
        .S(L[6:3]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[10:7]),
        .S(L[10:7]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[14:11]),
        .S(L[14:11]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[18:15]),
        .S(L[18:15]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[22:19]),
        .S(L[22:19]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO(NLW_plusOp_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__4_O_UNCONNECTED[3:1],plusOp__1[23]}),
        .S({1'b0,1'b0,1'b0,L[23]}));
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(\axi_awaddr_reg_n_0_[2] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .S({\axi_awaddr_reg_n_0_[6] ,\axi_awaddr_reg_n_0_[5] ,\axi_awaddr_reg_n_0_[4] ,\axi_awaddr_reg_n_0_[3] }));
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .S({\axi_awaddr_reg_n_0_[10] ,\axi_awaddr_reg_n_0_[9] ,\axi_awaddr_reg_n_0_[8] ,\axi_awaddr_reg_n_0_[7] }));
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .S({\axi_awaddr_reg_n_0_[14] ,\axi_awaddr_reg_n_0_[13] ,\axi_awaddr_reg_n_0_[12] ,\axi_awaddr_reg_n_0_[11] }));
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__2_n_4 ,\plusOp_inferred__0/i__carry__2_n_5 ,\plusOp_inferred__0/i__carry__2_n_6 ,\plusOp_inferred__0/i__carry__2_n_7 }),
        .S({\axi_awaddr_reg_n_0_[18] ,\axi_awaddr_reg_n_0_[17] ,\axi_awaddr_reg_n_0_[16] ,\axi_awaddr_reg_n_0_[15] }));
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\plusOp_inferred__0/i__carry__3_n_4 ,\plusOp_inferred__0/i__carry__3_n_5 ,\plusOp_inferred__0/i__carry__3_n_6 ,\plusOp_inferred__0/i__carry__3_n_7 }),
        .S({\axi_awaddr_reg_n_0_[22] ,\axi_awaddr_reg_n_0_[21] ,\axi_awaddr_reg_n_0_[20] ,\axi_awaddr_reg_n_0_[19] }));
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO(\NLW_plusOp_inferred__0/i__carry__4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__4_O_UNCONNECTED [3:1],\plusOp_inferred__0/i__carry__4_n_7 }),
        .S({1'b0,1'b0,1'b0,\axi_awaddr_reg_n_0_[23] }));
  LUT6 #(
    .INIT(64'h80B0FFFF80B00000)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(next_state18_out__0),
        .I2(\state[0]_i_3_n_0 ),
        .I3(\axi_araddr_reg_n_0_[1] ),
        .I4(AsyncPSRAMinst_n_11),
        .I5(state[0]),
        .O(\state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_2 
       (.I0(s00_axi_wstrb[0]),
        .I1(s00_axi_wstrb[1]),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \state[0]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFEEEA0000)) 
    \state[1]_i_1 
       (.I0(AsyncPSRAMinst_n_15),
        .I1(\state[1]_i_3_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(AsyncPSRAMinst_n_11),
        .I5(state[1]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_3 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFF0040000)) 
    \state[2]_i_1 
       (.I0(next_state18_out__0),
        .I1(\axi_araddr_reg_n_0_[1] ),
        .I2(state[1]),
        .I3(state[0]),
        .I4(AsyncPSRAMinst_n_11),
        .I5(state[2]),
        .O(\state[2]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(reset_p));
  FDRE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(reset_p));
  FDRE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(reset_p));
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
