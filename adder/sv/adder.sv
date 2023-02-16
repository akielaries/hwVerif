module adder(
    input logic a,
    input logic b,
    input logic ci,
    output logic S,
    output logic co
);

    logic s1, s2, s3;
    
    assign s1 = a ^ b;
    assign s2 = a & b;
    assign s3 = s1 & ci;
    assign co = s2 | s3;
    assign S = s1 ^ ci;

endmodule

