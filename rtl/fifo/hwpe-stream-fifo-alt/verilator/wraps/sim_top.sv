import hwpe_stream_package::*;

module sim_top #(
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
  output logic [DATA_WIDTH/8-1:0] pop_strb,

  output logic my_flags_empty,
  output logic my_flags_full,

  output logic                    my_push_ready,

  output logic                    my_pop_valid,
  output logic [DATA_WIDTH-1:0]   my_pop_data,
  output logic [DATA_WIDTH/8-1:0] my_pop_strb
);

  flags_fifo_t flags;

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
    push ( clk );

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
    pop ( clk );

  assign flags_empty = flags.empty;
  assign flags_full = flags.full;

  assign push_ready = push.ready;
  assign push.valid = push_valid;
  assign push.data  = push_data;
  assign push.strb  = push_strb;

  assign pop.ready = pop_ready;
  assign pop_valid = pop.valid;
  assign pop_data  = pop.data;
  assign pop_strb  = pop.strb;

  hwpe_stream_fifo #(
    .DATA_WIDTH ( DATA_WIDTH ),
    .FIFO_DEPTH ( FIFO_DEPTH ),
    .LATCH_FIFO ( LATCH_FIFO ),
    .LATCH_FIFO_TEST_WRAP ( LATCH_FIFO_TEST_WRAP )
  ) hwpe_stream_fifo_inst (
    .clk_i   ( clk   ),
    .rst_ni  ( rst_n ),
    .clear_i ( clear ),
    .flags_o ( flags ),
    .push_i  ( push  ),
    .pop_o   ( pop   )
  );

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
    my_push ( clk );

  hwpe_stream_intf_stream #( .DATA_WIDTH(32) )
    my_pop ( clk );

  flags_fifo_t my_flags;

  assign my_push_ready = my_push.ready;
  assign my_push.valid = push_valid;
  assign my_push.data  = push_data;
  assign my_push.strb  = push_strb;

  assign my_pop.ready = pop_ready;
  assign my_pop_valid = my_pop.valid;
  assign my_pop_data  = my_pop.data;
  assign my_pop_strb  = my_pop.strb;

  assign my_flags_empty = my_flags.empty;
  assign my_flags_full  = my_flags.full;

  my_hwpe_stream_fifo #(
    .DATA_WIDTH ( DATA_WIDTH ),
    .FIFO_DEPTH ( FIFO_DEPTH ),
    .LATCH_FIFO ( LATCH_FIFO ),
    .LATCH_FIFO_TEST_WRAP ( LATCH_FIFO_TEST_WRAP )
  ) my_hwpe_stream_fifo_inst (
    .clk   ( clk   ),
    .rst_n ( rst_n ),
    .clear ( clear ),
    .flags ( my_flags ),
    .push  ( my_push  ),
    .pop   ( my_pop   )
  );

endmodule // hwpe_stream_fifo
