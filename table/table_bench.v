`timescale 1ns / 1ps

module table_bench;
    reg w;
    reg x;
    reg y;
    wire z;

    tables uut(.w(w), .x(x), .y(y), .z(z));

    initial begin
        w = 0;
        x = 0;
        y = 0;

        #110;
        #20 w = 1;
        #20 y = 1;
        #20 x = 1;
        #20 y = 0;
        #20;
        $dumpfile("table_bench.fst");
        $dumpvars(0);
    end

    initial begin
        $monitor("%d, %d, %d, %d \n", w, x, y, z);
        $display("TESTING TABLES");
    end

endmodule

