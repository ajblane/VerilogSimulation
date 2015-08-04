DIR = axi_gpgpu
TOP = axi_gpgpu
TESTBENCH = tb_main.cpp
VCD = trace.vcd
VERILATOR_FLAG = -Wno-WIDTH -Wno-CASEINCOMPLETE -Wno-fatal 

all: compile run 

compile:
	verilator ${VERILATOR_FLAG} -I${DIR} --cc --trace ${TOP}.sv --exe ${TESTBENCH} 
	make -j -C obj_dir/ -f V${TOP}.mk V${TOP} 

run:
	obj_dir/V${TOP}

gtkwave:
	gtkwave ${VCD} &

clean:
	rm -r obj_dir/
	rm -r ${VCD}
