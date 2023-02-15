// test benchmark program on conditionals in the encoder file
module encoder_bench;
  reg [3:0] in;
  wire [2:0] out;

  encoder uut(
    .in(in),
    .out(out)
  );


  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, encoder_bench);

    in = 4'b0000;

  #20 in = 4'b0001;
	#20 in = 4'b0010;
	#20 in = 4'b0011;
	#20 in = 4'b0100;
	#20 in = 4'b0101;
	#20 in = 4'b0110;
	#20 in = 4'b0111;
	#20 in = 4'b1000;
	#20 in = 4'b1001;
	#20 in = 4'b1010;
	#20 in = 4'b1011;
	#20 in = 4'b1100;
	#20 in = 4'b1101;
	#20 in = 4'b1110;
	#20 in = 4'b1111;
	#40 ;
  end

  initial begin
	 $monitor("t=%3d in=%4b,out=%3b", $time, in, out);
  end


endmodule
