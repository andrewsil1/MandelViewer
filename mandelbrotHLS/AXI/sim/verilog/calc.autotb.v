// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      calc
`define AUTOTB_DUT_INST AESL_inst_calc
`define AUTOTB_TOP      apatb_calc_top
`define AUTOTB_LAT_RESULT_FILE "calc.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "calc.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_calc_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 3.00

`define AESL_DEPTH_setup 1
`define AESL_DEPTH_X0_V 1
`define AESL_DEPTH_Y0_V 1
`define AESL_DEPTH_X1_V 1
`define AESL_DEPTH_width_V 1
`define AESL_DEPTH_maxWidth_V 1
`define AESL_DEPTH_unroll 1
`define AESL_DEPTH_maxIter 1
`define AESL_DEPTH_buf_r 1
`define AUTOTB_TVIN_setup  "../tv/cdatafile/c.calc.autotvin_setup.dat"
`define AUTOTB_TVIN_X0_V  "../tv/cdatafile/c.calc.autotvin_X0_V.dat"
`define AUTOTB_TVIN_Y0_V  "../tv/cdatafile/c.calc.autotvin_Y0_V.dat"
`define AUTOTB_TVIN_X1_V  "../tv/cdatafile/c.calc.autotvin_X1_V.dat"
`define AUTOTB_TVIN_width_V  "../tv/cdatafile/c.calc.autotvin_width_V.dat"
`define AUTOTB_TVIN_maxIter  "../tv/cdatafile/c.calc.autotvin_maxIter.dat"
`define AUTOTB_TVIN_setup_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvin_setup.dat"
`define AUTOTB_TVIN_X0_V_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvin_X0_V.dat"
`define AUTOTB_TVIN_Y0_V_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvin_Y0_V.dat"
`define AUTOTB_TVIN_X1_V_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvin_X1_V.dat"
`define AUTOTB_TVIN_width_V_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvin_width_V.dat"
`define AUTOTB_TVIN_maxIter_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvin_maxIter.dat"
`define AUTOTB_TVOUT_maxWidth_V  "../tv/cdatafile/c.calc.autotvout_maxWidth_V.dat"
`define AUTOTB_TVOUT_unroll  "../tv/cdatafile/c.calc.autotvout_unroll.dat"
`define AUTOTB_TVOUT_buf_r  "../tv/cdatafile/c.calc.autotvout_buf_r.dat"
`define AUTOTB_TVOUT_maxWidth_V_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvout_maxWidth_V.dat"
`define AUTOTB_TVOUT_unroll_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvout_unroll.dat"
`define AUTOTB_TVOUT_buf_r_out_wrapc  "../tv/rtldatafile/rtl.calc.autotvout_buf_r.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 2;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 2147483647;
parameter LENGTH_setup = 1;
parameter LENGTH_X0_V = 1;
parameter LENGTH_Y0_V = 1;
parameter LENGTH_X1_V = 1;
parameter LENGTH_width_V = 1;
parameter LENGTH_maxWidth_V = 1;
parameter LENGTH_unroll = 1;
parameter LENGTH_maxIter = 1;
parameter LENGTH_buf_r = 8112;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [6 : 0] in_parms_AWADDR;
wire  in_parms_AWVALID;
wire  in_parms_AWREADY;
wire  in_parms_WVALID;
wire  in_parms_WREADY;
wire [31 : 0] in_parms_WDATA;
wire [3 : 0] in_parms_WSTRB;
wire [6 : 0] in_parms_ARADDR;
wire  in_parms_ARVALID;
wire  in_parms_ARREADY;
wire  in_parms_RVALID;
wire  in_parms_RREADY;
wire [31 : 0] in_parms_RDATA;
wire [1 : 0] in_parms_RRESP;
wire  in_parms_BVALID;
wire  in_parms_BREADY;
wire [1 : 0] in_parms_BRESP;
wire  in_parms_INTERRUPT;
wire  setup;
wire  buf_r_AWVALID;
wire  buf_r_AWREADY;
wire [31 : 0] buf_r_AWADDR;
wire [0 : 0] buf_r_AWID;
wire [7 : 0] buf_r_AWLEN;
wire [2 : 0] buf_r_AWSIZE;
wire [1 : 0] buf_r_AWBURST;
wire [1 : 0] buf_r_AWLOCK;
wire [3 : 0] buf_r_AWCACHE;
wire [2 : 0] buf_r_AWPROT;
wire [3 : 0] buf_r_AWQOS;
wire [3 : 0] buf_r_AWREGION;
wire [0 : 0] buf_r_AWUSER;
wire  buf_r_WVALID;
wire  buf_r_WREADY;
wire [31 : 0] buf_r_WDATA;
wire [3 : 0] buf_r_WSTRB;
wire  buf_r_WLAST;
wire [0 : 0] buf_r_WID;
wire [0 : 0] buf_r_WUSER;
wire  buf_r_ARVALID;
wire  buf_r_ARREADY;
wire [31 : 0] buf_r_ARADDR;
wire [0 : 0] buf_r_ARID;
wire [7 : 0] buf_r_ARLEN;
wire [2 : 0] buf_r_ARSIZE;
wire [1 : 0] buf_r_ARBURST;
wire [1 : 0] buf_r_ARLOCK;
wire [3 : 0] buf_r_ARCACHE;
wire [2 : 0] buf_r_ARPROT;
wire [3 : 0] buf_r_ARQOS;
wire [3 : 0] buf_r_ARREGION;
wire [0 : 0] buf_r_ARUSER;
wire  buf_r_RVALID;
wire  buf_r_RREADY;
wire [31 : 0] buf_r_RDATA;
wire  buf_r_RLAST;
wire [0 : 0] buf_r_RID;
wire [0 : 0] buf_r_RUSER;
wire [1 : 0] buf_r_RRESP;
wire  buf_r_BVALID;
wire  buf_r_BREADY;
wire [1 : 0] buf_r_BRESP;
wire [0 : 0] buf_r_BID;
wire [0 : 0] buf_r_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire in_parms_read_data_finish;
wire in_parms_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_in_parms_AWADDR(in_parms_AWADDR),
    .s_axi_in_parms_AWVALID(in_parms_AWVALID),
    .s_axi_in_parms_AWREADY(in_parms_AWREADY),
    .s_axi_in_parms_WVALID(in_parms_WVALID),
    .s_axi_in_parms_WREADY(in_parms_WREADY),
    .s_axi_in_parms_WDATA(in_parms_WDATA),
    .s_axi_in_parms_WSTRB(in_parms_WSTRB),
    .s_axi_in_parms_ARADDR(in_parms_ARADDR),
    .s_axi_in_parms_ARVALID(in_parms_ARVALID),
    .s_axi_in_parms_ARREADY(in_parms_ARREADY),
    .s_axi_in_parms_RVALID(in_parms_RVALID),
    .s_axi_in_parms_RREADY(in_parms_RREADY),
    .s_axi_in_parms_RDATA(in_parms_RDATA),
    .s_axi_in_parms_RRESP(in_parms_RRESP),
    .s_axi_in_parms_BVALID(in_parms_BVALID),
    .s_axi_in_parms_BREADY(in_parms_BREADY),
    .s_axi_in_parms_BRESP(in_parms_BRESP),
    .interrupt(in_parms_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .setup(setup),
    .m_axi_buf_r_AWVALID(buf_r_AWVALID),
    .m_axi_buf_r_AWREADY(buf_r_AWREADY),
    .m_axi_buf_r_AWADDR(buf_r_AWADDR),
    .m_axi_buf_r_AWID(buf_r_AWID),
    .m_axi_buf_r_AWLEN(buf_r_AWLEN),
    .m_axi_buf_r_AWSIZE(buf_r_AWSIZE),
    .m_axi_buf_r_AWBURST(buf_r_AWBURST),
    .m_axi_buf_r_AWLOCK(buf_r_AWLOCK),
    .m_axi_buf_r_AWCACHE(buf_r_AWCACHE),
    .m_axi_buf_r_AWPROT(buf_r_AWPROT),
    .m_axi_buf_r_AWQOS(buf_r_AWQOS),
    .m_axi_buf_r_AWREGION(buf_r_AWREGION),
    .m_axi_buf_r_AWUSER(buf_r_AWUSER),
    .m_axi_buf_r_WVALID(buf_r_WVALID),
    .m_axi_buf_r_WREADY(buf_r_WREADY),
    .m_axi_buf_r_WDATA(buf_r_WDATA),
    .m_axi_buf_r_WSTRB(buf_r_WSTRB),
    .m_axi_buf_r_WLAST(buf_r_WLAST),
    .m_axi_buf_r_WID(buf_r_WID),
    .m_axi_buf_r_WUSER(buf_r_WUSER),
    .m_axi_buf_r_ARVALID(buf_r_ARVALID),
    .m_axi_buf_r_ARREADY(buf_r_ARREADY),
    .m_axi_buf_r_ARADDR(buf_r_ARADDR),
    .m_axi_buf_r_ARID(buf_r_ARID),
    .m_axi_buf_r_ARLEN(buf_r_ARLEN),
    .m_axi_buf_r_ARSIZE(buf_r_ARSIZE),
    .m_axi_buf_r_ARBURST(buf_r_ARBURST),
    .m_axi_buf_r_ARLOCK(buf_r_ARLOCK),
    .m_axi_buf_r_ARCACHE(buf_r_ARCACHE),
    .m_axi_buf_r_ARPROT(buf_r_ARPROT),
    .m_axi_buf_r_ARQOS(buf_r_ARQOS),
    .m_axi_buf_r_ARREGION(buf_r_ARREGION),
    .m_axi_buf_r_ARUSER(buf_r_ARUSER),
    .m_axi_buf_r_RVALID(buf_r_RVALID),
    .m_axi_buf_r_RREADY(buf_r_RREADY),
    .m_axi_buf_r_RDATA(buf_r_RDATA),
    .m_axi_buf_r_RLAST(buf_r_RLAST),
    .m_axi_buf_r_RID(buf_r_RID),
    .m_axi_buf_r_RUSER(buf_r_RUSER),
    .m_axi_buf_r_RRESP(buf_r_RRESP),
    .m_axi_buf_r_BVALID(buf_r_BVALID),
    .m_axi_buf_r_BREADY(buf_r_BREADY),
    .m_axi_buf_r_BRESP(buf_r_BRESP),
    .m_axi_buf_r_BID(buf_r_BID),
    .m_axi_buf_r_BUSER(buf_r_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & in_parms_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & in_parms_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end
// The signal of port setup
reg [0: 0] AESL_REG_setup = 0;
assign setup = AESL_REG_setup;
initial begin : read_file_process_setup
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [199  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_setup,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_setup);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_setup);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end










wire    AESL_axi_master_buf_r_ready;
wire    AESL_axi_master_buf_r_done;
AESL_axi_master_buf_r AESL_AXI_MASTER_buf_r(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_buf_r_AWVALID (buf_r_AWVALID),
    .TRAN_buf_r_AWREADY (buf_r_AWREADY),
    .TRAN_buf_r_AWADDR (buf_r_AWADDR),
    .TRAN_buf_r_AWID (buf_r_AWID),
    .TRAN_buf_r_AWLEN (buf_r_AWLEN),
    .TRAN_buf_r_AWSIZE (buf_r_AWSIZE),
    .TRAN_buf_r_AWBURST (buf_r_AWBURST),
    .TRAN_buf_r_AWLOCK (buf_r_AWLOCK),
    .TRAN_buf_r_AWCACHE (buf_r_AWCACHE),
    .TRAN_buf_r_AWPROT (buf_r_AWPROT),
    .TRAN_buf_r_AWQOS (buf_r_AWQOS),
    .TRAN_buf_r_AWREGION (buf_r_AWREGION),
    .TRAN_buf_r_AWUSER (buf_r_AWUSER),
    .TRAN_buf_r_WVALID (buf_r_WVALID),
    .TRAN_buf_r_WREADY (buf_r_WREADY),
    .TRAN_buf_r_WDATA (buf_r_WDATA),
    .TRAN_buf_r_WSTRB (buf_r_WSTRB),
    .TRAN_buf_r_WLAST (buf_r_WLAST),
    .TRAN_buf_r_WID (buf_r_WID),
    .TRAN_buf_r_WUSER (buf_r_WUSER),
    .TRAN_buf_r_ARVALID (buf_r_ARVALID),
    .TRAN_buf_r_ARREADY (buf_r_ARREADY),
    .TRAN_buf_r_ARADDR (buf_r_ARADDR),
    .TRAN_buf_r_ARID (buf_r_ARID),
    .TRAN_buf_r_ARLEN (buf_r_ARLEN),
    .TRAN_buf_r_ARSIZE (buf_r_ARSIZE),
    .TRAN_buf_r_ARBURST (buf_r_ARBURST),
    .TRAN_buf_r_ARLOCK (buf_r_ARLOCK),
    .TRAN_buf_r_ARCACHE (buf_r_ARCACHE),
    .TRAN_buf_r_ARPROT (buf_r_ARPROT),
    .TRAN_buf_r_ARQOS (buf_r_ARQOS),
    .TRAN_buf_r_ARREGION (buf_r_ARREGION),
    .TRAN_buf_r_ARUSER (buf_r_ARUSER),
    .TRAN_buf_r_RVALID (buf_r_RVALID),
    .TRAN_buf_r_RREADY (buf_r_RREADY),
    .TRAN_buf_r_RDATA (buf_r_RDATA),
    .TRAN_buf_r_RLAST (buf_r_RLAST),
    .TRAN_buf_r_RID (buf_r_RID),
    .TRAN_buf_r_RUSER (buf_r_RUSER),
    .TRAN_buf_r_RRESP (buf_r_RRESP),
    .TRAN_buf_r_BVALID (buf_r_BVALID),
    .TRAN_buf_r_BREADY (buf_r_BREADY),
    .TRAN_buf_r_BRESP (buf_r_BRESP),
    .TRAN_buf_r_BID (buf_r_BID),
    .TRAN_buf_r_BUSER (buf_r_BUSER),
    .ready (AESL_axi_master_buf_r_ready),
    .done  (AESL_axi_master_buf_r_done)
);
assign    AESL_axi_master_buf_r_ready    =   ready;
assign    AESL_axi_master_buf_r_done    =   AESL_done_delay;

AESL_axi_slave_in_parms AESL_AXI_SLAVE_in_parms(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_in_parms_AWADDR (in_parms_AWADDR),
    .TRAN_s_axi_in_parms_AWVALID (in_parms_AWVALID),
    .TRAN_s_axi_in_parms_AWREADY (in_parms_AWREADY),
    .TRAN_s_axi_in_parms_WVALID (in_parms_WVALID),
    .TRAN_s_axi_in_parms_WREADY (in_parms_WREADY),
    .TRAN_s_axi_in_parms_WDATA (in_parms_WDATA),
    .TRAN_s_axi_in_parms_WSTRB (in_parms_WSTRB),
    .TRAN_s_axi_in_parms_ARADDR (in_parms_ARADDR),
    .TRAN_s_axi_in_parms_ARVALID (in_parms_ARVALID),
    .TRAN_s_axi_in_parms_ARREADY (in_parms_ARREADY),
    .TRAN_s_axi_in_parms_RVALID (in_parms_RVALID),
    .TRAN_s_axi_in_parms_RREADY (in_parms_RREADY),
    .TRAN_s_axi_in_parms_RDATA (in_parms_RDATA),
    .TRAN_s_axi_in_parms_RRESP (in_parms_RRESP),
    .TRAN_s_axi_in_parms_BVALID (in_parms_BVALID),
    .TRAN_s_axi_in_parms_BREADY (in_parms_BREADY),
    .TRAN_s_axi_in_parms_BRESP (in_parms_BRESP),
    .TRAN_in_parms_interrupt (in_parms_INTERRUPT),
    .TRAN_in_parms_read_data_finish(in_parms_read_data_finish),
    .TRAN_in_parms_write_data_finish(in_parms_write_data_finish),
    .TRAN_in_parms_ready_out (AESL_ready),
    .TRAN_in_parms_ready_in (AESL_slave_ready),
    .TRAN_in_parms_done_out (AESL_slave_output_done),
    .TRAN_in_parms_idle_out (AESL_idle),
    .TRAN_in_parms_write_start_in     (AESL_slave_write_start_in),
    .TRAN_in_parms_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_in_parms_transaction_done_in (AESL_done_delay),
    .TRAN_in_parms_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_setup;
reg [31:0] size_setup;
reg [31:0] size_setup_backup;
reg end_X0_V;
reg [31:0] size_X0_V;
reg [31:0] size_X0_V_backup;
reg end_Y0_V;
reg [31:0] size_Y0_V;
reg [31:0] size_Y0_V_backup;
reg end_X1_V;
reg [31:0] size_X1_V;
reg [31:0] size_X1_V_backup;
reg end_width_V;
reg [31:0] size_width_V;
reg [31:0] size_width_V_backup;
reg end_maxIter;
reg [31:0] size_maxIter;
reg [31:0] size_maxIter_backup;
reg end_maxWidth_V;
reg [31:0] size_maxWidth_V;
reg [31:0] size_maxWidth_V_backup;
reg end_unroll;
reg [31:0] size_unroll;
reg [31:0] size_unroll_backup;
reg end_buf_r;
reg [31:0] size_buf_r;
reg [31:0] size_buf_r_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_maxWidth_V;

initial begin : dump_tvout_runtime_sign_maxWidth_V
    integer fp;
    dump_tvout_finish_maxWidth_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_maxWidth_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_maxWidth_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_maxWidth_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_maxWidth_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_maxWidth_V = 1;
end


reg dump_tvout_finish_unroll;

initial begin : dump_tvout_runtime_sign_unroll
    integer fp;
    dump_tvout_finish_unroll = 0;
    fp = $fopen(`AUTOTB_TVOUT_unroll_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_unroll_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_unroll_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_unroll_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_unroll = 1;
end


reg dump_tvout_finish_buf_r;

initial begin : dump_tvout_runtime_sign_buf_r
    integer fp;
    dump_tvout_finish_buf_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_buf_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_buf_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_buf_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_buf_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_buf_r = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
