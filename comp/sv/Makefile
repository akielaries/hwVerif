# Makefile for simple Verilator compilation

VERIL		= verilator
VERIL_FLAGS	= --binary --trace -j 0

.PHONY: all clean

all: sim

sim: simple_comp 
	./obj_dir/Vsimple

simple_comp: simple.sv simple_tb.sv
	$(VERIL) $(VERIL_FLAGS) simple.sv simple_tb.sv

clean:
	rm -rf obj_dir *.vcd

