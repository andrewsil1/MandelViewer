
set PATH=
call D:/Xilinx/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_calc_top glbl -prj calc.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "D:/Xilinx/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s calc -debug wave
call D:/Xilinx/Vivado/2019.1/bin/xsim --noieeewarnings calc -tclbatch calc.tcl

