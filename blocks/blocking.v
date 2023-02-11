module block();
reg a, b, c, d, e, f;
// Blocking assignments
initial begin
    $display("a b c d e f at time %0t", $time);
    $monitor("%d %d %d %d %d %d at time %0t", a, b, c, d, e, f, $time);

    // sim assigns 1 to a at time 10
    //  - #<val> represents a delay
    a = #5 1'b1;
    // assign 0 to b @ 30
    b = #20 1'b0;
    // assign 1 to c @ 70
    c = #40 1'b1;
    // assign 1 to d @ 120
    d = #50 1'b0;
    e = #55 1'b1; 
    f = #60 1'b0;

end
endmodule

