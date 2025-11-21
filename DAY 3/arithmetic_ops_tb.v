`timescale 1ns/1ps

module arithmetic_ops_tb;

    reg  [7:0] a, b;
    wire [7:0] add, sub, div, mod;
    wire [15:0] mul;

    arithmetic_ops uut(a, b, add, sub, mul, div, mod);

    initial begin
        $dumpfile("arithmetic.vcd");
        $dumpvars(0, arithmetic_ops_tb);

        a = 20; b = 5; #10;
        a = 15; b = 3; #10;
        a = 8;  b = 2; #10;
        a = 50; b = 7; #10;

        $finish;
    end
endmodule

