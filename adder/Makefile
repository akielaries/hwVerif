GHDL = ghdl
SRC = adder.vhd
TEST = adder_tb.vhd
BNCH = adder_tb
EXEC = $(BNCH)

.PHONY: all clean

all: $(EXEC)

$(EXEC): $(TEST) $(SRC)
	$(GHDL) -a $(TEST) $(SRC)
	$(GHDL) -e $(BNCH)
	$(GHDL) -r $(BNCH)

simulate:
	$(GHDL) -r $(BNCH) --fst=adder_dump.fst
	gtkwave adder_dump.fst

clean:
	$(GHDL) --clean
	rm -f $(EXEC) *.cf *.vcd *.fst
