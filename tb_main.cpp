#include "Vdemo_axi_memory.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

int main(int argc, char **argv, char **env)
{
    int clk;
    Verilated::commandArgs(argc, argv);
    Vdemo_axi_memory *top = new Vdemo_axi_memory;
    Verilated::traceEverOn(true);
    VerilatedVcdC *tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open("trace.vcd");
    top->clk = 0;
    for(clk = 0; clk <= 4; clk++)
    {
        tfp->dump(clk);
        top->clk = !top->clk;
        top->eval();
    }
    tfp->close();
    exit(0);

  return 0;
}
