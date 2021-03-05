-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_processing_system7_0_0/sim/miz_sys_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_12 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/lib_bmg_v1_0_11 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/556c/hdl/lib_bmg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_20 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_6 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vdma_v6_3_6 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/58e2/hdl/axi_vdma_v6_3_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_axi_vdma_0_0/sim/miz_sys_axi_vdma_0_0.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_rst_processing_system7_0_50M_0/sim/miz_sys_rst_processing_system7_0_50M_0.vhd" \
  "../../../bd/miz_sys/ip/miz_sys_axi_vdma_1_0/sim/miz_sys_axi_vdma_1_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/v_tc_v6_1_13 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/a92c/hdl/v_tc_v6_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_v_tc_0_0/sim/miz_sys_v_tc_0_0.vhd" \
-endlib
-makelib xcelium_lib/v_vid_in_axi4s_v4_0_9 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/v_axi4s_vid_out_v4_0_10 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_v_axi4s_vid_out_0_0/sim/miz_sys_v_axi4s_vid_out_0_0.v" \
  "../../../bd/miz_sys/ip/miz_sys_clk_wiz_0_0/miz_sys_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/miz_sys/ip/miz_sys_clk_wiz_0_0/miz_sys_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ipshared/2094/DVITransmitter.vhd" \
  "../../../bd/miz_sys/ipshared/2094/SerializerN_1.vhd" \
  "../../../bd/miz_sys/ipshared/2094/TMDSEncoder.vhd" \
  "../../../bd/miz_sys/ipshared/2094/hdmi_tx.vhd" \
  "../../../bd/miz_sys/ip/miz_sys_HDMI_FPGA_ML_0_0/sim/miz_sys_HDMI_FPGA_ML_0_0.vhd" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_util_vector_logic_0_0/sim/miz_sys_util_vector_logic_0_0.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/AXIvideo2Mat.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/CvtColor.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/Dilate.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/Duplicate.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/FAST_t_opr.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/FAST_t_opr_core_bkbM.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/FAST_t_opr_k_buf_eOg.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/fifo_w8_d1_A.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/fifo_w8_d20000_A.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner_ap_rst_n_if.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner_CONTROL_BUS_if.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner_mbkb.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner_mcud.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner_mdEe.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner_mpcA.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/hls_fast_corner_top.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/Mat2AXIvideo.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/max_int_s.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/min_int_s.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/PaintMask.v" \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c421/hdl/verilog/reg_int_s.v" \
  "../../../bd/miz_sys/ip/miz_sys_hls_fast_corner_0_1/sim/miz_sys_hls_fast_corner_0_1.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_xbar_1/sim/miz_sys_xbar_1.v" \
  "../../../bd/miz_sys/ip/miz_sys_xbar_0/sim/miz_sys_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../miz_sys.srcs/sources_1/bd/miz_sys/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/miz_sys/ip/miz_sys_auto_pc_0/sim/miz_sys_auto_pc_0.v" \
  "../../../bd/miz_sys/ip/miz_sys_auto_pc_1/sim/miz_sys_auto_pc_1.v" \
  "../../../bd/miz_sys/sim/miz_sys.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

