############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_array_partition -type cyclic -factor 4 -dim 1 "calc" mem
set_directive_unroll -skip_exit_check -factor 4 "calc/x_for"
set_directive_resource -core RAM_1P_BRAM -latency 1 "calc" mem
set_directive_interface -mode ap_memory -latency 1 "calc" mem
set_directive_inline -recursive "mandel_calc"
