############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mandelbrotHLS
set_top calc
add_files mandelbrotHLS/pretest.cpp
add_files mandelbrotHLS/mandel.cpp
add_files -tb mandelbrotHLS/mandel_maintb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "AXI"
set_part {xc7a100t-csg324-1} -tool vivado
create_clock -period 6 -name default
config_bind -effort high
config_rtl -encoding onehot -kernel_profile=0 -module_auto_prefix=0 -mult_keep_attribute=0 -reset control -reset_async=0 -reset_level high -verbose=0
config_export -description {Mandelbrot Calculator Core} -display_name calc -format ip_catalog -rtl verilog -vendor QuickSilver -version 1.01 -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
config_schedule -effort high -enable_dsp_full_reg=0 -relax_ii_for_timing -verbose
config_sdx -optimization_level none -target none
set_clock_uncertainty 12.5%
source "./mandelbrotHLS/AXI/directives.tcl"
csim_design -ldflags {-Wl,--stack,10485760} -O
csynth_design
cosim_design -O -ldflags {-Wl,--stack,10485760}
export_design -flow syn -rtl verilog -format ip_catalog -description "Mandelbrot Calculator Core" -vendor "QuickSilver" -version "1.01" -display_name "calc"
