/*
 * 1-bit binary comparator
 *
 * RANGE :
 *      0 TO 2^n - 1
 *      0 TO 2^1 - 1 = 1
 *      0 TO 1 OR 0 & 1 ONLY
 */

`timescale 1ns/1ps

module simple_comparator(
    input logic input_a,
    input logic input_b,
    output logic res
    );
    
    assign res = (~input_a & ~input_b) | (input_a & input_b);
    //assign res = (input_a == input_b) ? 1'b1 : 1'b0;

endmodule

