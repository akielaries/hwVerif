module tables(input w, input x, input y, output z);
    compare c0(z, w, x, y);
endmodule

primitive compare(output_x, input_a, input_b, input_c);
    output output_x;
    input input_a, input_b, input_c;

    table
        0   0   0 : 1;
        0   1   1 : 0;
        1   0   0 : 0;
        1   1   1 : 1;
    endtable
endprimitive

