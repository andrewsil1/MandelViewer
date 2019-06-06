vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_16
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_21
vlib modelsim_lib/msim/microblaze_v11_0_1
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_16
vlib modelsim_lib/msim/blk_mem_gen_v8_4_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_intc_v4_1_13
vlib modelsim_lib/msim/xlconcat_v2_1_3
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uart16550_v2_0_21
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_19
vlib modelsim_lib/msim/fifo_generator_v13_2_4
vlib modelsim_lib/msim/axi_data_fifo_v2_1_18
vlib modelsim_lib/msim/axi_crossbar_v2_1_20
vlib modelsim_lib/msim/axi_clock_converter_v2_1_18
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_19

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_16 modelsim_lib/msim/mdm_v3_2_16
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 modelsim_lib/msim/axi_gpio_v2_0_21
vmap microblaze_v11_0_1 modelsim_lib/msim/microblaze_v11_0_1
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 modelsim_lib/msim/blk_mem_gen_v8_4_3
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_intc_v4_1_13 modelsim_lib/msim/axi_intc_v4_1_13
vmap xlconcat_v2_1_3 modelsim_lib/msim/xlconcat_v2_1_3
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uart16550_v2_0_21 modelsim_lib/msim/axi_uart16550_v2_0_21
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 modelsim_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 modelsim_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 modelsim_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 modelsim_lib/msim/axi_crossbar_v2_1_20
vmap axi_clock_converter_v2_1_18 modelsim_lib/msim/axi_clock_converter_v2_1_18
vmap axi_protocol_converter_v2_1_19 modelsim_lib/msim/axi_protocol_converter_v2_1_19

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_16 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_mdm_1_0/sim/Fast_IP_Clock_mdm_1_0.vhd" \
"../../../bd/Fast_IP_Clock/ipshared/5085/hdl/psram_ip_v1_0_S00_AXI.vhd" \
"../../../bd/Fast_IP_Clock/ipshared/5085/hdl/psram_ip_v1_0.vhd" \
"../../../bd/Fast_IP_Clock/ipshared/5085/hdl/AsyncPSRAM.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_psram_ip_0_0/sim/Fast_IP_Clock_psram_ip_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_gpio_0_0/sim/Fast_IP_Clock_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_clk_wiz_0_0/Fast_IP_Clock_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_clk_wiz_0_0/Fast_IP_Clock_clk_wiz_0_0.v" \

vcom -work microblaze_v11_0_1 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_microblaze_0_0/sim/Fast_IP_Clock_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_dlmb_v10_0/sim/Fast_IP_Clock_dlmb_v10_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_ilmb_v10_0/sim/Fast_IP_Clock_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_dlmb_bram_if_cntlr_0/sim/Fast_IP_Clock_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_ilmb_bram_if_cntlr_0/sim/Fast_IP_Clock_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_lmb_bram_0/sim/Fast_IP_Clock_lmb_bram_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_proc_sys_reset_0_0/sim/Fast_IP_Clock_proc_sys_reset_0_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_proc_sys_reset_1_0/sim/Fast_IP_Clock_proc_sys_reset_1_0.vhd" \

vcom -work axi_intc_v4_1_13 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c0fe/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_intc_0_0/sim/Fast_IP_Clock_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_3 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_xlconcat_0_0/sim/Fast_IP_Clock_xlconcat_0_0.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_buf_r_m_axi.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_in_parms_s_axi.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_mem_0.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_mul_12ns_40sfYi.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_mul_40s_40s_cud.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_mul_40s_41s_dEe.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_mul_41s_40s_bkb.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_mux_832_16_1_1.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc_sdiv_41ns_13eOg.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/mandel_calc.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/pretest.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/9032/hdl/verilog/calc.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_calc_0_0/sim/Fast_IP_Clock_calc_0_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uart16550_v2_0_21 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/a71f/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_uart16550_0_0/sim/Fast_IP_Clock_axi_uart16550_0_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_proc_sys_reset_2_0/sim/Fast_IP_Clock_proc_sys_reset_2_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_xbar_0/sim/Fast_IP_Clock_xbar_0.v" \
"../../../bd/Fast_IP_Clock/sim/Fast_IP_Clock.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_s00_data_fifo_0/sim/Fast_IP_Clock_s00_data_fifo_0.v" \

vlog -work axi_clock_converter_v2_1_18 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ac9d/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_2/sim/Fast_IP_Clock_auto_cc_2.v" \

vlog -work axi_protocol_converter_v2_1_19 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c923" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_5/sim/Fast_IP_Clock_auto_pc_5.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_s01_data_fifo_0/sim/Fast_IP_Clock_s01_data_fifo_0.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_3/sim/Fast_IP_Clock_auto_cc_3.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_s02_data_fifo_0/sim/Fast_IP_Clock_s02_data_fifo_0.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_4/sim/Fast_IP_Clock_auto_cc_4.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_0/sim/Fast_IP_Clock_auto_pc_0.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_1/sim/Fast_IP_Clock_auto_pc_1.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_2/sim/Fast_IP_Clock_auto_pc_2.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_0_1/sim/Fast_IP_Clock_auto_cc_0.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_3/sim/Fast_IP_Clock_auto_pc_3.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_1/sim/Fast_IP_Clock_auto_cc_1.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_4/sim/Fast_IP_Clock_auto_pc_4.v" \

vlog -work xil_defaultlib \
"glbl.v"

