############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS
set_top hls_fast_corner
add_files HLS/Top.h
add_files HLS/Top.cpp
add_files -tb HLS/test_1080p.bmp -cflags "-Wno-unknown-pragmas"
add_files -tb HLS/Test.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
