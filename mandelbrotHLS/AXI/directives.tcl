############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_array_partition -type cyclic -factor 8 -dim 1 "calc" mem
set_directive_unroll -skip_exit_check -factor 8 "calc/x_for"
set_directive_interface -mode m_axi -depth 7500 -offset off "calc" buf
set_directive_interface -mode s_axilite -bundle in_parms "calc"
set_directive_interface -mode s_axilite -bundle in_parms "calc" X0
set_directive_interface -mode s_axilite -bundle in_parms "calc" Y0
set_directive_interface -mode s_axilite -bundle in_parms "calc" X1
set_directive_interface -mode s_axilite -bundle in_parms "calc" width
set_directive_interface -mode s_axilite -bundle in_parms "calc" maxIter
set_directive_loop_tripcount -min 0 -max 65535 -avg 2000 "mandel_calc/mandel_calc_loop"
