#include "Vdemo_axi_memory.h"
#include "verilated.h"
#include "verilated_vcd_c.h"


#define CYCLE() do { \
		top->clk = 0; \
		top->eval(); \
		if (tfp) tfp->dump(eval_num ++); \
		top->clk = 1; \
		top->eval(); \
		if (tfp) tfp->dump(eval_num ++); \
		}while (0)

int main(int argc, char **argv, char **env)
{
    int eval_num = 0;
    int i = 0;
    Verilated::commandArgs(argc, argv);
    Vdemo_axi_memory *top = new Vdemo_axi_memory;
    Verilated::traceEverOn(true);
    VerilatedVcdC *tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open("trace.vcd");

   
    top->reset_n = 0;   
    for(i = 0 ; i < 10 ; i++)
    { 
	CYCLE();
    }	
    top->reset_n = 1;
    CYCLE();

 
    if (tfp)
        tfp->close();
    
    delete tfp;
    return 0;
}
