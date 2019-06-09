# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_in_parms {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
setup { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
X0_V { 
	dir I
	width 40
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
Y0_V { 
	dir I
	width 40
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
X1_V { 
	dir I
	width 40
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
width_V { 
	dir I
	width 12
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
maxWidth_V { 
	dir O
	width 12
	depth 1
	mode ap_vld
	offset 68
	offset_end 75
}
unroll { 
	dir O
	width 16
	depth 1
	mode ap_vld
	offset 76
	offset_end 83
}
maxIter { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 84
	offset_end 91
}
}
dict set axilite_register_dict in_parms $port_in_parms


