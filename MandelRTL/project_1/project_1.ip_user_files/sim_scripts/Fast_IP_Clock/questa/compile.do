vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_15
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_20
vlib questa_lib/msim/microblaze_v11_0_0
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_intc_v4_1_12
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_crossbar_v2_1_19
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uart16550_v2_0_20
vlib questa_lib/msim/lib_bmg_v1_0_11
vlib questa_lib/msim/lib_fifo_v1_0_12
vlib questa_lib/msim/axi_ethernetlite_v3_0_16
vlib questa_lib/msim/mii_to_rmii_v2_0_20
vlib questa_lib/msim/axi_timer_v2_0_20
vlib questa_lib/msim/axi_clock_converter_v2_1_17
vlib questa_lib/msim/axi_protocol_converter_v2_1_18

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_15 questa_lib/msim/mdm_v3_2_15
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 questa_lib/msim/axi_gpio_v2_0_20
vmap microblaze_v11_0_0 questa_lib/msim/microblaze_v11_0_0
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 questa_lib/msim/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_intc_v4_1_12 questa_lib/msim/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 questa_lib/msim/axi_crossbar_v2_1_19
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uart16550_v2_0_20 questa_lib/msim/axi_uart16550_v2_0_20
vmap lib_bmg_v1_0_11 questa_lib/msim/lib_bmg_v1_0_11
vmap lib_fifo_v1_0_12 questa_lib/msim/lib_fifo_v1_0_12
vmap axi_ethernetlite_v3_0_16 questa_lib/msim/axi_ethernetlite_v3_0_16
vmap mii_to_rmii_v2_0_20 questa_lib/msim/mii_to_rmii_v2_0_20
vmap axi_timer_v2_0_20 questa_lib/msim/axi_timer_v2_0_20
vmap axi_clock_converter_v2_1_17 questa_lib/msim/axi_clock_converter_v2_1_17
vmap axi_protocol_converter_v2_1_18 questa_lib/msim/axi_protocol_converter_v2_1_18

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

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

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_gpio_0_0/sim/Fast_IP_Clock_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_clk_wiz_0_0/Fast_IP_Clock_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_clk_wiz_0_0/Fast_IP_Clock_clk_wiz_0_0.v" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_microblaze_0_0/sim/Fast_IP_Clock_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_dlmb_v10_0/sim/Fast_IP_Clock_dlmb_v10_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_ilmb_v10_0/sim/Fast_IP_Clock_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_dlmb_bram_if_cntlr_0/sim/Fast_IP_Clock_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_ilmb_bram_if_cntlr_0/sim/Fast_IP_Clock_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_lmb_bram_0/sim/Fast_IP_Clock_lmb_bram_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_proc_sys_reset_0_0/sim/Fast_IP_Clock_proc_sys_reset_0_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_proc_sys_reset_1_0/sim/Fast_IP_Clock_proc_sys_reset_1_0.vhd" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_intc_0_0/sim/Fast_IP_Clock_axi_intc_0_0.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_xlconcat_0_0/sim/Fast_IP_Clock_xlconcat_0_0.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_buf_r_m_axi.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_in_parms_s_axi.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_mem_0.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_mul_12ns_40sfYi.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_mul_40s_40s_bkb.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_mul_40s_41s_dEe.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_mul_41s_40s_cud.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_mux_432_16_1_1.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc_sdiv_41ns_13eOg.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/mandel_calc.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/pretest.v" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cdef/hdl/verilog/calc.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_calc_0_0/sim/Fast_IP_Clock_calc_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_xbar_1/sim/Fast_IP_Clock_xbar_1.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uart16550_v2_0_20 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/07cf/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_uart16550_0_0/sim/Fast_IP_Clock_axi_uart16550_0_0.vhd" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_proc_sys_reset_2_0/sim/Fast_IP_Clock_proc_sys_reset_2_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/sim/Fast_IP_Clock.v" \

vcom -work lib_bmg_v1_0_11 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_12 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_ethernetlite_v3_0_16 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/5576/hdl/axi_ethernetlite_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_ethernetlite_0_0/sim/Fast_IP_Clock_axi_ethernetlite_0_0.vhd" \

vcom -work mii_to_rmii_v2_0_20 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/90e9/hdl/mii_to_rmii_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_mii_to_rmii_0_0/sim/Fast_IP_Clock_mii_to_rmii_0_0.vhd" \

vcom -work axi_timer_v2_0_20 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/e9c1/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_axi_timer_0_0/sim/Fast_IP_Clock_axi_timer_0_0.vhd" \

vlog -work axi_clock_converter_v2_1_17 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_2/sim/Fast_IP_Clock_auto_cc_2.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/85a3" "+incdir+../../../../project_1.srcs/sources_1/bd/Fast_IP_Clock/ipshared/ec67/hdl" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_7/sim/Fast_IP_Clock_auto_pc_7.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_3/sim/Fast_IP_Clock_auto_cc_3.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_4/sim/Fast_IP_Clock_auto_cc_4.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_0/sim/Fast_IP_Clock_auto_pc_0.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_1/sim/Fast_IP_Clock_auto_pc_1.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_2/sim/Fast_IP_Clock_auto_pc_2.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_0/sim/Fast_IP_Clock_auto_cc_0.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_3/sim/Fast_IP_Clock_auto_pc_3.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_cc_1/sim/Fast_IP_Clock_auto_cc_1.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_4/sim/Fast_IP_Clock_auto_pc_4.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_5/sim/Fast_IP_Clock_auto_pc_5.v" \
"../../../bd/Fast_IP_Clock/ip/Fast_IP_Clock_auto_pc_6/sim/Fast_IP_Clock_auto_pc_6.v" \

vlog -work xil_defaultlib \
"glbl.v"

