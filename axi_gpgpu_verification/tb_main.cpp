#include "Vaxi_gpgpu.h"
#include "verilated.h"
#include "verilated_vcd_c.h"


/* AXI-3 knowledge

AXI-3 requires the VALID and READY handshake mechanism. Transfer of either address information
or data occurs when both the VALID and READY signals are HIGH.

Signal   Source Description

AWVALID  Master Write address valid. 
                This signal indicates
	        that valid write address and control
                information are available:
                1 = address and control information available
		0 = address and control information not available.
		The address and control information remain stable 
		until the address acknowledge signal,
		AWREADY, goes HIGH.
AWREADY  Slave	Write address ready. This signal indicates 
		that the slave is ready to accept an address and	
		associated control signals:
		1 = slave ready
		0 = slave not ready.

WVALID   Master Write valid. This signal indicates 
                that valid write data and strobes are available:
	        1 = write data and strobes available
	        0 = write data and strobes not available.
WREADY   Slave  Write ready. This signal indicates 
		that the slave can accept the write data
	        1 = slave ready
	        0 = slave not ready.



*/


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
    Verilated::debug(0); //Enable debugging at a specified level
    Verilated::traceEverOn(true);
    Verilated::randReset(2); //Initialize all registers to random

    VerilatedVcdC *tfp = new VerilatedVcdC;
    Vaxi_gpgpu *top = new Vaxi_gpgpu;
    top->trace(tfp, 99);
    tfp->open("trace.vcd");   
    
    top->reset_n = 0;   
    for(i = 0 ; i < 10 ; i++){ 
	CYCLE();
    }	
    top->reset_n = 1;
    top->axs_rready = 1;
    
    CYCLE();
    for(i = 0; i < 50 ; i++){
        // master writes data into slave        
	if(i == 0){
            top->axs_awid     = 1;
   	    top->axs_awaddr   = 53;
            top->axs_awlen    = 0;
            top->axs_awsize   = 2;
            top->axs_awburst  = 1; //incrementing address burst
            top->axs_awlock   = 0; //normal access
            top->axs_awcache  = 0; 
            top->axs_awprot   = 2; //normal, non-secure data access
            top->axs_awvalid  = 1;
	    CYCLE();
	}
	if(top->axs_awready){
	   CYCLE();
	   top->axs_awvalid = 0;
	}
        if(i == 2){
           top->axs_wid    = 1;
           top->axs_wdata  = 7;
           top->axs_wstrb  = 15;
           top->axs_wlast  = 1;
           top->axs_wvalid = 1; 
           CYCLE();
        }
	if(top->axs_wready){
           CYCLE();
	   top->axs_wvalid = 0;
           top->axs_wlast  = 0;   	
	}
	// master reads data from slave     
        if(i == 20){
	    top->axs_arid     = 1;
   	    top->axs_araddr   = 53;
            top->axs_arlen    = 0;
            top->axs_arsize   = 2;
            top->axs_arburst  = 1; //incrementing address burst
            top->axs_arlock   = 0; //normal access
            top->axs_arcache  = 0; 
            top->axs_arprot   = 2; //normal, non-secure data access
            top->axs_arvalid  = 1;
	    CYCLE();			
	}	
	if(top->axs_arready){
	   CYCLE();
	   top->axs_arvalid = 0;
	}
		 
	CYCLE();
    }  
    


 
    if (tfp)
        tfp->close();
    
    delete tfp;
    return 0;
}




