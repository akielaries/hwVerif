module simple_comparator(
    input input_a,
    input input_b,
    output res
    );
    
    assign res = (~input_a & ~input_b) | (input_a & input_b);

endmodule

