
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group [add_wave_group X0__Y0__X1__width__maxWidth__unroll__maxIter__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_calc_top/AESL_inst_calc/interrupt -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_BRESP -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_BREADY -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_BVALID -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_RRESP -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_RDATA -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_RREADY -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_RVALID -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_ARREADY -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_ARVALID -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_ARADDR -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_WSTRB -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_WDATA -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_WREADY -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_WVALID -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_AWREADY -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_AWVALID -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/s_axi_in_parms_AWADDR -into $X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set buf_group [add_wave_group buf(axi_master) -into $coutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $buf_group]
set wdata_group [add_wave_group "Write Channel" -into $buf_group]
set ctrl_group [add_wave_group "Handshakes" -into $buf_group]
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_BUSER -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_BID -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_BRESP -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_RRESP -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_RUSER -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_RID -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_RDATA -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARUSER -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARREGION -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARQOS -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARPROT -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARBURST -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARLEN -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARID -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARADDR -into $rdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_WUSER -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_WID -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_WSTRB -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_WDATA -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWUSER -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWREGION -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWQOS -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWPROT -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWBURST -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWLEN -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWID -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWADDR -into $wdata_group -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/AESL_inst_calc/m_axi_buf_r_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set setup_group [add_wave_group setup(wire) -into $cinputgroup]
add_wave /apatb_calc_top/AESL_inst_calc/setup -into $setup_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_calc_top/AESL_inst_calc/ap_done -into $blocksiggroup
add_wave /apatb_calc_top/AESL_inst_calc/ap_idle -into $blocksiggroup
add_wave /apatb_calc_top/AESL_inst_calc/ap_ready -into $blocksiggroup
add_wave /apatb_calc_top/AESL_inst_calc/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_calc_top/AESL_inst_calc/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_calc_top/AESL_inst_calc/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_calc_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_calc_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_calc_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_calc_top/LENGTH_setup -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_X0_V -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_Y0_V -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_X1_V -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_width_V -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_maxWidth_V -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_unroll -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_maxIter -into $tb_portdepth_group -radix hex
add_wave /apatb_calc_top/LENGTH_buf_r -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group [add_wave_group X0__Y0__X1__width__maxWidth__unroll__maxIter__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_calc_top/in_parms_INTERRUPT -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_BRESP -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/in_parms_BREADY -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_BVALID -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_RRESP -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/in_parms_RDATA -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/in_parms_RREADY -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_RVALID -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_ARREADY -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_ARVALID -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_ARADDR -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/in_parms_WSTRB -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/in_parms_WDATA -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
add_wave /apatb_calc_top/in_parms_WREADY -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_WVALID -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_AWREADY -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_AWVALID -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/in_parms_AWADDR -into $tb_X0__Y0__X1__width__maxWidth__unroll__maxIter__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_buf_group [add_wave_group buf(axi_master) -into $tbcoutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_buf_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_buf_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_buf_group]
add_wave /apatb_calc_top/buf_r_BUSER -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_BID -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_BRESP -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_RRESP -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_RUSER -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_RID -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_RDATA -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_ARUSER -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARREGION -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARQOS -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARPROT -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARBURST -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARLEN -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARID -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARADDR -into $rdata_group -radix hex
add_wave /apatb_calc_top/buf_r_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_WUSER -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_WID -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_WSTRB -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_WDATA -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_AWUSER -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWREGION -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWQOS -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWPROT -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWBURST -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWLEN -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWID -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWADDR -into $wdata_group -radix hex
add_wave /apatb_calc_top/buf_r_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calc_top/buf_r_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_setup_group [add_wave_group setup(wire) -into $tbcinputgroup]
add_wave /apatb_calc_top/setup -into $tb_setup_group -radix hex
save_wave_config calc.wcfg
run all
quit

