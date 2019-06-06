# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_in_parms {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
X0_V { 
	dir I
	width 40
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
Y0_V { 
	dir I
	width 40
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
X1_V { 
	dir I
	width 40
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
width_V { 
	dir I
	width 12
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
maxIter { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
}
dict set axilite_register_dict in_parms $port_in_parms


