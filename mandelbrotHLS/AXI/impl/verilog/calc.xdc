create_clock -name ap_clk -period 8.000 -waveform {0.000 4.000} [get_ports ap_clk]

#set_input_delay 0 -clock CLK  [all_inputs]
#set_output_delay 0 -clock CLK [all_outputs]

