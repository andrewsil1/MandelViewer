connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys4 210274552055A" && level==0} -index 0
fpga -file C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.sdk/Fast_IP_Clock_wrapper_hw_platform_0/Fast_IP_Clock_wrapper.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4 210274552055A"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4 210274552055A"} -index 0
dow C:/Users/andrewsi/Documents/GitHub/MandelViewer/MandelRTL/project_1/project_1.sdk/MandelFW/Debug/MandelFW.elf
bpadd -addr &main
