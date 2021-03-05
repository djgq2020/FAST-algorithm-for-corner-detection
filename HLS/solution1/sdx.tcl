# ==============================================================
# File generated on Fri Mar 05 18:21:40 +0800 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test_1080p.bmp -cflags { -Wno-unknown-pragmas}
add_files -tb ../Test.cpp -cflags { -Wno-unknown-pragmas}
add_files HLS/Top.h
add_files HLS/Top.cpp
set_part xc7z010clg400-1
create_clock -name default -period 10
config_export -format=ip_catalog
config_export -rtl=verilog
