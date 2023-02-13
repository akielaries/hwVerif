/**
* simple adder
*/

module adder(input a, b, ci, output S, cn);
    wire w1, w2, w3;
    xor u1(w1, a, b);
    and u2(w2, a, b);
    and u3(w3, w1, ci);
    or  u4(cn, w2, w3);
    xor u5(S, w1, ci);

endmodule

