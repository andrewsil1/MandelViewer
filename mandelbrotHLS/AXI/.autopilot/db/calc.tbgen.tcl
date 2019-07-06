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
	{ gmem int 32 regular {axi_master 1}  }
	{ setup int 1 regular {axi_slave 0}  }
	{ X0_V int 40 regular {axi_slave 0}  }
	{ Y0_V int 40 regular {axi_slave 0}  }
	{ X1_V int 40 regular {axi_slave 0}  }
	{ width_V int 12 regular {axi_slave 0}  }
	{ maxWidth_V int 12 regular {axi_slave 1}  }
	{ unroll int 16 regular {axi_slave 1}  }
	{ maxIter int 16 regular {axi_slave 0}  }
	{ buf_r int 16 regular {axi_master 1}  }
	{ LEDControl int 32 regular  }
	{ LED int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "LEDControl","cData": "long unsigned int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "LEDControl"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 8111,"step" : 1}]},{"cName": "LED","cData": "long unsigned int","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "LED"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 8111,"step" : 1}]}]}]} , 
 	{ "Name" : "setup", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "setup","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "X0_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "X0.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":35}} , 
 	{ "Name" : "Y0_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "Y0.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":36}, "offset_end" : {"in":47}} , 
 	{ "Name" : "X1_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 40, "direction" : "READONLY", "bitSlice":[{"low":0,"up":39,"cElement": [{"cName": "X1.V","cData": "int40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":59}} , 
 	{ "Name" : "width_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 12, "direction" : "READONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "width.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "maxWidth_V", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_vld","bitwidth" : 12, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "maxWidth.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":68}, "offset_end" : {"out":75}} , 
 	{ "Name" : "unroll", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_vld","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "unroll","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":76}, "offset_end" : {"out":83}} , 
 	{ "Name" : "maxIter", "interface" : "axi_slave", "bundle":"in_parms","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "maxIter","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":84}, "offset_end" : {"in":91}} , 
 	{ "Name" : "buf_r", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "buf","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 8111,"step" : 1}]}]}]} , 
 	{ "Name" : "LEDControl", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "LED", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 112
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_buf_r_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_buf_r_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_buf_r_AWADDR sc_out sc_lv 32 signal 9 } 
	{ m_axi_buf_r_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_buf_r_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_buf_r_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_buf_r_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_buf_r_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_buf_r_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_buf_r_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_buf_r_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_buf_r_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_buf_r_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_buf_r_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_buf_r_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_buf_r_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_buf_r_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_buf_r_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_buf_r_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_buf_r_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_buf_r_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_buf_r_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_buf_r_ARADDR sc_out sc_lv 32 signal 9 } 
	{ m_axi_buf_r_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_buf_r_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_buf_r_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_buf_r_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_buf_r_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_buf_r_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_buf_r_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_buf_r_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_buf_r_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_buf_r_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_buf_r_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_buf_r_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_buf_r_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_buf_r_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_buf_r_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_buf_r_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_buf_r_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_buf_r_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_buf_r_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_buf_r_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_buf_r_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_buf_r_BUSER sc_in sc_lv 1 signal 9 } 
	{ LEDControl sc_in sc_lv 32 signal 10 } 
	{ LED sc_in sc_lv 32 signal 11 } 
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
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
 	{ "name": "m_axi_buf_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BUSER" }} , 
 	{ "name": "LEDControl", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LEDControl", "role": "default" }} , 
 	{ "name": "LED", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "LED", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "10", "16", "22", "28", "34", "40", "46", "52", "53", "54", "55", "56", "57", "58", "59", "60"],
		"CDFG" : "calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "47", "EstimateLatencyMax" : "14538021173",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_390"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_398"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_406"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_414"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_422"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_430"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_438"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mandel_calc_fu_446"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]},
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
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "LEDControl", "Type" : "None", "Direction" : "I"},
			{"Name" : "LED", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_in_parms_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_buf_r_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_390", "Parent" : "0", "Child" : ["5", "8", "9"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_390.grp_pretest_fu_187", "Parent" : "4", "Child" : ["6", "7"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_390.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_390.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_390.calc_mul_40s_41s_dEe_U7", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_390.calc_mul_40s_40s_cud_U8", "Parent" : "4"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_398", "Parent" : "0", "Child" : ["11", "14", "15"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_398.grp_pretest_fu_187", "Parent" : "10", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_398.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_398.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_398.calc_mul_40s_41s_dEe_U7", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_398.calc_mul_40s_40s_cud_U8", "Parent" : "10"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_406", "Parent" : "0", "Child" : ["17", "20", "21"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_406.grp_pretest_fu_187", "Parent" : "16", "Child" : ["18", "19"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_406.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_406.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_406.calc_mul_40s_41s_dEe_U7", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_406.calc_mul_40s_40s_cud_U8", "Parent" : "16"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_414", "Parent" : "0", "Child" : ["23", "26", "27"],
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
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_414.grp_pretest_fu_187", "Parent" : "22", "Child" : ["24", "25"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_414.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_414.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_414.calc_mul_40s_41s_dEe_U7", "Parent" : "22"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_414.calc_mul_40s_40s_cud_U8", "Parent" : "22"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_422", "Parent" : "0", "Child" : ["29", "32", "33"],
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
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_422.grp_pretest_fu_187", "Parent" : "28", "Child" : ["30", "31"],
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_422.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_422.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_422.calc_mul_40s_41s_dEe_U7", "Parent" : "28"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_422.calc_mul_40s_40s_cud_U8", "Parent" : "28"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_430", "Parent" : "0", "Child" : ["35", "38", "39"],
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_430.grp_pretest_fu_187", "Parent" : "34", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_430.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_430.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_430.calc_mul_40s_41s_dEe_U7", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_430.calc_mul_40s_40s_cud_U8", "Parent" : "34"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_438", "Parent" : "0", "Child" : ["41", "44", "45"],
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
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_438.grp_pretest_fu_187", "Parent" : "40", "Child" : ["42", "43"],
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
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_438.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_438.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_438.calc_mul_40s_41s_dEe_U7", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_438.calc_mul_40s_40s_cud_U8", "Parent" : "40"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_446", "Parent" : "0", "Child" : ["47", "50", "51"],
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
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_446.grp_pretest_fu_187", "Parent" : "46", "Child" : ["48", "49"],
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
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_446.grp_pretest_fu_187.calc_mul_41s_40s_bkb_U1", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_446.grp_pretest_fu_187.calc_mul_40s_40s_cud_U2", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_446.calc_mul_40s_41s_dEe_U7", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mandel_calc_fu_446.calc_mul_40s_40s_cud_U8", "Parent" : "46"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_sdiv_41ns_13eOg_U13", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U14", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U15", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U16", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U17", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U18", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U19", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U20", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calc_mul_12ns_40sfYi_U21", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calc {
		gmem {Type O LastRead 55 FirstWrite 47}
		setup {Type I LastRead 0 FirstWrite -1}
		X0_V {Type I LastRead 0 FirstWrite -1}
		Y0_V {Type I LastRead 0 FirstWrite -1}
		X1_V {Type I LastRead 0 FirstWrite -1}
		width_V {Type I LastRead 0 FirstWrite -1}
		maxWidth_V {Type O LastRead -1 FirstWrite 45}
		unroll {Type O LastRead -1 FirstWrite 45}
		maxIter {Type I LastRead 0 FirstWrite -1}
		buf_r {Type O LastRead 78 FirstWrite 70}
		LEDControl {Type I LastRead 46 FirstWrite -1}
		LED {Type I LastRead 46 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "47", "Max" : "14538021173"}
	, {"Name" : "Interval", "Min" : "48", "Max" : "1653119286"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 32 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 8 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 32 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 8 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	buf_r { m_axi {  { m_axi_buf_r_AWVALID VALID 1 1 }  { m_axi_buf_r_AWREADY READY 0 1 }  { m_axi_buf_r_AWADDR ADDR 1 32 }  { m_axi_buf_r_AWID ID 1 1 }  { m_axi_buf_r_AWLEN LEN 1 8 }  { m_axi_buf_r_AWSIZE SIZE 1 3 }  { m_axi_buf_r_AWBURST BURST 1 2 }  { m_axi_buf_r_AWLOCK LOCK 1 2 }  { m_axi_buf_r_AWCACHE CACHE 1 4 }  { m_axi_buf_r_AWPROT PROT 1 3 }  { m_axi_buf_r_AWQOS QOS 1 4 }  { m_axi_buf_r_AWREGION REGION 1 4 }  { m_axi_buf_r_AWUSER USER 1 1 }  { m_axi_buf_r_WVALID VALID 1 1 }  { m_axi_buf_r_WREADY READY 0 1 }  { m_axi_buf_r_WDATA DATA 1 32 }  { m_axi_buf_r_WSTRB STRB 1 4 }  { m_axi_buf_r_WLAST LAST 1 1 }  { m_axi_buf_r_WID ID 1 1 }  { m_axi_buf_r_WUSER USER 1 1 }  { m_axi_buf_r_ARVALID VALID 1 1 }  { m_axi_buf_r_ARREADY READY 0 1 }  { m_axi_buf_r_ARADDR ADDR 1 32 }  { m_axi_buf_r_ARID ID 1 1 }  { m_axi_buf_r_ARLEN LEN 1 8 }  { m_axi_buf_r_ARSIZE SIZE 1 3 }  { m_axi_buf_r_ARBURST BURST 1 2 }  { m_axi_buf_r_ARLOCK LOCK 1 2 }  { m_axi_buf_r_ARCACHE CACHE 1 4 }  { m_axi_buf_r_ARPROT PROT 1 3 }  { m_axi_buf_r_ARQOS QOS 1 4 }  { m_axi_buf_r_ARREGION REGION 1 4 }  { m_axi_buf_r_ARUSER USER 1 1 }  { m_axi_buf_r_RVALID VALID 0 1 }  { m_axi_buf_r_RREADY READY 1 1 }  { m_axi_buf_r_RDATA DATA 0 32 }  { m_axi_buf_r_RLAST LAST 0 1 }  { m_axi_buf_r_RID ID 0 1 }  { m_axi_buf_r_RUSER USER 0 1 }  { m_axi_buf_r_RRESP RESP 0 2 }  { m_axi_buf_r_BVALID VALID 0 1 }  { m_axi_buf_r_BREADY READY 1 1 }  { m_axi_buf_r_BRESP RESP 0 2 }  { m_axi_buf_r_BID ID 0 1 }  { m_axi_buf_r_BUSER USER 0 1 } } }
	LEDControl { ap_none {  { LEDControl in_data 0 32 } } }
	LED { ap_none {  { LED in_data 0 32 } } }
}

set busDeadlockParameterList { 
	{ gmem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ buf_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
	{ buf_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
	{ buf_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
