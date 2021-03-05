// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AXIvideo2Mat (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        INPUT_STREAM_TDATA,
        INPUT_STREAM_TVALID,
        INPUT_STREAM_TREADY,
        INPUT_STREAM_TKEEP,
        INPUT_STREAM_TSTRB,
        INPUT_STREAM_TUSER,
        INPUT_STREAM_TLAST,
        INPUT_STREAM_TID,
        INPUT_STREAM_TDEST,
        rows,
        cols,
        p_src_data_stream_0_s_din,
        p_src_data_stream_0_s_full_n,
        p_src_data_stream_0_s_write,
        p_src_data_stream_1_s_din,
        p_src_data_stream_1_s_full_n,
        p_src_data_stream_1_s_write,
        p_src_data_stream_2_s_din,
        p_src_data_stream_2_s_full_n,
        p_src_data_stream_2_s_write
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_pp1_stage0 = 8'd16;
parameter    ap_ST_fsm_state7 = 8'd32;
parameter    ap_ST_fsm_pp2_stage0 = 8'd64;
parameter    ap_ST_fsm_state10 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] INPUT_STREAM_TDATA;
input   INPUT_STREAM_TVALID;
output   INPUT_STREAM_TREADY;
input  [3:0] INPUT_STREAM_TKEEP;
input  [3:0] INPUT_STREAM_TSTRB;
input  [0:0] INPUT_STREAM_TUSER;
input  [0:0] INPUT_STREAM_TLAST;
input  [0:0] INPUT_STREAM_TID;
input  [0:0] INPUT_STREAM_TDEST;
input  [31:0] rows;
input  [31:0] cols;
output  [7:0] p_src_data_stream_0_s_din;
input   p_src_data_stream_0_s_full_n;
output   p_src_data_stream_0_s_write;
output  [7:0] p_src_data_stream_1_s_din;
input   p_src_data_stream_1_s_full_n;
output   p_src_data_stream_1_s_write;
output  [7:0] p_src_data_stream_2_s_din;
input   p_src_data_stream_2_s_full_n;
output   p_src_data_stream_2_s_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_0_s_write;
reg p_src_data_stream_1_s_write;
reg p_src_data_stream_2_s_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] INPUT_STREAM_V_data_V_0_data_out;
wire    INPUT_STREAM_V_data_V_0_vld_in;
wire    INPUT_STREAM_V_data_V_0_vld_out;
wire    INPUT_STREAM_V_data_V_0_ack_in;
reg    INPUT_STREAM_V_data_V_0_ack_out;
reg   [31:0] INPUT_STREAM_V_data_V_0_payload_A;
reg   [31:0] INPUT_STREAM_V_data_V_0_payload_B;
reg    INPUT_STREAM_V_data_V_0_sel_rd;
reg    INPUT_STREAM_V_data_V_0_sel_wr;
wire    INPUT_STREAM_V_data_V_0_sel;
wire    INPUT_STREAM_V_data_V_0_load_A;
wire    INPUT_STREAM_V_data_V_0_load_B;
reg   [1:0] INPUT_STREAM_V_data_V_0_state;
wire    INPUT_STREAM_V_data_V_0_state_cmp_full;
reg   [0:0] INPUT_STREAM_V_user_V_0_data_out;
wire    INPUT_STREAM_V_user_V_0_vld_in;
wire    INPUT_STREAM_V_user_V_0_vld_out;
wire    INPUT_STREAM_V_user_V_0_ack_in;
reg    INPUT_STREAM_V_user_V_0_ack_out;
reg   [0:0] INPUT_STREAM_V_user_V_0_payload_A;
reg   [0:0] INPUT_STREAM_V_user_V_0_payload_B;
reg    INPUT_STREAM_V_user_V_0_sel_rd;
reg    INPUT_STREAM_V_user_V_0_sel_wr;
wire    INPUT_STREAM_V_user_V_0_sel;
wire    INPUT_STREAM_V_user_V_0_load_A;
wire    INPUT_STREAM_V_user_V_0_load_B;
reg   [1:0] INPUT_STREAM_V_user_V_0_state;
wire    INPUT_STREAM_V_user_V_0_state_cmp_full;
reg   [0:0] INPUT_STREAM_V_last_V_0_data_out;
wire    INPUT_STREAM_V_last_V_0_vld_in;
wire    INPUT_STREAM_V_last_V_0_vld_out;
wire    INPUT_STREAM_V_last_V_0_ack_in;
reg    INPUT_STREAM_V_last_V_0_ack_out;
reg   [0:0] INPUT_STREAM_V_last_V_0_payload_A;
reg   [0:0] INPUT_STREAM_V_last_V_0_payload_B;
reg    INPUT_STREAM_V_last_V_0_sel_rd;
reg    INPUT_STREAM_V_last_V_0_sel_wr;
wire    INPUT_STREAM_V_last_V_0_sel;
wire    INPUT_STREAM_V_last_V_0_load_A;
wire    INPUT_STREAM_V_last_V_0_load_B;
reg   [1:0] INPUT_STREAM_V_last_V_0_state;
wire    INPUT_STREAM_V_last_V_0_state_cmp_full;
wire    INPUT_STREAM_V_dest_V_0_vld_in;
reg    INPUT_STREAM_V_dest_V_0_ack_out;
reg   [1:0] INPUT_STREAM_V_dest_V_0_state;
reg    INPUT_STREAM_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_pp1_stage0;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp1_stage0;
reg   [0:0] exitcond_i_reg_482;
reg   [0:0] brmerge_i_reg_491;
wire    ap_CS_fsm_pp2_stage0;
reg    ap_enable_reg_pp2_iter1;
wire    ap_block_pp2_stage0;
reg   [0:0] eol_2_i_reg_318;
reg    p_src_data_stream_0_s_blk_n;
reg    p_src_data_stream_1_s_blk_n;
reg    p_src_data_stream_2_s_blk_n;
reg   [10:0] t_V_6_reg_248;
reg   [0:0] eol_i_reg_259;
reg   [0:0] eol_reg_271;
reg   [31:0] axi_data_V_1_i_reg_282;
reg   [0:0] axi_last_V_3_i_reg_329;
reg   [31:0] axi_data_V_3_i_reg_341;
wire   [10:0] rows_V_fu_363_p1;
reg    ap_block_state1;
wire   [10:0] cols_V_fu_367_p1;
reg   [31:0] tmp_data_V_reg_453;
reg   [0:0] tmp_last_V_reg_461;
wire   [0:0] exitcond2_i_fu_380_p2;
wire    ap_CS_fsm_state4;
wire   [10:0] i_V_fu_385_p2;
reg   [10:0] i_V_reg_477;
wire   [0:0] exitcond_i_fu_391_p2;
wire    ap_block_state5_pp1_stage0_iter0;
reg    ap_predicate_op66_read_state6;
reg    ap_block_state6_pp1_stage0_iter1;
reg    ap_block_pp1_stage0_11001;
wire   [10:0] j_V_fu_396_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [0:0] brmerge_i_fu_405_p2;
wire    ap_block_state8_pp2_stage0_iter0;
reg    ap_block_state9_pp2_stage0_iter1;
reg    ap_block_pp2_stage0_11001;
reg    ap_block_pp1_stage0_subdone;
reg    ap_enable_reg_pp2_iter0;
wire    ap_CS_fsm_state7;
reg    ap_block_pp2_stage0_subdone;
reg   [0:0] ap_phi_mux_eol_2_i_phi_fu_321_p4;
reg   [0:0] axi_last_V1_i_reg_217;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state3;
reg   [31:0] axi_data_V1_i_reg_227;
reg   [10:0] t_V_reg_237;
reg   [0:0] ap_phi_mux_eol_i_phi_fu_263_p4;
reg   [0:0] ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4;
reg   [31:0] ap_phi_mux_p_Val2_s_phi_fu_310_p4;
wire   [0:0] ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_293;
wire   [31:0] ap_phi_reg_pp1_iter1_p_Val2_s_reg_306;
reg    ap_block_pp1_stage0_01001;
reg   [0:0] sof_1_i_fu_162;
wire   [0:0] tmp_user_V_fu_371_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_idle_pp2;
wire    ap_enable_pp2;
reg    ap_condition_495;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 INPUT_STREAM_V_data_V_0_sel_rd = 1'b0;
#0 INPUT_STREAM_V_data_V_0_sel_wr = 1'b0;
#0 INPUT_STREAM_V_data_V_0_state = 2'd0;
#0 INPUT_STREAM_V_user_V_0_sel_rd = 1'b0;
#0 INPUT_STREAM_V_user_V_0_sel_wr = 1'b0;
#0 INPUT_STREAM_V_user_V_0_state = 2'd0;
#0 INPUT_STREAM_V_last_V_0_sel_rd = 1'b0;
#0 INPUT_STREAM_V_last_V_0_sel_wr = 1'b0;
#0 INPUT_STREAM_V_last_V_0_state = 2'd0;
#0 INPUT_STREAM_V_dest_V_0_state = 2'd0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_data_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_out))) begin
            INPUT_STREAM_V_data_V_0_sel_rd <= ~INPUT_STREAM_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_data_V_0_ack_in) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in))) begin
            INPUT_STREAM_V_data_V_0_sel_wr <= ~INPUT_STREAM_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_in)) | ((2'd3 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_data_V_0_ack_out)))) begin
            INPUT_STREAM_V_data_V_0_state <= 2'd2;
        end else if ((((2'd1 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_ack_out)) | ((2'd3 == INPUT_STREAM_V_data_V_0_state) & (1'b0 == INPUT_STREAM_V_data_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in)))) begin
            INPUT_STREAM_V_data_V_0_state <= 2'd1;
        end else if (((~((1'b0 == INPUT_STREAM_V_data_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_data_V_0_ack_out)) & ~((1'b0 == INPUT_STREAM_V_data_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in)) & (2'd3 == INPUT_STREAM_V_data_V_0_state)) | ((2'd1 == INPUT_STREAM_V_data_V_0_state) & (1'b1 == INPUT_STREAM_V_data_V_0_ack_out)) | ((2'd2 == INPUT_STREAM_V_data_V_0_state) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_in)))) begin
            INPUT_STREAM_V_data_V_0_state <= 2'd3;
        end else begin
            INPUT_STREAM_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_dest_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_vld_in)) | ((2'd3 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_dest_V_0_ack_out)))) begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd2;
        end else if ((((2'd1 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_ack_out)) | ((2'd3 == INPUT_STREAM_V_dest_V_0_state) & (1'b0 == INPUT_STREAM_V_dest_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_dest_V_0_vld_in)))) begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd1;
        end else if (((~((1'b0 == INPUT_STREAM_V_dest_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_dest_V_0_ack_out)) & ~((1'b0 == INPUT_STREAM_V_dest_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_dest_V_0_vld_in)) & (2'd3 == INPUT_STREAM_V_dest_V_0_state)) | ((2'd1 == INPUT_STREAM_V_dest_V_0_state) & (1'b1 == INPUT_STREAM_V_dest_V_0_ack_out)) | ((2'd2 == INPUT_STREAM_V_dest_V_0_state) & (1'b1 == INPUT_STREAM_V_dest_V_0_vld_in)))) begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd3;
        end else begin
            INPUT_STREAM_V_dest_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_last_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_last_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_out))) begin
            INPUT_STREAM_V_last_V_0_sel_rd <= ~INPUT_STREAM_V_last_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_last_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_last_V_0_ack_in) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in))) begin
            INPUT_STREAM_V_last_V_0_sel_wr <= ~INPUT_STREAM_V_last_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_last_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_vld_in)) | ((2'd3 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_last_V_0_ack_out)))) begin
            INPUT_STREAM_V_last_V_0_state <= 2'd2;
        end else if ((((2'd1 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_ack_out)) | ((2'd3 == INPUT_STREAM_V_last_V_0_state) & (1'b0 == INPUT_STREAM_V_last_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in)))) begin
            INPUT_STREAM_V_last_V_0_state <= 2'd1;
        end else if (((~((1'b0 == INPUT_STREAM_V_last_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_last_V_0_ack_out)) & ~((1'b0 == INPUT_STREAM_V_last_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in)) & (2'd3 == INPUT_STREAM_V_last_V_0_state)) | ((2'd1 == INPUT_STREAM_V_last_V_0_state) & (1'b1 == INPUT_STREAM_V_last_V_0_ack_out)) | ((2'd2 == INPUT_STREAM_V_last_V_0_state) & (1'b1 == INPUT_STREAM_V_last_V_0_vld_in)))) begin
            INPUT_STREAM_V_last_V_0_state <= 2'd3;
        end else begin
            INPUT_STREAM_V_last_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_user_V_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_user_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_user_V_0_vld_out))) begin
            INPUT_STREAM_V_user_V_0_sel_rd <= ~INPUT_STREAM_V_user_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_user_V_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == INPUT_STREAM_V_user_V_0_ack_in) & (1'b1 == INPUT_STREAM_V_user_V_0_vld_in))) begin
            INPUT_STREAM_V_user_V_0_sel_wr <= ~INPUT_STREAM_V_user_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        INPUT_STREAM_V_user_V_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == INPUT_STREAM_V_user_V_0_state) & (1'b0 == INPUT_STREAM_V_user_V_0_vld_in)) | ((2'd3 == INPUT_STREAM_V_user_V_0_state) & (1'b0 == INPUT_STREAM_V_user_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_user_V_0_ack_out)))) begin
            INPUT_STREAM_V_user_V_0_state <= 2'd2;
        end else if ((((2'd1 == INPUT_STREAM_V_user_V_0_state) & (1'b0 == INPUT_STREAM_V_user_V_0_ack_out)) | ((2'd3 == INPUT_STREAM_V_user_V_0_state) & (1'b0 == INPUT_STREAM_V_user_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_user_V_0_vld_in)))) begin
            INPUT_STREAM_V_user_V_0_state <= 2'd1;
        end else if (((~((1'b0 == INPUT_STREAM_V_user_V_0_vld_in) & (1'b1 == INPUT_STREAM_V_user_V_0_ack_out)) & ~((1'b0 == INPUT_STREAM_V_user_V_0_ack_out) & (1'b1 == INPUT_STREAM_V_user_V_0_vld_in)) & (2'd3 == INPUT_STREAM_V_user_V_0_state)) | ((2'd1 == INPUT_STREAM_V_user_V_0_state) & (1'b1 == INPUT_STREAM_V_user_V_0_ack_out)) | ((2'd2 == INPUT_STREAM_V_user_V_0_state) & (1'b1 == INPUT_STREAM_V_user_V_0_vld_in)))) begin
            INPUT_STREAM_V_user_V_0_state <= 2'd3;
        end else begin
            INPUT_STREAM_V_user_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((exitcond2_i_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_i_fu_391_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((exitcond2_i_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((exitcond2_i_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (ap_phi_mux_eol_2_i_phi_fu_321_p4 == 1'd1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp2_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_data_V1_i_reg_227 <= tmp_data_V_reg_453;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        axi_data_V1_i_reg_227 <= axi_data_V_3_i_reg_341;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_482 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        axi_data_V_1_i_reg_282 <= ap_phi_mux_p_Val2_s_phi_fu_310_p4;
    end else if (((exitcond2_i_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        axi_data_V_1_i_reg_282 <= axi_data_V1_i_reg_227;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_data_V_3_i_reg_341 <= axi_data_V_1_i_reg_282;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (eol_2_i_reg_318 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        axi_data_V_3_i_reg_341 <= INPUT_STREAM_V_data_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        axi_last_V1_i_reg_217 <= tmp_last_V_reg_461;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        axi_last_V1_i_reg_217 <= axi_last_V_3_i_reg_329;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        axi_last_V_3_i_reg_329 <= eol_reg_271;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (eol_2_i_reg_318 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        axi_last_V_3_i_reg_329 <= INPUT_STREAM_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        eol_2_i_reg_318 <= eol_i_reg_259;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (eol_2_i_reg_318 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        eol_2_i_reg_318 <= INPUT_STREAM_V_last_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_482 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        eol_i_reg_259 <= ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4;
    end else if (((exitcond2_i_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        eol_i_reg_259 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_482 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        eol_reg_271 <= ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4;
    end else if (((exitcond2_i_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        eol_reg_271 <= axi_last_V1_i_reg_217;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_fu_391_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        sof_1_i_fu_162 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sof_1_i_fu_162 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_fu_391_p2 == 1'd0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        t_V_6_reg_248 <= j_V_fu_396_p2;
    end else if (((exitcond2_i_fu_380_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        t_V_6_reg_248 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        t_V_reg_237 <= 11'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        t_V_reg_237 <= i_V_reg_477;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_data_V_0_load_A)) begin
        INPUT_STREAM_V_data_V_0_payload_A <= INPUT_STREAM_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_data_V_0_load_B)) begin
        INPUT_STREAM_V_data_V_0_payload_B <= INPUT_STREAM_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_last_V_0_load_A)) begin
        INPUT_STREAM_V_last_V_0_payload_A <= INPUT_STREAM_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_last_V_0_load_B)) begin
        INPUT_STREAM_V_last_V_0_payload_B <= INPUT_STREAM_TLAST;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_user_V_0_load_A)) begin
        INPUT_STREAM_V_user_V_0_payload_A <= INPUT_STREAM_TUSER;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == INPUT_STREAM_V_user_V_0_load_B)) begin
        INPUT_STREAM_V_user_V_0_payload_B <= INPUT_STREAM_TUSER;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_fu_391_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        brmerge_i_reg_491 <= brmerge_i_fu_405_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        exitcond_i_reg_482 <= exitcond_i_fu_391_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_V_reg_477 <= i_V_fu_385_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == INPUT_STREAM_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_data_V_reg_453 <= INPUT_STREAM_V_data_V_0_data_out;
        tmp_last_V_reg_461 <= INPUT_STREAM_V_last_V_0_data_out;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((eol_2_i_reg_318 == 1'd0) & (1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((brmerge_i_reg_491 == 1'd0) & (exitcond_i_reg_482 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        INPUT_STREAM_TDATA_blk_n = INPUT_STREAM_V_data_V_0_state[1'd0];
    end else begin
        INPUT_STREAM_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp2_stage0_11001) & (eol_2_i_reg_318 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_predicate_op66_read_state6 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b1 == INPUT_STREAM_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        INPUT_STREAM_V_data_V_0_ack_out = 1'b1;
    end else begin
        INPUT_STREAM_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == INPUT_STREAM_V_data_V_0_sel)) begin
        INPUT_STREAM_V_data_V_0_data_out = INPUT_STREAM_V_data_V_0_payload_B;
    end else begin
        INPUT_STREAM_V_data_V_0_data_out = INPUT_STREAM_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp2_stage0_11001) & (eol_2_i_reg_318 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_predicate_op66_read_state6 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b1 == INPUT_STREAM_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        INPUT_STREAM_V_dest_V_0_ack_out = 1'b1;
    end else begin
        INPUT_STREAM_V_dest_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp2_stage0_11001) & (eol_2_i_reg_318 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_predicate_op66_read_state6 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b1 == INPUT_STREAM_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        INPUT_STREAM_V_last_V_0_ack_out = 1'b1;
    end else begin
        INPUT_STREAM_V_last_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == INPUT_STREAM_V_last_V_0_sel)) begin
        INPUT_STREAM_V_last_V_0_data_out = INPUT_STREAM_V_last_V_0_payload_B;
    end else begin
        INPUT_STREAM_V_last_V_0_data_out = INPUT_STREAM_V_last_V_0_payload_A;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp2_stage0_11001) & (eol_2_i_reg_318 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_predicate_op66_read_state6 == 1'b1) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)) | ((1'b1 == INPUT_STREAM_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2)))) begin
        INPUT_STREAM_V_user_V_0_ack_out = 1'b1;
    end else begin
        INPUT_STREAM_V_user_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == INPUT_STREAM_V_user_V_0_sel)) begin
        INPUT_STREAM_V_user_V_0_data_out = INPUT_STREAM_V_user_V_0_payload_B;
    end else begin
        INPUT_STREAM_V_user_V_0_data_out = INPUT_STREAM_V_user_V_0_payload_A;
    end
end

always @ (*) begin
    if (((exitcond2_i_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter0 == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_495)) begin
        if ((brmerge_i_reg_491 == 1'd1)) begin
            ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4 = eol_reg_271;
        end else if ((brmerge_i_reg_491 == 1'd0)) begin
            ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4 = INPUT_STREAM_V_last_V_0_data_out;
        end else begin
            ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4 = ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_293;
        end
    end else begin
        ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4 = ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_293;
    end
end

always @ (*) begin
    if (((eol_2_i_reg_318 == 1'd0) & (1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        ap_phi_mux_eol_2_i_phi_fu_321_p4 = INPUT_STREAM_V_last_V_0_data_out;
    end else begin
        ap_phi_mux_eol_2_i_phi_fu_321_p4 = eol_2_i_reg_318;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_482 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_eol_i_phi_fu_263_p4 = ap_phi_mux_axi_last_V_2_i_phi_fu_298_p4;
    end else begin
        ap_phi_mux_eol_i_phi_fu_263_p4 = eol_i_reg_259;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_495)) begin
        if ((brmerge_i_reg_491 == 1'd1)) begin
            ap_phi_mux_p_Val2_s_phi_fu_310_p4 = axi_data_V_1_i_reg_282;
        end else if ((brmerge_i_reg_491 == 1'd0)) begin
            ap_phi_mux_p_Val2_s_phi_fu_310_p4 = INPUT_STREAM_V_data_V_0_data_out;
        end else begin
            ap_phi_mux_p_Val2_s_phi_fu_310_p4 = ap_phi_reg_pp1_iter1_p_Val2_s_reg_306;
        end
    end else begin
        ap_phi_mux_p_Val2_s_phi_fu_310_p4 = ap_phi_reg_pp1_iter1_p_Val2_s_reg_306;
    end
end

always @ (*) begin
    if (((exitcond2_i_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_482 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        p_src_data_stream_0_s_blk_n = p_src_data_stream_0_s_full_n;
    end else begin
        p_src_data_stream_0_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_482 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        p_src_data_stream_0_s_write = 1'b1;
    end else begin
        p_src_data_stream_0_s_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_482 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        p_src_data_stream_1_s_blk_n = p_src_data_stream_1_s_full_n;
    end else begin
        p_src_data_stream_1_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_482 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        p_src_data_stream_1_s_write = 1'b1;
    end else begin
        p_src_data_stream_1_s_write = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_i_reg_482 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        p_src_data_stream_2_s_blk_n = p_src_data_stream_2_s_full_n;
    end else begin
        p_src_data_stream_2_s_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (exitcond_i_reg_482 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        p_src_data_stream_2_s_write = 1'b1;
    end else begin
        p_src_data_stream_2_s_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_user_V_fu_371_p1 == 1'd0) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((tmp_user_V_fu_371_p1 == 1'd1) & (1'b1 == INPUT_STREAM_V_data_V_0_vld_out) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond2_i_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_pp2_stage0;
        end
        ap_ST_fsm_pp2_stage0 : begin
            if (~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else if (((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign INPUT_STREAM_TREADY = INPUT_STREAM_V_dest_V_0_state[1'd1];

assign INPUT_STREAM_V_data_V_0_ack_in = INPUT_STREAM_V_data_V_0_state[1'd1];

assign INPUT_STREAM_V_data_V_0_load_A = (~INPUT_STREAM_V_data_V_0_sel_wr & INPUT_STREAM_V_data_V_0_state_cmp_full);

assign INPUT_STREAM_V_data_V_0_load_B = (INPUT_STREAM_V_data_V_0_state_cmp_full & INPUT_STREAM_V_data_V_0_sel_wr);

assign INPUT_STREAM_V_data_V_0_sel = INPUT_STREAM_V_data_V_0_sel_rd;

assign INPUT_STREAM_V_data_V_0_state_cmp_full = ((INPUT_STREAM_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign INPUT_STREAM_V_data_V_0_vld_in = INPUT_STREAM_TVALID;

assign INPUT_STREAM_V_data_V_0_vld_out = INPUT_STREAM_V_data_V_0_state[1'd0];

assign INPUT_STREAM_V_dest_V_0_vld_in = INPUT_STREAM_TVALID;

assign INPUT_STREAM_V_last_V_0_ack_in = INPUT_STREAM_V_last_V_0_state[1'd1];

assign INPUT_STREAM_V_last_V_0_load_A = (~INPUT_STREAM_V_last_V_0_sel_wr & INPUT_STREAM_V_last_V_0_state_cmp_full);

assign INPUT_STREAM_V_last_V_0_load_B = (INPUT_STREAM_V_last_V_0_state_cmp_full & INPUT_STREAM_V_last_V_0_sel_wr);

assign INPUT_STREAM_V_last_V_0_sel = INPUT_STREAM_V_last_V_0_sel_rd;

assign INPUT_STREAM_V_last_V_0_state_cmp_full = ((INPUT_STREAM_V_last_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign INPUT_STREAM_V_last_V_0_vld_in = INPUT_STREAM_TVALID;

assign INPUT_STREAM_V_last_V_0_vld_out = INPUT_STREAM_V_last_V_0_state[1'd0];

assign INPUT_STREAM_V_user_V_0_ack_in = INPUT_STREAM_V_user_V_0_state[1'd1];

assign INPUT_STREAM_V_user_V_0_load_A = (~INPUT_STREAM_V_user_V_0_sel_wr & INPUT_STREAM_V_user_V_0_state_cmp_full);

assign INPUT_STREAM_V_user_V_0_load_B = (INPUT_STREAM_V_user_V_0_state_cmp_full & INPUT_STREAM_V_user_V_0_sel_wr);

assign INPUT_STREAM_V_user_V_0_sel = INPUT_STREAM_V_user_V_0_sel_rd;

assign INPUT_STREAM_V_user_V_0_state_cmp_full = ((INPUT_STREAM_V_user_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign INPUT_STREAM_V_user_V_0_vld_in = INPUT_STREAM_TVALID;

assign INPUT_STREAM_V_user_V_0_vld_out = INPUT_STREAM_V_user_V_0_state[1'd0];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_predicate_op66_read_state6 == 1'b1)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_2_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_1_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_0_s_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_predicate_op66_read_state6 == 1'b1)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_2_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_1_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_0_s_full_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((ap_enable_reg_pp1_iter1 == 1'b1) & (((1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_predicate_op66_read_state6 == 1'b1)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_2_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_1_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_0_s_full_n == 1'b0))));
end

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp2_stage0_11001 = ((eol_2_i_reg_318 == 1'd0) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_enable_reg_pp2_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp2_stage0_subdone = ((eol_2_i_reg_318 == 1'd0) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_enable_reg_pp2_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp1_stage0_iter1 = (((1'b0 == INPUT_STREAM_V_data_V_0_vld_out) & (ap_predicate_op66_read_state6 == 1'b1)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_2_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_1_s_full_n == 1'b0)) | ((exitcond_i_reg_482 == 1'd0) & (p_src_data_stream_0_s_full_n == 1'b0)));
end

assign ap_block_state8_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp2_stage0_iter1 = ((eol_2_i_reg_318 == 1'd0) & (1'b0 == INPUT_STREAM_V_data_V_0_vld_out));
end

always @ (*) begin
    ap_condition_495 = ((exitcond_i_reg_482 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0));
end

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign ap_phi_reg_pp1_iter1_axi_last_V_2_i_reg_293 = 'bx;

assign ap_phi_reg_pp1_iter1_p_Val2_s_reg_306 = 'bx;

always @ (*) begin
    ap_predicate_op66_read_state6 = ((brmerge_i_reg_491 == 1'd0) & (exitcond_i_reg_482 == 1'd0));
end

assign brmerge_i_fu_405_p2 = (sof_1_i_fu_162 | ap_phi_mux_eol_i_phi_fu_263_p4);

assign cols_V_fu_367_p1 = cols[10:0];

assign exitcond2_i_fu_380_p2 = ((t_V_reg_237 == rows_V_fu_363_p1) ? 1'b1 : 1'b0);

assign exitcond_i_fu_391_p2 = ((t_V_6_reg_248 == cols_V_fu_367_p1) ? 1'b1 : 1'b0);

assign i_V_fu_385_p2 = (t_V_reg_237 + 11'd1);

assign j_V_fu_396_p2 = (t_V_6_reg_248 + 11'd1);

assign p_src_data_stream_0_s_din = ap_phi_mux_p_Val2_s_phi_fu_310_p4[7:0];

assign p_src_data_stream_1_s_din = {{ap_phi_mux_p_Val2_s_phi_fu_310_p4[15:8]}};

assign p_src_data_stream_2_s_din = {{ap_phi_mux_p_Val2_s_phi_fu_310_p4[23:16]}};

assign rows_V_fu_363_p1 = rows[10:0];

assign tmp_user_V_fu_371_p1 = INPUT_STREAM_V_user_V_0_data_out;

endmodule //AXIvideo2Mat