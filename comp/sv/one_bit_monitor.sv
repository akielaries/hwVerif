`timescale 1ns/1ps

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
        
        input_a = 0;
        input_b = 0;

        #20 input_b = 1;
        #20 input_a = 1;
            input_b = 0;
        #20 input_b = 1;
        #40;
    end

    initial begin
        $monitor("%d, %d = %d \n", input_a, input_b, res);
    end

    //initial begin
    //    $dumpfile("simple_comparator.vcd");
    //    $dumpvars(0, simple_comparator_tb);
    //end



endmodule

