module block(
    input wire in_a,
    input wire clock,
    output reg res
);
    always @(posedge clock) begin
        res <= in_a;
    end

endmodule
