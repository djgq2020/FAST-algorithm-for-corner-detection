connect -url tcp:127.0.0.1:3121
source L:/REV2019/MZ7XAB/04_example_HLS_IMAGE/04_example_HLS_IMAGE/CH11_fastcorner/prj/vivado_project/fast_corners/miz_sys/miz_sys.sdk/miz_sys_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855114"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249855114" && level==0} -index 1
fpga -file L:/REV2019/MZ7XAB/04_example_HLS_IMAGE/04_example_HLS_IMAGE/CH11_fastcorner/prj/vivado_project/fast_corners/miz_sys/miz_sys.sdk/miz_sys_wrapper_hw_platform_0/miz_sys_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855114"} -index 0
loadhw -hw L:/REV2019/MZ7XAB/04_example_HLS_IMAGE/04_example_HLS_IMAGE/CH11_fastcorner/prj/vivado_project/fast_corners/miz_sys/miz_sys.sdk/miz_sys_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855114"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249855114"} -index 0
dow L:/REV2019/MZ7XAB/04_example_HLS_IMAGE/04_example_HLS_IMAGE/CH11_fastcorner/prj/vivado_project/fast_corners/miz_sys/miz_sys.sdk/fastcorner/Debug/fastcorner.elf
configparams force-mem-access 0
bpadd -addr &main
