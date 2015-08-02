TOP = demo_axi_memory
TESTBENCH = tb_main.cpp
VCD = trace.vcd

all: compile run simulation

compile:
	verilator  --cc --trace ${TOP}.sv --exe ${TESTBENCH} 
	make -j -C obj_dir/ -f V${TOP}.mk V${TOP} 

run:
	obj_dir/V${TOP}

simulation:
	gtkwave ${VCD} &

clean:
	rm -r obj_dir/
	rm -r ${VCD}
