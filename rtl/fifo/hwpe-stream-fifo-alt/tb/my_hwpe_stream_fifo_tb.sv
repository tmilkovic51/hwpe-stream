`timescale 1ns/1ps;

import hwpe_stream_package::*;

module my_hwpe_stream_fifo_tb;

  logic clk = 0;
  logic rst_n, clear;

  flags_fifo_t flags;

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
  push ( clk );

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
  pop ( clk );

  my_hwpe_stream_fifo #(
    .DATA_WIDTH(32),
    .FIFO_DEPTH(8),
    .LATCH_FIFO(0),
    .LATCH_FIFO_TEST_WRAP(0)
  ) dut (
    .clk(clk),
    .rst_n(rst_n),
    .clear(clear),
    .flags(flags),
    .push(push),
    .pop(pop)
  );

  always
    #5 clk = ~clk;

  initial begin
    rst_n = 1'b1;
    clear = 1'b0;
    push.data = 32'hDEAD;
    push.valid = 1'b1;
    push.strb = 4'b1111;
    pop.ready = 1'b0;

    #10;
    rst_n = 1'b0;
    #20;
    rst_n = 1'b1;
    
    pop.ready = 1'b1;

    #50 $finish;
  end

endmodule
