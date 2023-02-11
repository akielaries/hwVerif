module block_bench;
    reg clock = 0;
    reg in_a = 1;
    wire res;

    block uut(
        .in_a(in_a),
        .clock(clock),
        .res(res)
    );
    always #1 clock = ~clock;
    always #5 in_a = ~in_a;
    
    initial begin
        $dumpfile("block_bench.vcd");
        $dumpvars(0, block_bench);

        $monitor($time, " clock = %1b res = %4b", clock, in_a, res);
        #99 $display("wrapping up");
        #1 $finish;
    end

endmodule
