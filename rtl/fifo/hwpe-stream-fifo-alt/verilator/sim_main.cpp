// DESCRIPTION: Verilator: Verilog example module
//
// This file ONLY is placed into the Public Domain, for any use,
// without warranty, 2017 by Wilson Snyder.
//======================================================================

// Include common routines
#include <verilated.h>

// Include model header, generated from Verilating "top.v"
#include "Vsim_top.h"

// If "verilator --trace" is used, include the tracing class
#if VM_TRACE
# include <verilated_vcd_c.h>
#endif

// Current simulation time (64-bit unsigned)
vluint64_t main_time = 0;
// Called by $time in Verilog
double sc_time_stamp() {
    return main_time;  // Note does conversion to real, to match SystemC
}

int main(int argc, char** argv, char** env) {
    // Prevent unused variable warnings
    if (0 && argc && argv && env) {}

    // Set debug level, 0 is off, 9 is highest presently used
    // May be overridden by commandArgs
    Verilated::debug(0);

    // Randomization reset policy
    // May be overridden by commandArgs
    Verilated::randReset(2);

    // Pass arguments so Verilated code can see them, e.g. $value$plusargs
    // This needs to be called before you create any model
    Verilated::commandArgs(argc, argv);

    // Construct the Verilated model, from Vtop.h generated from Verilating "top.v"
    Vsim_top* top = new Vsim_top; // Or use a const unique_ptr, or the VL_UNIQUE_PTR wrapper

#if VM_TRACE
    // If verilator was invoked with --trace argument,
    // and if at run time passed the +trace argument, turn on tracing
    VerilatedVcdC* tfp = NULL;
    const char* flag = Verilated::commandArgsPlusMatch("trace");
    if (flag && 0==strcmp(flag, "+trace")) {
        Verilated::traceEverOn(true);  // Verilator must compute traced signals
        VL_PRINTF("Enabling waves into logs/vlt_dump.vcd...\n");
        tfp = new VerilatedVcdC;
        top->trace(tfp, 99);  // Trace 99 levels of hierarchy
        Verilated::mkdir("logs");
        tfp->open("logs/vlt_dump_valid_on_14.vcd");  // Open the dump file
    }
#endif

    // Set some inputs
    top->rst_n = !0;
    top->clk = 0;
    top->clear = 0;
    top->push_valid = 1;
    top->push_data = 0xBEEF;
    top->push_strb = 0xF;
    top->pop_ready = 1;

    // Simulate until 100 ticks
    while (main_time < 50) {
        main_time++;  // Time passes...

        // Toggle clocks and such
        top->clk = !top->clk;
        if (main_time > 1 && main_time < 10) {
            top->rst_n = !1;  // Assert reset
        } else {
            top->rst_n = !0;  // Deassert reset
        }

        if (main_time > 10 && main_time < 20) {
          top->pop_ready = 0;
        } else {
          top->pop_ready = 1;
        }

        if (main_time > 14) {
          top->push_valid = 0;
        }

        if (main_time > 12) {
          top->push_data = 0xDEAD;
        }

        // Evaluate model
        top->eval();

#if VM_TRACE
        // Dump trace data for this cycle
        if (tfp) tfp->dump (main_time);
#endif

        // Read outputs
        if (top->push_ready != top->my_push_ready) {
          VL_PRINTF ("[%" VL_PRI64 "d] push.ready=%x != my_push.ready=%x\n",
                     main_time, top->push_ready, top->my_push_ready);
        }
        if (top->pop_valid != top->my_pop_valid) {
          VL_PRINTF ("[%" VL_PRI64 "d] pop.valid=%x != my_pop.valid=%x\n",
                     main_time, top->pop_valid, top->my_pop_valid);
        }
        if (top->pop_data != top->my_pop_data) {
          VL_PRINTF ("[%" VL_PRI64 "d] pop.data=%x != my_pop.data=%x\n",
                     main_time, top->pop_data, top->my_pop_data);
        }
        if (top->pop_strb != top->my_pop_strb) {
          VL_PRINTF ("[%" VL_PRI64 "d] pop.strb=%x != my_pop.strb=%x\n",
                     main_time, top->pop_strb, top->my_pop_strb);
        }
    }

    // Final model cleanup
    top->final();

    // Close trace if opened
#if VM_TRACE
    if (tfp) { tfp->close(); tfp = NULL; }
#endif

    //  Coverage analysis (since test passed)
#if VM_COVERAGE
    Verilated::mkdir("logs");
    VerilatedCov::write("logs/coverage.dat");
#endif

    // Destroy model
    delete top; top = NULL;

    // Fin
    exit(0);
}
