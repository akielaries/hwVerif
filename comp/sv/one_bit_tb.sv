`timescale 1ns/1ps
// keep in mind
/*
* 00- **** = 1 <-
* 01- ***1 = 0
* 02- **10 = 0
* 03- **11 = 0
* 04- *100 = 0
* 05- *101 = 1 <-
* 06- *110 = 0
* 07- *111 = 0
* 08- 1000 = 0
* 09- 1001 = 0
* 10- 1010 = 1 <-
* 11- 1011 = 0
* 12- 1100 = 0
* 13- 1101 = 0
* 14- 1110 = 0
* 15- 1111 = 1 <-
*/


module simple_comparator_tb;
    reg input_a;
    reg input_b;
    wire res;

    simple_comparator uut(
        .input_a(input_a),
        .input_b(input_b),
        .res(res)
    );

    initial begin
        // Test case 1
        input_a = 0;
        input_b = 0;
        #20;
        if (res !== 1) $display("case 1 failed");

        // Test case 2
        input_a = 0;
        input_b = 1;
        #20;
        if (res !== 0) $display("case 2 failed");

        // Test case 3
        input_a = 1;
        input_b = 0;
        #20;
        if (res !== 0) $display("case 3 failed");

        // Test case 4
        input_a = 1;
        input_b = 1;
        #20;
        if (res !== 1) $display("case 4 failed");

        #40;
        $finish;
    end 

    initial begin
        $monitor("%d, %d = %d \n", input_a, input_b, res);
    end 

    initial begin
        $dumpfile("simple_comparator.vcd");
        $dumpvars(0, simple_comparator_tb);
    end 

endmodule

