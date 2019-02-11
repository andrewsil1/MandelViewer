//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Sun Jan 13 14:26:01 2019
//Host        : AndrewSi64 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Fast_IP_Clock_wrapper
   (btnCpuReset,
    clk,
    psram_rtl_0_addr,
    psram_rtl_0_adv_ldn,
    psram_rtl_0_ben,
    psram_rtl_0_ce_n,
    psram_rtl_0_cre,
    psram_rtl_0_dq_io,
    psram_rtl_0_oen,
    psram_rtl_0_wen,
    push_buttons_5bits_tri_i,
    usb_uart_rxd,
    usb_uart_txd);
  input btnCpuReset;
  input clk;
  output [22:0]psram_rtl_0_addr;
  output psram_rtl_0_adv_ldn;
  output [1:0]psram_rtl_0_ben;
  output psram_rtl_0_ce_n;
  output psram_rtl_0_cre;
  inout [15:0]psram_rtl_0_dq_io;
  output psram_rtl_0_oen;
  output psram_rtl_0_wen;
  input [4:0]push_buttons_5bits_tri_i;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire btnCpuReset;
  wire clk;
  wire [22:0]psram_rtl_0_addr;
  wire psram_rtl_0_adv_ldn;
  wire [1:0]psram_rtl_0_ben;
  wire psram_rtl_0_ce_n;
  wire psram_rtl_0_cre;
  wire [0:0]psram_rtl_0_dq_i_0;
  wire [1:1]psram_rtl_0_dq_i_1;
  wire [10:10]psram_rtl_0_dq_i_10;
  wire [11:11]psram_rtl_0_dq_i_11;
  wire [12:12]psram_rtl_0_dq_i_12;
  wire [13:13]psram_rtl_0_dq_i_13;
  wire [14:14]psram_rtl_0_dq_i_14;
  wire [15:15]psram_rtl_0_dq_i_15;
  wire [2:2]psram_rtl_0_dq_i_2;
  wire [3:3]psram_rtl_0_dq_i_3;
  wire [4:4]psram_rtl_0_dq_i_4;
  wire [5:5]psram_rtl_0_dq_i_5;
  wire [6:6]psram_rtl_0_dq_i_6;
  wire [7:7]psram_rtl_0_dq_i_7;
  wire [8:8]psram_rtl_0_dq_i_8;
  wire [9:9]psram_rtl_0_dq_i_9;
  wire [0:0]psram_rtl_0_dq_io_0;
  wire [1:1]psram_rtl_0_dq_io_1;
  wire [10:10]psram_rtl_0_dq_io_10;
  wire [11:11]psram_rtl_0_dq_io_11;
  wire [12:12]psram_rtl_0_dq_io_12;
  wire [13:13]psram_rtl_0_dq_io_13;
  wire [14:14]psram_rtl_0_dq_io_14;
  wire [15:15]psram_rtl_0_dq_io_15;
  wire [2:2]psram_rtl_0_dq_io_2;
  wire [3:3]psram_rtl_0_dq_io_3;
  wire [4:4]psram_rtl_0_dq_io_4;
  wire [5:5]psram_rtl_0_dq_io_5;
  wire [6:6]psram_rtl_0_dq_io_6;
  wire [7:7]psram_rtl_0_dq_io_7;
  wire [8:8]psram_rtl_0_dq_io_8;
  wire [9:9]psram_rtl_0_dq_io_9;
  wire [0:0]psram_rtl_0_dq_o_0;
  wire [1:1]psram_rtl_0_dq_o_1;
  wire [10:10]psram_rtl_0_dq_o_10;
  wire [11:11]psram_rtl_0_dq_o_11;
  wire [12:12]psram_rtl_0_dq_o_12;
  wire [13:13]psram_rtl_0_dq_o_13;
  wire [14:14]psram_rtl_0_dq_o_14;
  wire [15:15]psram_rtl_0_dq_o_15;
  wire [2:2]psram_rtl_0_dq_o_2;
  wire [3:3]psram_rtl_0_dq_o_3;
  wire [4:4]psram_rtl_0_dq_o_4;
  wire [5:5]psram_rtl_0_dq_o_5;
  wire [6:6]psram_rtl_0_dq_o_6;
  wire [7:7]psram_rtl_0_dq_o_7;
  wire [8:8]psram_rtl_0_dq_o_8;
  wire [9:9]psram_rtl_0_dq_o_9;
  wire [0:0]psram_rtl_0_dq_t_0;
  wire [1:1]psram_rtl_0_dq_t_1;
  wire [10:10]psram_rtl_0_dq_t_10;
  wire [11:11]psram_rtl_0_dq_t_11;
  wire [12:12]psram_rtl_0_dq_t_12;
  wire [13:13]psram_rtl_0_dq_t_13;
  wire [14:14]psram_rtl_0_dq_t_14;
  wire [15:15]psram_rtl_0_dq_t_15;
  wire [2:2]psram_rtl_0_dq_t_2;
  wire [3:3]psram_rtl_0_dq_t_3;
  wire [4:4]psram_rtl_0_dq_t_4;
  wire [5:5]psram_rtl_0_dq_t_5;
  wire [6:6]psram_rtl_0_dq_t_6;
  wire [7:7]psram_rtl_0_dq_t_7;
  wire [8:8]psram_rtl_0_dq_t_8;
  wire [9:9]psram_rtl_0_dq_t_9;
  wire psram_rtl_0_oen;
  wire psram_rtl_0_wen;
  wire [4:0]push_buttons_5bits_tri_i;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  Fast_IP_Clock Fast_IP_Clock_i
       (.btnCpuReset(btnCpuReset),
        .clk(clk),
        .psram_rtl_0_addr(psram_rtl_0_addr),
        .psram_rtl_0_adv_ldn(psram_rtl_0_adv_ldn),
        .psram_rtl_0_ben(psram_rtl_0_ben),
        .psram_rtl_0_ce_n(psram_rtl_0_ce_n),
        .psram_rtl_0_cre(psram_rtl_0_cre),
        .psram_rtl_0_dq_i({psram_rtl_0_dq_i_15,psram_rtl_0_dq_i_14,psram_rtl_0_dq_i_13,psram_rtl_0_dq_i_12,psram_rtl_0_dq_i_11,psram_rtl_0_dq_i_10,psram_rtl_0_dq_i_9,psram_rtl_0_dq_i_8,psram_rtl_0_dq_i_7,psram_rtl_0_dq_i_6,psram_rtl_0_dq_i_5,psram_rtl_0_dq_i_4,psram_rtl_0_dq_i_3,psram_rtl_0_dq_i_2,psram_rtl_0_dq_i_1,psram_rtl_0_dq_i_0}),
        .psram_rtl_0_dq_o({psram_rtl_0_dq_o_15,psram_rtl_0_dq_o_14,psram_rtl_0_dq_o_13,psram_rtl_0_dq_o_12,psram_rtl_0_dq_o_11,psram_rtl_0_dq_o_10,psram_rtl_0_dq_o_9,psram_rtl_0_dq_o_8,psram_rtl_0_dq_o_7,psram_rtl_0_dq_o_6,psram_rtl_0_dq_o_5,psram_rtl_0_dq_o_4,psram_rtl_0_dq_o_3,psram_rtl_0_dq_o_2,psram_rtl_0_dq_o_1,psram_rtl_0_dq_o_0}),
        .psram_rtl_0_dq_t({psram_rtl_0_dq_t_15,psram_rtl_0_dq_t_14,psram_rtl_0_dq_t_13,psram_rtl_0_dq_t_12,psram_rtl_0_dq_t_11,psram_rtl_0_dq_t_10,psram_rtl_0_dq_t_9,psram_rtl_0_dq_t_8,psram_rtl_0_dq_t_7,psram_rtl_0_dq_t_6,psram_rtl_0_dq_t_5,psram_rtl_0_dq_t_4,psram_rtl_0_dq_t_3,psram_rtl_0_dq_t_2,psram_rtl_0_dq_t_1,psram_rtl_0_dq_t_0}),
        .psram_rtl_0_oen(psram_rtl_0_oen),
        .psram_rtl_0_wen(psram_rtl_0_wen),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF psram_rtl_0_dq_iobuf_0
       (.I(psram_rtl_0_dq_o_0),
        .IO(psram_rtl_0_dq_io[0]),
        .O(psram_rtl_0_dq_i_0),
        .T(psram_rtl_0_dq_t_0));
  IOBUF psram_rtl_0_dq_iobuf_1
       (.I(psram_rtl_0_dq_o_1),
        .IO(psram_rtl_0_dq_io[1]),
        .O(psram_rtl_0_dq_i_1),
        .T(psram_rtl_0_dq_t_1));
  IOBUF psram_rtl_0_dq_iobuf_10
       (.I(psram_rtl_0_dq_o_10),
        .IO(psram_rtl_0_dq_io[10]),
        .O(psram_rtl_0_dq_i_10),
        .T(psram_rtl_0_dq_t_10));
  IOBUF psram_rtl_0_dq_iobuf_11
       (.I(psram_rtl_0_dq_o_11),
        .IO(psram_rtl_0_dq_io[11]),
        .O(psram_rtl_0_dq_i_11),
        .T(psram_rtl_0_dq_t_11));
  IOBUF psram_rtl_0_dq_iobuf_12
       (.I(psram_rtl_0_dq_o_12),
        .IO(psram_rtl_0_dq_io[12]),
        .O(psram_rtl_0_dq_i_12),
        .T(psram_rtl_0_dq_t_12));
  IOBUF psram_rtl_0_dq_iobuf_13
       (.I(psram_rtl_0_dq_o_13),
        .IO(psram_rtl_0_dq_io[13]),
        .O(psram_rtl_0_dq_i_13),
        .T(psram_rtl_0_dq_t_13));
  IOBUF psram_rtl_0_dq_iobuf_14
       (.I(psram_rtl_0_dq_o_14),
        .IO(psram_rtl_0_dq_io[14]),
        .O(psram_rtl_0_dq_i_14),
        .T(psram_rtl_0_dq_t_14));
  IOBUF psram_rtl_0_dq_iobuf_15
       (.I(psram_rtl_0_dq_o_15),
        .IO(psram_rtl_0_dq_io[15]),
        .O(psram_rtl_0_dq_i_15),
        .T(psram_rtl_0_dq_t_15));
  IOBUF psram_rtl_0_dq_iobuf_2
       (.I(psram_rtl_0_dq_o_2),
        .IO(psram_rtl_0_dq_io[2]),
        .O(psram_rtl_0_dq_i_2),
        .T(psram_rtl_0_dq_t_2));
  IOBUF psram_rtl_0_dq_iobuf_3
       (.I(psram_rtl_0_dq_o_3),
        .IO(psram_rtl_0_dq_io[3]),
        .O(psram_rtl_0_dq_i_3),
        .T(psram_rtl_0_dq_t_3));
  IOBUF psram_rtl_0_dq_iobuf_4
       (.I(psram_rtl_0_dq_o_4),
        .IO(psram_rtl_0_dq_io[4]),
        .O(psram_rtl_0_dq_i_4),
        .T(psram_rtl_0_dq_t_4));
  IOBUF psram_rtl_0_dq_iobuf_5
       (.I(psram_rtl_0_dq_o_5),
        .IO(psram_rtl_0_dq_io[5]),
        .O(psram_rtl_0_dq_i_5),
        .T(psram_rtl_0_dq_t_5));
  IOBUF psram_rtl_0_dq_iobuf_6
       (.I(psram_rtl_0_dq_o_6),
        .IO(psram_rtl_0_dq_io[6]),
        .O(psram_rtl_0_dq_i_6),
        .T(psram_rtl_0_dq_t_6));
  IOBUF psram_rtl_0_dq_iobuf_7
       (.I(psram_rtl_0_dq_o_7),
        .IO(psram_rtl_0_dq_io[7]),
        .O(psram_rtl_0_dq_i_7),
        .T(psram_rtl_0_dq_t_7));
  IOBUF psram_rtl_0_dq_iobuf_8
       (.I(psram_rtl_0_dq_o_8),
        .IO(psram_rtl_0_dq_io[8]),
        .O(psram_rtl_0_dq_i_8),
        .T(psram_rtl_0_dq_t_8));
  IOBUF psram_rtl_0_dq_iobuf_9
       (.I(psram_rtl_0_dq_o_9),
        .IO(psram_rtl_0_dq_io[9]),
        .O(psram_rtl_0_dq_i_9),
        .T(psram_rtl_0_dq_t_9));
endmodule
