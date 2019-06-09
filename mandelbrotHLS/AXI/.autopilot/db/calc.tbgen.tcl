set moduleName calc
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {calc}
set C_modelType { void 0 }
set C_modelArgList {
	{ setup uint 1 regular {axi_slave 0}  }
	{ X0_V int 40 regular {axi_slave 0}  }
	{ Y0_V int 40 regular {axi_slave 0}  }
	{ X1_V int 40 regular {axi_slave 0}  }
	{ width_V int 12 regular {axi_slave 0}  }
	{ maxWidth_V int 12 regular {axi_slave 1}  }
	{ unroll int 16 regular {axi_slave 1}  }
	{ maxIter uint 16 regular {axi_slave 0}  }
	{ buf_r int 16 regular {axi_master 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "setup", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "setup","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "X0_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "X0.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":35}} , 
 	{ "Name" : "Y0_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "Y0.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":36}, "offset_end" : {"in":47}} , 
 	{ "Name" : "X1_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "X1.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":59}} , 
 	{ "Name" : "width_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 12, "direction" : "READONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "width.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "maxWidth_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_vld","bitwidth" : 12, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "maxWidth.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":68}, "offset_end" : {"out":75}} , 
 	{ "Name" : "unroll", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_vld","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "unroll","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":76}, "offset_end" : {"out":83}} , 
 	{ "Name" : "maxIter", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "maxIter","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":84}, "offset_end" : {"in":91}} , 
 	{ "Name" : "buf_r", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "buf","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 8111,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_buf_r_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_buf_r_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_buf_r_AWADDR sc_out sc_lv 32 signal 8 } 
	{ m_axi_buf_r_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_buf_r_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_buf_r_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_buf_r_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_buf_r_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_buf_r_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_buf_r_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_buf_r_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_buf_r_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_buf_r_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_buf_r_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_buf_r_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_buf_r_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_buf_r_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_buf_r_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_buf_r_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_buf_r_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_buf_r_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_buf_r_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_buf_r_ARADDR sc_out sc_lv 32 signal 8 } 
	{ m_axi_buf_r_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_buf_r_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_buf_r_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_buf_r_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_buf_r_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_buf_r_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_buf_r_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_buf_r_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_buf_r_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_buf_r_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_buf_r_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_buf_r_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_buf_r_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_buf_r_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_buf_r_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_buf_r_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_buf_r_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_buf_r_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_buf_r_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_buf_r_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_buf_r_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_buf_r_BUSER sc_in sc_lv 1 signal 8 } 
	{ s_axi_in_parms_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_in_parms_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_in_parms_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_in_parms_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_in_parms_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_in_parms_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_in_parms_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_in_parms_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_in_parms_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_in_parms_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_in_parms_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_in_parms_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_in_parms_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_in_parms_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_in_parms_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_in_parms_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_in_parms_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_in_parms_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_parms", "role": "AWADDR" },"address":[{"name":"calc","role":"start","value":"0","valid_bit":"0"},{"name":"calc","role":"continue","value":"0","valid_bit":"4"},{"name":"calc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"setup","role":"data","value":"16"},{"name":"X0_V","role":"data","value":"24"},{"name":"Y0_V","role":"data","value":"36"},{"name":"X1_V","role":"data","value":"48"},{"name":"width_V","role":"data","value":"60"},{"name":"maxIter","role":"data","value":"84"}] },
	{ "name": "s_axi_in_parms_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "AWVALID" } },
	{ "name": "s_axi_in_parms_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "AWREADY" } },
	{ "name": "s_axi_in_parms_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "WVALID" } },
	{ "name": "s_axi_in_parms_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "WREADY" } },
	{ "name": "s_axi_in_parms_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_parms", "role": "WDATA" } },
	{ "name": "s_axi_in_parms_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_parms", "role": "WSTRB" } },
	{ "name": "s_axi_in_parms_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "in_parms", "role": "ARADDR" },"address":[{"name":"calc","role":"start","value":"0","valid_bit":"0"},{"name":"calc","role":"done","value":"0","valid_bit":"1"},{"name":"calc","role":"idle","value":"0","valid_bit":"2"},{"name":"calc","role":"ready","value":"0","valid_bit":"3"},{"name":"calc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"maxWidth_V","role":"data","value":"68"}, {"name":"maxWidth_V","role":"valid","value":"72","valid_bit":"0"},{"name":"unroll","role":"data","value":"76"}, {"name":"unroll","role":"valid","value":"80","valid_bit":"0"}] },
	{ "name": "s_axi_in_parms_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "ARVALID" } },
	{ "name": "s_axi_in_parms_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "ARREADY" } },
	{ "name": "s_axi_in_parms_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "RVALID" } },
	{ "name": "s_axi_in_parms_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "RREADY" } },
	{ "name": "s_axi_in_parms_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_parms", "role": "RDATA" } },
	{ "name": "s_axi_in_parms_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_parms", "role": "RRESP" } },
	{ "name": "s_axi_in_parms_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "BVALID" } },
	{ "name": "s_axi_in_parms_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "BREADY" } },
	{ "name": "s_axi_in_parms_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_parms", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_parms", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_buf_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_buf_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_buf_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_buf_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWID" }} , 
 	{ "name": "m_axi_buf_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_buf_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_buf_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_buf_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_buf_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_buf_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_buf_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_buf_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_buf_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_buf_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_buf_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_buf_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_buf_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_buf_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_buf_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WID" }} , 
 	{ "name": "m_axi_buf_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_buf_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_buf_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_buf_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_buf_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARID" }} , 
 	{ "name": "m_axi_buf_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_buf_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_buf_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_buf_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_buf_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_buf_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_buf_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_buf_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_buf_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_buf_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_buf_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_buf_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_buf_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_buf_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RID" }} , 
 	{ "name": "m_axi_buf_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_buf_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_buf_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_buf_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_buf_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_buf_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BID" }} , 
 	{ "name": "m_axi_buf_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9", "15", "21", "27", "33", "39", "45", "51", "52", "53", "54", "55", "56", "57", "58", "59"],
		"CDFG" : "calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "14538012527",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_320"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_328"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_336"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_344"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_352"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_360"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_368"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_376"}],
		"Port" : [
			{"Name" : "setup", "Type" : "None", "Direction" : "I"},
			{"Name" : "X0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y0_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "X1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxWidth_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "unroll", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_in_parms_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_buf_r_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_320", "Parent" : "0", "Child" : ["4", "7", "8"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_320.grp_pretest_fu_187", "Parent" : "3", "Child" : ["5", "6"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_320.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_320.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_320.calc_mul_40s_41s_dEe_U7", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_320.calc_mul_40s_40s_cud_U8", "Parent" : "3"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_328", "Parent" : "0", "Child" : ["10", "13", "14"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_328.grp_pretest_fu_187", "Parent" : "9", "Child" : ["11", "12"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_328.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_328.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_328.calc_mul_40s_41s_dEe_U7", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_328.calc_mul_40s_40s_cud_U8", "Parent" : "9"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_336", "Parent" : "0", "Child" : ["16", "19", "20"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_336.grp_pretest_fu_187", "Parent" : "15", "Child" : ["17", "18"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_336.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "16"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_336.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_336.calc_mul_40s_41s_dEe_U7", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_336.calc_mul_40s_40s_cud_U8", "Parent" : "15"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_344", "Parent" : "0", "Child" : ["22", "25", "26"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_344.grp_pretest_fu_187", "Parent" : "21", "Child" : ["23", "24"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_344.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_344.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_344.calc_mul_40s_41s_dEe_U7", "Parent" : "21"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_344.calc_mul_40s_40s_cud_U8", "Parent" : "21"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_352", "Parent" : "0", "Child" : ["28", "31", "32"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_352.grp_pretest_fu_187", "Parent" : "27", "Child" : ["29", "30"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_352.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_352.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_352.calc_mul_40s_41s_dEe_U7", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_352.calc_mul_40s_40s_cud_U8", "Parent" : "27"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_360", "Parent" : "0", "Child" : ["34", "37", "38"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_360.grp_pretest_fu_187", "Parent" : "33", "Child" : ["35", "36"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_360.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_360.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_360.calc_mul_40s_41s_dEe_U7", "Parent" : "33"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_360.calc_mul_40s_40s_cud_U8", "Parent" : "33"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_368", "Parent" : "0", "Child" : ["40", "43", "44"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_368.grp_pretest_fu_187", "Parent" : "39", "Child" : ["41", "42"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_368.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_368.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_368.calc_mul_40s_41s_dEe_U7", "Parent" : "39"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_368.calc_mul_40s_40s_cud_U8", "Parent" : "39"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_376", "Parent" : "0", "Child" : ["46", "49", "50"],
		"CDFG" : "mandel_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "42043",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pretest_fu_187"}],
		"Port" : [
			{"Name" : "x_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "maxIter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_376.grp_pretest_fu_187", "Parent" : "45", "Child" : ["47", "48"],
		"CDFG" : "pretest",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_376.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "46"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_376.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_376.calc_mul_40s_41s_dEe_U7", "Parent" : "45"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_376.calc_mul_40s_40s_cud_U8", "Parent" : "45"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_sdiv_41ns_13eOg_U13", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U14", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U15", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U16", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U17", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U18", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U19", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U20", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calc {
		setup {Type I LastRead 0 FirstWrite -1}
		X0_V {Type I LastRead 0 FirstWrite -1}
		Y0_V {Type I LastRead 0 FirstWrite -1}
		X1_V {Type I LastRead 0 FirstWrite -1}
		width_V {Type I LastRead 0 FirstWrite -1}
		maxWidth_V {Type O LastRead -1 FirstWrite 45}
		unroll {Type O LastRead -1 FirstWrite 45}
		maxIter {Type I LastRead 0 FirstWrite -1}
		buf_r {Type O LastRead 66 FirstWrite 58}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}
	mandel_calc {
		x_in_V {Type I LastRead 0 FirstWrite -1}
		y_in_V {Type I LastRead 0 FirstWrite -1}
		maxIter {Type I LastRead 2 FirstWrite -1}}
	pretest {
		x_V {Type I LastRead 1 FirstWrite -1}
		y_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "47", "Max" : "14538012527"}
	, {"Name" : "Interval", "Min" : "48", "Max" : "1653110640"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buf_r { m_axi {  { m_axi_buf_r_AWVALID VALID 1 1 }  { m_axi_buf_r_AWREADY READY 0 1 }  { m_axi_buf_r_AWADDR ADDR 1 32 }  { m_axi_buf_r_AWID ID 1 1 }  { m_axi_buf_r_AWLEN LEN 1 8 }  { m_axi_buf_r_AWSIZE SIZE 1 3 }  { m_axi_buf_r_AWBURST BURST 1 2 }  { m_axi_buf_r_AWLOCK LOCK 1 2 }  { m_axi_buf_r_AWCACHE CACHE 1 4 }  { m_axi_buf_r_AWPROT PROT 1 3 }  { m_axi_buf_r_AWQOS QOS 1 4 }  { m_axi_buf_r_AWREGION REGION 1 4 }  { m_axi_buf_r_AWUSER USER 1 1 }  { m_axi_buf_r_WVALID VALID 1 1 }  { m_axi_buf_r_WREADY READY 0 1 }  { m_axi_buf_r_WDATA DATA 1 32 }  { m_axi_buf_r_WSTRB STRB 1 4 }  { m_axi_buf_r_WLAST LAST 1 1 }  { m_axi_buf_r_WID ID 1 1 }  { m_axi_buf_r_WUSER USER 1 1 }  { m_axi_buf_r_ARVALID VALID 1 1 }  { m_axi_buf_r_ARREADY READY 0 1 }  { m_axi_buf_r_ARADDR ADDR 1 32 }  { m_axi_buf_r_ARID ID 1 1 }  { m_axi_buf_r_ARLEN LEN 1 8 }  { m_axi_buf_r_ARSIZE SIZE 1 3 }  { m_axi_buf_r_ARBURST BURST 1 2 }  { m_axi_buf_r_ARLOCK LOCK 1 2 }  { m_axi_buf_r_ARCACHE CACHE 1 4 }  { m_axi_buf_r_ARPROT PROT 1 3 }  { m_axi_buf_r_ARQOS QOS 1 4 }  { m_axi_buf_r_ARREGION REGION 1 4 }  { m_axi_buf_r_ARUSER USER 1 1 }  { m_axi_buf_r_RVALID VALID 0 1 }  { m_axi_buf_r_RREADY READY 1 1 }  { m_axi_buf_r_RDATA DATA 0 32 }  { m_axi_buf_r_RLAST LAST 0 1 }  { m_axi_buf_r_RID ID 0 1 }  { m_axi_buf_r_RUSER USER 0 1 }  { m_axi_buf_r_RRESP RESP 0 2 }  { m_axi_buf_r_BVALID VALID 0 1 }  { m_axi_buf_r_BREADY READY 1 1 }  { m_axi_buf_r_BRESP RESP 0 2 }  { m_axi_buf_r_BID ID 0 1 }  { m_axi_buf_r_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ buf_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ buf_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ buf_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
