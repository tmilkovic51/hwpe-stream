/*
 * hwpe_stream_fifo.sv
 * Francesco Conti <f.conti@unibo.it>
 * Igor Loi <igor.loi@unibo.it>
 *
 * Copyright (C) 2014-2018 ETH Zurich, University of Bologna
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

/**
 * The **hwpe_stream_fifo** module implements a hardware FIFO queue for
 * HWPE-Stream streams, used to withstand data scarcity (`valid`=0) or
 * backpressure (`ready`=0), decoupling two architectural domains.
 * This FIFO is single-clock and therefore cannot be used to cross two
 * distinct clock domains.
 * The FIFO will lower its `ready` signal on the input stream `push`
 * interface when it is completely full, and will lower its `valid`
 * signal on the output stream `pop` interface when it is completely
 * empty.
 *
 * .. tabularcolumns:: |l|l|J|
 * .. _hwpe_stream_fifo_params:
 * .. table:: **hwpe_stream_fifo** design-time parameters.
 *
 *   +------------------------+--------------+--------------------------------------------------------------------------------------+
 *   | **Name**               | **Default**  | **Description**                                                                      |
 *   +------------------------+--------------+--------------------------------------------------------------------------------------+
 *   | *DATA_WIDTH*           | 32           | Width of the HWPE-Streams (typically multiple of 32, but this module does not care). |
 *   +------------------------+--------------+--------------------------------------------------------------------------------------+
 *   | *FIFO_DEPTH*           | 8            | Depth of the FIFO queue (multiple of 2).                                             |
 *   +------------------------+--------------+--------------------------------------------------------------------------------------+
 *   | *LATCH_FIFO*           | 0            | If 1, use latches instead of flip-flops (requires special constraints in synthesis). |
 *   +------------------------+--------------+--------------------------------------------------------------------------------------+
 *   | *LATCH_FIFO_TEST_WRAP* | 0            | If 1 and *LATCH_FIFO* is 1, wrap latches with BIST wrappers.                         |
 *   +------------------------+--------------+--------------------------------------------------------------------------------------+
 *
 * .. tabularcolumns:: |l|l|J|
 * .. _hwpe_stream_fifo_flags:
 * .. table:: **hwpe_stream_fifo** output flags.
 *
 *   +----------------+--------------+-----------------------------------+
 *   | **Name**       | **Type**     | **Description**                   |
 *   +----------------+--------------+-----------------------------------+
 *   | *empty*        | `logic`      | 1 if the FIFO is currently empty. |
 *   +----------------+--------------+-----------------------------------+
 *   | *full*         | `logic`      | 1 if the FIFO is currently full.  |
 *   +----------------+--------------+-----------------------------------+
 *   | *push_pointer* | `logic[7:0]` | Unused.                           |
 *   +----------------+--------------+-----------------------------------+
 *   | *pop_pointer*  | `logic[7:0]` | Unused.                           |
 *   +----------------+--------------+-----------------------------------+
 *
 */

import hwpe_stream_package::*;

module my_hwpe_stream_fifo #(
  parameter int unsigned DATA_WIDTH = 32,
  parameter int unsigned FIFO_DEPTH = 8,
  parameter int unsigned LATCH_FIFO = 0,
  parameter int unsigned LATCH_FIFO_TEST_WRAP = 0
)
(
  input  logic                   clk_i,
  input  logic                   rst_ni,
  input  logic                   clear_i,

  output flags_fifo_t            flags_o,

  hwpe_stream_intf_stream.sink   push,
  hwpe_stream_intf_stream.source pop
);

  // Local Parameter
  localparam STRB_WIDTH = DATA_WIDTH/8;
  localparam ADDR_DEPTH = (FIFO_DEPTH==1) ? 1 : $clog2(FIFO_DEPTH);

  // Internal Signals
  enum logic [1:0] { EMPTY, FULL, MIDDLE } cs, ns;

  logic [ADDR_DEPTH-1:0] pop_pointer_q,  pop_pointer_d;
  logic [ADDR_DEPTH-1:0] push_pointer_q, push_pointer_d;

  logic [DATA_WIDTH+STRB_WIDTH-1:0] fifo_registers[FIFO_DEPTH-1:0];
  logic [DATA_WIDTH+STRB_WIDTH-1:0] data_out_int;
  logic [DATA_WIDTH+STRB_WIDTH-1:0] data_in_int;


  // Pop pointer
  always_ff @(posedge clk_i, negedge rst_ni)
  begin
    if (~rst_ni)
      pop_pointer_q <= 0;
    else if (clear_i)
      pop_pointer_q <= 0;
    else if (pop.ready && pop.valid)
      pop_pointer_q <= pop_pointer_d;
  end
  assign pop_pointer_d = (pop_pointer_q == FIFO_DEPTH-1) ? 0 : pop_pointer_q + 1;

  // Push pointer
  always_ff @(posedge clk_i, negedge rst_ni)
  begin
    if (~rst_ni)
      push_pointer_q <= 0;
    else if (clear_i)
      push_pointer_q <= 0;
    else if (push.ready && push.valid)
      push_pointer_q <= push_pointer_d;
  end
  assign push_pointer_d = (push_pointer_q == FIFO_DEPTH-1) ? 0 : push_pointer_q + 1;


  // drive ready/valid (a separate always_comb is necessary for Verilator)
  always_comb
  begin
    case(cs)
      EMPTY: begin
        push.ready = 1'b1;
        pop.valid = 1'b0;
      end
      MIDDLE: begin
        push.ready = 1'b1;
        pop.valid = 1'b1;
      end
      FULL: begin
        push.ready = 1'b0;
        pop.valid = 1'b1;
      end
      default : begin
        push.ready = 1'b0;
        pop.valid = 1'b0;
      end
    endcase
  end

  // FSM
  always_ff @(posedge clk_i, negedge rst_ni)
  begin
    if(~rst_ni)
      cs <= EMPTY;
    else if(clear_i)
      cs <= EMPTY;
    else
      cs <= ns;
  end

  always_comb
  begin
    ns = cs;
    case(cs)
    EMPTY:
      if(push.valid)
        ns = MIDDLE;
    MIDDLE:
      if(pop_pointer_d == push_pointer_d) begin
        if(push.valid)
          ns = FULL;
        else if(pop.ready)
          ns = EMPTY;
      end
    FULL:
      if(pop.ready)
        ns = MIDDLE;
    default:
      ns = EMPTY;
    endcase
  end

  // FIFO implementation
  generate
    if(LATCH_FIFO == 0) begin : fifo_ff_gen

      integer i;
      always_ff @(posedge clk_i, negedge rst_ni)
      begin
        if(~rst_ni) begin
          for (i=0; i< FIFO_DEPTH; i++)
            fifo_registers[i] <= '0;
        end
        else if(clear_i) begin
          for (i=0; i< FIFO_DEPTH; i++)
            fifo_registers[i] <= '0;
        end
        else begin
          if(push.ready & push.valid)
            fifo_registers[push_pointer_q] <= { push.data, push.strb } ;
        end
      end

      assign data_out_int = fifo_registers[pop_pointer_q];

    end
    else if(LATCH_FIFO_TEST_WRAP == 0) begin : fifo_latch_gen

      assign data_in_int = { push.data, push.strb };

      hwpe_stream_fifo_scm #(
        .ADDR_WIDTH ( ADDR_DEPTH                ),
        .DATA_WIDTH ( DATA_WIDTH + STRB_WIDTH )
      ) i_fifo_latch (
        .clk         ( clk_i                       ),
        .rst_n       ( rst_ni                      ),
        .ReadEnable  ( 1'b1                        ),
        .ReadAddr    ( pop_pointer_d               ),
        .ReadData    ( data_out_int                ),
        .WriteEnable ( push.ready & push.valid ),
        .WriteAddr   ( push_pointer_q              ),
        .WriteData   ( data_in_int                 )
      );

    end
    else begin : fifo_latch_test_wrap_gen

      assign data_in_int = { push.data, push.strb };

      hwpe_stream_fifo_scm_test_wrap #(
        .ADDR_WIDTH ( ADDR_DEPTH                ),
        .DATA_WIDTH ( DATA_WIDTH + STRB_WIDTH )
      ) i_fifo_latch (
        .clk ( clk_i ),
        .rst_n       ( rst_ni                      ),
        .ReadEnable  ( 1'b1                        ),
        .ReadAddr    ( pop_pointer_d               ),
        .ReadData    ( data_out_int                ),
        .WriteEnable ( push.ready & push.valid ),
        .WriteAddr   ( push_pointer_q              ),
        .WriteData   ( data_in_int                 ),
        .BIST        ( 1'b0                        ), // BIST ports, connect me
        .CSN_T       (                             ), // BIST ports, connect me
        .WEN_T       (                             ), // BIST ports, connect me
        .A_T         (                             ), // BIST ports, connect me
        .D_T         (                             ), // BIST ports, connect me
        .Q_T         (                             )  // BIST ports, connect me
      );

    end
  endgenerate

  assign flags_o.empty = (cs == EMPTY) ? 1'b1 : 1'b0;
  assign flags_o.full  = (cs == FULL)  ? 1'b1 : 1'b0;

  assign pop.data = data_out_int[DATA_WIDTH+STRB_WIDTH-1:STRB_WIDTH];
  assign pop.strb = data_out_int[STRB_WIDTH-1:0];

endmodule // hwpe_stream_fifo
