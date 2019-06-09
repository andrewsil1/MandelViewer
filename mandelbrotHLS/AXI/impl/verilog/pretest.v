// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pretest (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        x_V,
        y_V,
        ap_return
);

parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [39:0] x_V;
input  [39:0] y_V;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] p_Result_9_reg_868;
wire    ap_CS_fsm_state2;
wire  signed [39:0] grp_fu_150_p3;
reg  signed [39:0] p_Val2_13_reg_880;
reg   [0:0] tmp_20_reg_892;
wire   [0:0] grp_fu_416_p3;
reg   [0:0] p_Result_10_reg_898;
wire  signed [79:0] r_V_2_fu_274_p1;
reg  signed [79:0] reg_904;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state9;
reg   [3:0] p_Result_1_reg_915;
wire    ap_CS_fsm_state6;
wire   [34:0] trunc_ln718_fu_300_p1;
reg   [39:0] reg_930;
wire    ap_CS_fsm_state12;
wire   [34:0] trunc_ln718_1_fu_541_p1;
wire   [79:0] grp_fu_92_p2;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state10;
reg   [0:0] p_Result_s_reg_936;
wire   [0:0] Range2_all_ones_fu_314_p2;
reg   [0:0] Range2_all_ones_reg_941;
wire   [0:0] Range1_all_ones_fu_340_p2;
reg   [0:0] Range1_all_ones_reg_952;
wire    ap_CS_fsm_state7;
wire   [0:0] grp_fu_569_p2;
reg   [0:0] r_1_reg_957;
wire   [0:0] Range1_all_zeros_fu_335_p2;
reg   [0:0] Range1_all_zeros_reg_964;
wire   [0:0] p_Result_3_fu_676_p3;
reg   [0:0] p_Result_3_reg_975;
wire   [0:0] carry_1_fu_410_p2;
reg   [0:0] carry_1_reg_981;
wire   [0:0] and_ln786_fu_449_p2;
reg   [0:0] and_ln786_reg_986;
wire   [79:0] grp_fu_277_p2;
reg   [80:0] reg_998;
wire  signed [80:0] sext_ln1118_fu_832_p1;
wire    ap_CS_fsm_state14;
wire  signed [79:0] r_V_7_fu_283_p1;
reg   [0:0] r_2_reg_1022;
reg   [0:0] p_Result_6_reg_1028;
wire   [0:0] Range2_all_ones_1_fu_584_p2;
reg   [0:0] Range2_all_ones_1_reg_1038;
reg   [0:0] p_Result_8_reg_1055;
wire   [0:0] carry_3_fu_670_p2;
reg   [0:0] carry_3_reg_1061;
wire   [0:0] Range1_all_zeros_1_fu_684_p2;
reg   [0:0] Range1_all_zeros_1_reg_1066;
wire   [0:0] Range1_all_ones_2_fu_689_p2;
reg   [0:0] Range1_all_ones_2_reg_1072;
wire   [0:0] grp_fu_852_p2;
reg   [0:0] icmp_ln1497_1_reg_1077;
wire   [0:0] and_ln786_3_fu_720_p2;
reg   [0:0] and_ln786_3_reg_1083;
wire   [80:0] grp_fu_82_p2;
reg   [80:0] reg_1109;
wire  signed [80:0] r_V_4_fu_829_p1;
wire  signed [79:0] r_V_fu_78_p1;
wire    ap_CS_fsm_state19;
wire   [79:0] grp_fu_390_p2;
wire    ap_CS_fsm_state13;
reg  signed [40:0] grp_fu_82_p0;
reg  signed [39:0] grp_fu_82_p1;
wire  signed [39:0] lhs_V_fu_88_p0;
reg   [79:0] grp_fu_92_p0;
wire  signed [79:0] sext_ln728_fu_552_p1;
reg  signed [79:0] grp_fu_92_p1;
wire   [39:0] zext_ln415_1_fu_646_p1;
wire   [39:0] zext_ln415_fu_386_p1;
wire   [40:0] ret_V_5_fu_188_p2;
wire   [39:0] p_Result_5_fu_112_p1;
wire   [0:0] p_Result_5_fu_112_p3;
wire   [0:0] p_Result_4_fu_98_p3;
wire   [0:0] xor_ln786_1_fu_120_p2;
wire   [0:0] xor_ln340_1_fu_138_p2;
reg   [0:0] grp_fu_150_p0;
wire   [0:0] or_ln340_3_fu_144_p2;
wire   [0:0] or_ln340_8_fu_246_p2;
wire   [0:0] or_ln340_1_fu_513_p2;
wire   [0:0] or_ln340_6_fu_789_p2;
wire   [39:0] grp_fu_795_p3;
wire   [39:0] grp_fu_455_p3;
wire  signed [40:0] lhs_V_fu_88_p1;
wire   [40:0] ret_V_7_fu_174_p2;
wire   [39:0] grp_fu_194_p1;
wire   [0:0] or_ln785_2_fu_210_p2;
wire   [0:0] xor_ln785_4_fu_214_p2;
wire   [0:0] and_ln786_5_fu_225_p2;
wire   [0:0] xor_ln786_3_fu_229_p2;
wire   [0:0] underflow_3_fu_235_p2;
wire   [0:0] overflow_2_fu_219_p2;
wire  signed [39:0] grp_fu_277_p0;
wire  signed [39:0] grp_fu_277_p1;
wire   [39:0] r_V_7_fu_283_p0;
wire   [79:0] p_Result_s_fu_292_p1;
wire   [79:0] trunc_ln718_fu_300_p0;
wire   [79:0] p_Result_s_12_fu_304_p1;
wire   [2:0] p_Result_s_12_fu_304_p4;
wire   [79:0] p_Result_1_fu_320_p1;
wire   [79:0] y2_V_fu_345_p1;
wire   [79:0] tmp_3_fu_354_p1;
wire   [79:0] p_Result_2_fu_361_p1;
wire   [0:0] tmp_3_fu_354_p3;
wire   [79:0] tmp_5_fu_373_p1;
wire   [0:0] tmp_5_fu_373_p3;
wire   [0:0] r_fu_368_p2;
wire   [0:0] and_ln412_fu_380_p2;
reg  signed [79:0] grp_fu_390_p0;
wire  signed [40:0] lhs_V_1_fu_817_p1;
reg  signed [79:0] grp_fu_390_p1;
wire  signed [40:0] rhs_V_1_fu_820_p1;
wire   [0:0] p_Result_2_fu_361_p3;
wire   [0:0] grp_fu_664_p2;
wire   [39:0] grp_fu_416_p1;
wire   [79:0] tmp_8_fu_424_p1;
wire   [0:0] tmp_8_fu_424_p3;
wire   [0:0] xor_ln779_fu_431_p2;
wire   [0:0] and_ln779_fu_437_p2;
wire   [0:0] deleted_ones_fu_442_p3;
reg   [0:0] grp_fu_455_p0;
wire   [0:0] underflow_1_fu_126_p2;
wire   [0:0] underflow_2_fu_773_p2;
wire   [0:0] underflow_fu_497_p2;
reg   [39:0] grp_fu_455_p2;
wire   [0:0] deleted_zeros_fu_252_p3;
wire   [0:0] xor_ln785_fu_464_p2;
wire   [0:0] or_ln785_fu_470_p2;
wire   [0:0] xor_ln785_1_fu_475_p2;
wire   [0:0] and_ln781_fu_460_p2;
wire   [0:0] or_ln786_fu_486_p2;
wire   [0:0] xor_ln786_fu_491_p2;
wire   [0:0] overflow_fu_480_p2;
wire   [0:0] or_ln340_2_fu_508_p2;
wire   [79:0] trunc_ln718_1_fu_541_p0;
wire   [39:0] rhs_V_fu_545_p1;
wire   [75:0] rhs_V_fu_545_p3;
wire   [34:0] grp_fu_569_p0;
wire   [2:0] tmp_fu_574_p4;
wire   [79:0] q_V_fu_605_p1;
wire   [79:0] tmp_12_fu_614_p1;
wire   [79:0] p_Result_7_fu_621_p1;
wire   [0:0] tmp_12_fu_614_p3;
wire   [79:0] tmp_14_fu_633_p1;
wire   [0:0] tmp_14_fu_633_p3;
wire   [0:0] r_3_fu_628_p2;
wire   [0:0] and_ln412_1_fu_640_p2;
wire   [0:0] grp_fu_194_p3;
wire   [0:0] p_Result_7_fu_621_p3;
wire   [39:0] p_Result_3_fu_676_p1;
wire   [3:0] Range1_all_zeros_1_fu_684_p0;
wire   [3:0] Range1_all_ones_2_fu_689_p0;
wire   [79:0] tmp_17_fu_694_p1;
wire   [0:0] tmp_17_fu_694_p3;
wire   [0:0] xor_ln779_1_fu_701_p2;
wire   [0:0] and_ln779_1_fu_707_p2;
wire   [0:0] deleted_ones_2_fu_712_p3;
wire   [0:0] deleted_zeros_1_fu_731_p3;
wire   [0:0] xor_ln785_2_fu_740_p2;
wire   [0:0] or_ln785_1_fu_746_p2;
wire   [0:0] xor_ln785_3_fu_751_p2;
wire   [0:0] and_ln781_1_fu_736_p2;
wire   [0:0] or_ln786_1_fu_762_p2;
wire   [0:0] xor_ln786_2_fu_767_p2;
wire   [0:0] overflow_1_fu_756_p2;
wire   [0:0] or_ln340_5_fu_784_p2;
reg   [0:0] grp_fu_795_p0;
wire   [0:0] or_ln340_7_fu_240_p2;
wire   [0:0] xor_ln340_fu_132_p2;
wire   [0:0] or_ln340_4_fu_778_p2;
wire   [0:0] or_ln340_fu_502_p2;
reg   [39:0] grp_fu_795_p2;
wire  signed [39:0] lhs_V_1_fu_817_p0;
wire  signed [39:0] r_V_4_fu_829_p0;
wire   [40:0] sext_ln1118_fu_832_p0;
wire   [39:0] r_V_6_fu_841_p1;
wire    ap_CS_fsm_state20;
wire   [73:0] r_V_6_fu_841_p3;
reg   [80:0] grp_fu_852_p0;
wire  signed [80:0] sext_ln1497_fu_848_p1;
reg   [80:0] grp_fu_852_p1;
wire   [0:0] xor_ln1497_fu_857_p2;
reg   [19:0] ap_NS_fsm;
wire   [39:0] grp_fu_92_p01;
wire   [39:0] grp_fu_92_p03;
wire   [79:0] p_Result_5_fu_112_p10;
wire   [3:0] reg_9304;

// power-on initialization
initial begin
#0 ap_CS_fsm = 20'd1;
end

calc_mul_41s_40s_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 41 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 81 ))
calc_mul_41s_40s_bkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_82_p0),
    .din1(grp_fu_82_p1),
    .ce(1'b1),
    .dout(grp_fu_82_p2)
);

calc_mul_40s_40s_cud #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 40 ),
    .din1_WIDTH( 40 ),
    .dout_WIDTH( 80 ))
calc_mul_40s_40s_cud_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_277_p0),
    .din1(grp_fu_277_p1),
    .ce(1'b1),
    .dout(grp_fu_277_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_1109 <= grp_fu_390_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        reg_1109 <= r_V_fu_78_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        reg_1109 <= r_V_4_fu_829_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_1109 <= grp_fu_82_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_904 <= grp_fu_150_p3;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_904 <= r_V_2_fu_274_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_930 <= reg_9304;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_930 <= grp_fu_92_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_930 <= trunc_ln718_1_fu_541_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        reg_930 <= grp_fu_150_p3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        reg_930 <= trunc_ln718_fu_300_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_998 <= grp_fu_92_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        reg_998 <= r_V_7_fu_283_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        reg_998 <= sext_ln1118_fu_832_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_998 <= grp_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        Range1_all_ones_2_reg_1072 <= Range1_all_ones_2_fu_689_p2;
        Range1_all_zeros_1_reg_1066 <= Range1_all_zeros_1_fu_684_p2;
        and_ln786_3_reg_1083 <= and_ln786_3_fu_720_p2;
        carry_3_reg_1061 <= carry_3_fu_670_p2;
        icmp_ln1497_1_reg_1077 <= grp_fu_852_p2;
        p_Result_8_reg_1055 <= grp_fu_416_p1[32'd39];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        Range1_all_ones_reg_952 <= Range1_all_ones_fu_340_p2;
        Range1_all_zeros_reg_964 <= Range1_all_zeros_fu_335_p2;
        r_1_reg_957 <= grp_fu_569_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        Range2_all_ones_1_reg_1038 <= Range2_all_ones_1_fu_584_p2;
        p_Result_6_reg_1028 <= grp_fu_92_p2[32'd79];
        r_2_reg_1022 <= grp_fu_569_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        Range2_all_ones_reg_941 <= Range2_all_ones_fu_314_p2;
        p_Result_1_reg_915 <= {{p_Result_1_fu_320_p1[79:76]}};
        p_Result_s_reg_936 <= p_Result_s_fu_292_p1[32'd79];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        and_ln786_reg_986 <= and_ln786_fu_449_p2;
        carry_1_reg_981 <= carry_1_fu_410_p2;
        p_Result_3_reg_975 <= p_Result_3_fu_676_p1[32'd39];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        p_Result_10_reg_898 <= grp_fu_416_p1[32'd39];
        p_Result_9_reg_868 <= ret_V_7_fu_174_p2[32'd40];
        p_Val2_13_reg_880 <= grp_fu_150_p3;
        tmp_20_reg_892 <= ret_V_7_fu_174_p2[32'd40];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_150_p0 = or_ln340_6_fu_789_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_150_p0 = or_ln340_1_fu_513_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_150_p0 = or_ln340_8_fu_246_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_150_p0 = or_ln340_3_fu_144_p2;
    end else begin
        grp_fu_150_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_390_p0 = lhs_V_1_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_390_p0 = sext_ln728_fu_552_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_390_p0 = 40'd1082331758592;
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_390_p1 = rhs_V_1_fu_820_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_390_p1 = reg_998;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_390_p1 = x_V;
    end else begin
        grp_fu_390_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_455_p0 = underflow_2_fu_773_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_455_p0 = underflow_fu_497_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_455_p0 = underflow_3_fu_235_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_455_p0 = underflow_1_fu_126_p2;
    end else begin
        grp_fu_455_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_455_p2 = reg_930;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_455_p2 = grp_fu_390_p2;
    end else begin
        grp_fu_455_p2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_795_p0 = or_ln340_4_fu_778_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_795_p0 = or_ln340_fu_502_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_795_p0 = or_ln340_7_fu_240_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_795_p0 = xor_ln340_fu_132_p2;
    end else begin
        grp_fu_795_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3))) begin
        grp_fu_795_p2 = reg_930;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_795_p2 = grp_fu_390_p2;
    end else begin
        grp_fu_795_p2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_82_p0 = sext_ln1118_fu_832_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_82_p0 = r_V_2_fu_274_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_82_p0 = r_V_fu_78_p1;
    end else begin
        grp_fu_82_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_82_p1 = r_V_4_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_82_p1 = r_V_2_fu_274_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        grp_fu_82_p1 = r_V_fu_78_p1;
    end else begin
        grp_fu_82_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_852_p0 = sext_ln1497_fu_848_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_852_p0 = reg_1109;
    end else begin
        grp_fu_852_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_852_p1 = reg_1109;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_852_p1 = 80'd295147905179352825857;
    end else begin
        grp_fu_852_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_92_p0 = grp_fu_92_p03;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_92_p0 = sext_ln728_fu_552_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_92_p0 = grp_fu_92_p01;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_92_p0 = 40'd68719476736;
    end else begin
        grp_fu_92_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_92_p1 = zext_ln415_1_fu_646_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_92_p1 = reg_1109;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_92_p1 = zext_ln415_fu_386_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_92_p1 = x_V;
    end else begin
        grp_fu_92_p1 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Range1_all_ones_2_fu_689_p0 = reg_930;

assign Range1_all_ones_2_fu_689_p2 = ((Range1_all_ones_2_fu_689_p0 == 4'd15) ? 1'b1 : 1'b0);

assign Range1_all_ones_fu_340_p2 = ((p_Result_1_reg_915 == 4'd15) ? 1'b1 : 1'b0);

assign Range1_all_zeros_1_fu_684_p0 = reg_930;

assign Range1_all_zeros_1_fu_684_p2 = ((Range1_all_zeros_1_fu_684_p0 == 4'd0) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_335_p2 = ((p_Result_1_reg_915 == 4'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_1_fu_584_p2 = ((tmp_fu_574_p4 == 3'd7) ? 1'b1 : 1'b0);

assign Range2_all_ones_fu_314_p2 = ((p_Result_s_12_fu_304_p4 == 3'd7) ? 1'b1 : 1'b0);

assign and_ln412_1_fu_640_p2 = (tmp_14_fu_633_p3 & r_3_fu_628_p2);

assign and_ln412_fu_380_p2 = (tmp_5_fu_373_p3 & r_fu_368_p2);

assign and_ln779_1_fu_707_p2 = (xor_ln779_1_fu_701_p2 & Range2_all_ones_1_reg_1038);

assign and_ln779_fu_437_p2 = (xor_ln779_fu_431_p2 & Range2_all_ones_reg_941);

assign and_ln781_1_fu_736_p2 = (carry_3_reg_1061 & Range1_all_ones_2_reg_1072);

assign and_ln781_fu_460_p2 = (carry_1_reg_981 & Range1_all_ones_reg_952);

assign and_ln786_3_fu_720_p2 = (grp_fu_416_p3 & deleted_ones_2_fu_712_p3);

assign and_ln786_5_fu_225_p2 = (tmp_20_reg_892 & p_Result_10_reg_898);

assign and_ln786_fu_449_p2 = (p_Result_3_fu_676_p3 & deleted_ones_fu_442_p3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = (xor_ln1497_fu_857_p2 | icmp_ln1497_1_reg_1077);

assign carry_1_fu_410_p2 = (p_Result_2_fu_361_p3 & grp_fu_664_p2);

assign carry_3_fu_670_p2 = (p_Result_7_fu_621_p3 & grp_fu_664_p2);

assign deleted_ones_2_fu_712_p3 = ((carry_3_fu_670_p2[0:0] === 1'b1) ? and_ln779_1_fu_707_p2 : Range1_all_ones_2_fu_689_p2);

assign deleted_ones_fu_442_p3 = ((carry_1_fu_410_p2[0:0] === 1'b1) ? and_ln779_fu_437_p2 : Range1_all_ones_reg_952);

assign deleted_zeros_1_fu_731_p3 = ((carry_3_reg_1061[0:0] === 1'b1) ? Range1_all_ones_2_reg_1072 : Range1_all_zeros_1_reg_1066);

assign deleted_zeros_fu_252_p3 = ((carry_1_reg_981[0:0] === 1'b1) ? Range1_all_ones_reg_952 : Range1_all_zeros_reg_964);

assign grp_fu_150_p3 = ((grp_fu_150_p0[0:0] === 1'b1) ? grp_fu_795_p3 : grp_fu_455_p3);

assign grp_fu_194_p1 = grp_fu_92_p2;

assign grp_fu_194_p3 = grp_fu_194_p1[32'd39];

assign grp_fu_277_p0 = r_V_7_fu_283_p1;

assign grp_fu_277_p1 = r_V_7_fu_283_p1;

assign grp_fu_390_p2 = ($signed(grp_fu_390_p0) + $signed(grp_fu_390_p1));

assign grp_fu_416_p1 = grp_fu_92_p2;

assign grp_fu_416_p3 = grp_fu_416_p1[32'd39];

assign grp_fu_455_p3 = ((grp_fu_455_p0[0:0] === 1'b1) ? 40'd549755813888 : grp_fu_455_p2);

assign grp_fu_569_p0 = reg_930;

assign grp_fu_569_p2 = ((grp_fu_569_p0 != 35'd0) ? 1'b1 : 1'b0);

assign grp_fu_664_p2 = (grp_fu_194_p3 ^ 1'd1);

assign grp_fu_795_p3 = ((grp_fu_795_p0[0:0] === 1'b1) ? 40'd549755813887 : grp_fu_795_p2);

assign grp_fu_852_p2 = (($signed(grp_fu_852_p0) < $signed(grp_fu_852_p1)) ? 1'b1 : 1'b0);

assign grp_fu_92_p01 = {{y2_V_fu_345_p1[75:36]}};

assign grp_fu_92_p03 = {{q_V_fu_605_p1[75:36]}};

assign grp_fu_92_p2 = ($signed(grp_fu_92_p0) + $signed(grp_fu_92_p1));

assign lhs_V_1_fu_817_p0 = reg_930;

assign lhs_V_1_fu_817_p1 = lhs_V_1_fu_817_p0;

assign lhs_V_fu_88_p0 = x_V;

assign lhs_V_fu_88_p1 = lhs_V_fu_88_p0;

assign or_ln340_1_fu_513_p2 = (or_ln340_2_fu_508_p2 | and_ln781_fu_460_p2);

assign or_ln340_2_fu_508_p2 = (xor_ln785_1_fu_475_p2 | and_ln786_reg_986);

assign or_ln340_3_fu_144_p2 = (xor_ln340_1_fu_138_p2 | p_Result_5_fu_112_p3);

assign or_ln340_4_fu_778_p2 = (underflow_2_fu_773_p2 | overflow_1_fu_756_p2);

assign or_ln340_5_fu_784_p2 = (xor_ln785_3_fu_751_p2 | and_ln786_3_reg_1083);

assign or_ln340_6_fu_789_p2 = (or_ln340_5_fu_784_p2 | and_ln781_1_fu_736_p2);

assign or_ln340_7_fu_240_p2 = (underflow_3_fu_235_p2 | overflow_2_fu_219_p2);

assign or_ln340_8_fu_246_p2 = (xor_ln785_4_fu_214_p2 | and_ln786_5_fu_225_p2);

assign or_ln340_fu_502_p2 = (underflow_fu_497_p2 | overflow_fu_480_p2);

assign or_ln785_1_fu_746_p2 = (xor_ln785_2_fu_740_p2 | p_Result_8_reg_1055);

assign or_ln785_2_fu_210_p2 = (tmp_20_reg_892 | p_Result_10_reg_898);

assign or_ln785_fu_470_p2 = (xor_ln785_fu_464_p2 | p_Result_3_reg_975);

assign or_ln786_1_fu_762_p2 = (and_ln786_3_reg_1083 | and_ln781_1_fu_736_p2);

assign or_ln786_fu_486_p2 = (and_ln786_reg_986 | and_ln781_fu_460_p2);

assign overflow_1_fu_756_p2 = (xor_ln785_3_fu_751_p2 & or_ln785_1_fu_746_p2);

assign overflow_2_fu_219_p2 = (xor_ln785_4_fu_214_p2 & or_ln785_2_fu_210_p2);

assign overflow_fu_480_p2 = (xor_ln785_1_fu_475_p2 & or_ln785_fu_470_p2);

assign p_Result_1_fu_320_p1 = grp_fu_82_p2;

assign p_Result_2_fu_361_p1 = reg_1109;

assign p_Result_2_fu_361_p3 = p_Result_2_fu_361_p1[32'd75];

assign p_Result_3_fu_676_p1 = grp_fu_92_p2;

assign p_Result_3_fu_676_p3 = p_Result_3_fu_676_p1[32'd39];

assign p_Result_4_fu_98_p3 = ret_V_5_fu_188_p2[32'd40];

assign p_Result_5_fu_112_p1 = p_Result_5_fu_112_p10;

assign p_Result_5_fu_112_p10 = ($signed(grp_fu_390_p0) + $signed(grp_fu_390_p1));

assign p_Result_5_fu_112_p3 = p_Result_5_fu_112_p1[32'd39];

assign p_Result_7_fu_621_p1 = reg_998;

assign p_Result_7_fu_621_p3 = p_Result_7_fu_621_p1[32'd75];

assign p_Result_s_12_fu_304_p1 = grp_fu_82_p2;

assign p_Result_s_12_fu_304_p4 = {{p_Result_s_12_fu_304_p1[79:77]}};

assign p_Result_s_fu_292_p1 = grp_fu_82_p2;

assign q_V_fu_605_p1 = reg_998;

assign r_3_fu_628_p2 = (tmp_12_fu_614_p3 | r_2_reg_1022);

assign r_V_2_fu_274_p1 = p_Val2_13_reg_880;

assign r_V_4_fu_829_p0 = reg_930;

assign r_V_4_fu_829_p1 = r_V_4_fu_829_p0;

assign r_V_6_fu_841_p1 = reg_904;

assign r_V_6_fu_841_p3 = {{r_V_6_fu_841_p1}, {34'd0}};

assign r_V_7_fu_283_p0 = reg_904;

assign r_V_7_fu_283_p1 = $signed(r_V_7_fu_283_p0);

assign r_V_fu_78_p1 = $signed(y_V);

assign r_fu_368_p2 = (tmp_3_fu_354_p3 | r_1_reg_957);

assign reg_9304 = {{grp_fu_92_p2[79:76]}};

assign ret_V_5_fu_188_p2 = ($signed(41'd2181843386368) + $signed(lhs_V_fu_88_p1));

assign ret_V_7_fu_174_p2 = ($signed(41'd68719476736) + $signed(lhs_V_fu_88_p1));

assign rhs_V_1_fu_820_p1 = p_Val2_13_reg_880;

assign rhs_V_fu_545_p1 = reg_904;

assign rhs_V_fu_545_p3 = {{rhs_V_fu_545_p1}, {36'd0}};

assign sext_ln1118_fu_832_p0 = reg_1109;

assign sext_ln1118_fu_832_p1 = $signed(sext_ln1118_fu_832_p0);

assign sext_ln1497_fu_848_p1 = $signed(r_V_6_fu_841_p3);

assign sext_ln728_fu_552_p1 = $signed(rhs_V_fu_545_p3);

assign tmp_12_fu_614_p1 = reg_998;

assign tmp_12_fu_614_p3 = tmp_12_fu_614_p1[32'd36];

assign tmp_14_fu_633_p1 = reg_998;

assign tmp_14_fu_633_p3 = tmp_14_fu_633_p1[32'd35];

assign tmp_17_fu_694_p1 = reg_998;

assign tmp_17_fu_694_p3 = tmp_17_fu_694_p1[32'd76];

assign tmp_3_fu_354_p1 = reg_1109;

assign tmp_3_fu_354_p3 = tmp_3_fu_354_p1[32'd36];

assign tmp_5_fu_373_p1 = reg_1109;

assign tmp_5_fu_373_p3 = tmp_5_fu_373_p1[32'd35];

assign tmp_8_fu_424_p1 = reg_1109;

assign tmp_8_fu_424_p3 = tmp_8_fu_424_p1[32'd76];

assign tmp_fu_574_p4 = {{grp_fu_92_p2[79:77]}};

assign trunc_ln718_1_fu_541_p0 = grp_fu_82_p2;

assign trunc_ln718_1_fu_541_p1 = trunc_ln718_1_fu_541_p0[34:0];

assign trunc_ln718_fu_300_p0 = grp_fu_82_p2;

assign trunc_ln718_fu_300_p1 = trunc_ln718_fu_300_p0[34:0];

assign underflow_1_fu_126_p2 = (xor_ln786_1_fu_120_p2 & p_Result_4_fu_98_p3);

assign underflow_2_fu_773_p2 = (xor_ln786_2_fu_767_p2 & p_Result_6_reg_1028);

assign underflow_3_fu_235_p2 = (xor_ln786_3_fu_229_p2 & p_Result_9_reg_868);

assign underflow_fu_497_p2 = (xor_ln786_fu_491_p2 & p_Result_s_reg_936);

assign xor_ln1497_fu_857_p2 = (grp_fu_852_p2 ^ 1'd1);

assign xor_ln340_1_fu_138_p2 = (p_Result_4_fu_98_p3 ^ 1'd1);

assign xor_ln340_fu_132_p2 = (p_Result_5_fu_112_p3 ^ p_Result_4_fu_98_p3);

assign xor_ln779_1_fu_701_p2 = (tmp_17_fu_694_p3 ^ 1'd1);

assign xor_ln779_fu_431_p2 = (tmp_8_fu_424_p3 ^ 1'd1);

assign xor_ln785_1_fu_475_p2 = (p_Result_s_reg_936 ^ 1'd1);

assign xor_ln785_2_fu_740_p2 = (deleted_zeros_1_fu_731_p3 ^ 1'd1);

assign xor_ln785_3_fu_751_p2 = (p_Result_6_reg_1028 ^ 1'd1);

assign xor_ln785_4_fu_214_p2 = (p_Result_9_reg_868 ^ 1'd1);

assign xor_ln785_fu_464_p2 = (deleted_zeros_fu_252_p3 ^ 1'd1);

assign xor_ln786_1_fu_120_p2 = (p_Result_5_fu_112_p3 ^ 1'd1);

assign xor_ln786_2_fu_767_p2 = (or_ln786_1_fu_762_p2 ^ 1'd1);

assign xor_ln786_3_fu_229_p2 = (1'd1 ^ and_ln786_5_fu_225_p2);

assign xor_ln786_fu_491_p2 = (or_ln786_fu_486_p2 ^ 1'd1);

assign y2_V_fu_345_p1 = reg_1109;

assign zext_ln415_1_fu_646_p1 = and_ln412_1_fu_640_p2;

assign zext_ln415_fu_386_p1 = and_ln412_fu_380_p2;

endmodule //pretest
