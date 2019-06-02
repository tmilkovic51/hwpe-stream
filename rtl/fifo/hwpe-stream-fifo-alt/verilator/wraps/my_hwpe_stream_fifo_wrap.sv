import hwpe_stream_package::*;

module my_hwpe_stream_fifo_wrap #(
  parameter int unsigned DATA_WIDTH = 32,
  parameter int unsigned FIFO_DEPTH = 8,
  parameter int unsigned LATCH_FIFO = 0,
  parameter int unsigned LATCH_FIFO_TEST_WRAP = 0
)
(
  input  logic clk,
  input  logic rst_n,
  input  logic clear,

  output logic flags_empty,
  output logic flags_full,

  output logic                    push_ready,
  input  logic                    push_valid,
  input  logic [DATA_WIDTH-1:0]   push_data,
  input  logic [DATA_WIDTH/8-1:0] push_strb,

  input  logic                    pop_ready,
  output logic                    pop_valid,
  output logic [DATA_WIDTH-1:0]   pop_data,
  output logic [DATA_WIDTH/8-1:0] pop_strb
);

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
    push ( clk );

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
    pop ( clk );

  flags_fifo_t flags;

  assign push_ready = push.ready;
  assign push.valid = push_valid;
  assign push.data  = push_data;
  assign push.strb  = push_strb;

  assign pop.ready = pop_ready;
  assign pop_valid = pop.valid;
  assign pop_data  = pop.data;
  assign pop_strb  = pop.strb;

  assign flags_empty = flags.empty;
  assign flags_full = flags.full;

  my_hwpe_stream_fifo #(
    .DATA_WIDTH ( DATA_WIDTH ),
    .FIFO_DEPTH ( FIFO_DEPTH ),
    .LATCH_FIFO ( LATCH_FIFO ),
    .LATCH_FIFO_TEST_WRAP ( LATCH_FIFO_TEST_WRAP )
  ) my_hwpe_stream_fifo_inst (
    .clk   ( clk   ),
    .rst_n ( rst_n ),
    .clear ( clear ),
    .flags ( flags ),
    .push  ( push  ),
    .pop   ( pop   )
  );

endmodule // hwpe_stream_fifo
