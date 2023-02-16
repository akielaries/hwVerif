VERIL		= verilator
VERIL_FLAGS	= --binary --trace -j 0

.PHONY: all clean

all: sim

sim: simple_comp 
	./obj_dir/Vone_bit

simple_comp: one_bit.sv one_bit_tb.sv
	$(VERIL) $(VERIL_FLAGS) one_bit.sv one_bit_tb.sv 

clean:
	rm -rf obj_dir *.vcd

