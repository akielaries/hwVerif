module adder_tb;

    // declare the signals used in the test bench
    logic a, b, ci, S, co;

    // instantiate the adder unit under test
    adder uut(a, b, ci, S, co);

    initial begin

        // loop through the 4 test cases
        // TODO: MAKE THIS DYNAMIC, STORE TEST CASES IN AN ARRAY?
        for (int i = 1; i <= 4; i++) begin
            case (i)
                1: begin
                    // test case 1: a=0, b=0, ci=0
                    a = 0;
                    b = 0;
                    ci = 0;
                    #10;
                    if (S !== 0 || co !== 0)
                        $error("[-] case 1 failed");
                end
                2: begin
                    // test case 2: a=1, b=0, ci=0
                    a = 1;
                    b = 0;
                    ci = 0;
                    #10;
                    if (S !== 1 || co !== 0)
                        $error("[-] case 2 failed");
                end
                3: begin
                    // test case 3: a=1, b=1, ci=0
                    a = 1;
                    b = 1;
                    ci = 0;
                    #10;
                    if (S !== 0 || co !== 1)
                        $error("[-] case 3 failed");
                end
                4: begin
                    // test case 4: a=1, b=1, ci=1
                    a = 1;
                    b = 1;
                    ci = 1;
                    #10;
                    if (S !== 1 || co !== 1)
                        $error("[-] case 4 failed");
                end
            endcase
        end

        // END TEST BENCH
        $display("[+] END OF TEST BENCH");
        $finish;
    end

endmodule

