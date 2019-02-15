// ==============================================================
// File generated on Thu Feb 14 15:44:13 -0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module calc_mul_40s_41s_dEe_MulnS_2(clk, ce, a, b, p);
input clk;
input ce;
input[40 - 1 : 0] a; 
input[41 - 1 : 0] b; 
output[81 - 1 : 0] p;

reg signed [40 - 1 : 0] a_reg0;
reg signed [41 - 1 : 0] b_reg0;
wire signed [81 - 1 : 0] tmp_product;
reg signed [81 - 1 : 0] buff0;
reg signed [81 - 1 : 0] buff1;
reg signed [81 - 1 : 0] buff2;
reg signed [81 - 1 : 0] buff3;

assign p = buff3;
assign tmp_product = a_reg0 * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
        buff1 <= buff0;
        buff2 <= buff1;
        buff3 <= buff2;
    end
end
endmodule
`timescale 1 ns / 1 ps
module calc_mul_40s_41s_dEe(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



calc_mul_40s_41s_dEe_MulnS_2 calc_mul_40s_41s_dEe_MulnS_2_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

