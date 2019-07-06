############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll -skip_exit_check -factor 8 "calc/x_for"
set_directive_interface -mode m_axi -depth 8112 -offset off "calc" buf
set_directive_interface -mode s_axilite -bundle in_parms "calc" X0
set_directive_interface -mode s_axilite -bundle in_parms "calc" Y0
set_directive_interface -mode s_axilite -bundle in_parms "calc" X1
set_directive_interface -mode s_axilite -bundle in_parms "calc" width
set_directive_interface -mode s_axilite -bundle in_parms "calc" maxIter
set_directive_loop_tripcount -min 0 -max 2000 -avg 5 "mandel_calc/mandel_calc_loop"
set_directive_loop_tripcount -min 768 -max 1440 -avg 768 "calc/y_for"
set_directive_loop_tripcount -min 1024 -max 1920 -avg 1024 "calc/x_for"
set_directive_interface -mode s_axilite -register -bundle in_parms "calc" maxWidth
set_directive_interface -mode s_axilite -register -bundle in_parms "calc" unroll
set_directive_interface -mode s_axilite -bundle in_parms "calc" setup
set_directive_interface -mode s_axilite -bundle in_parms "calc"
set_directive_interface -mode m_axi -depth 8112 -offset direct "calc" LED
set_directive_interface -mode m_axi -depth 8112 -offset direct "calc" LEDControl
