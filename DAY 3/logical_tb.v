`timescale 1ns/1ps
module logical_tb;

    reg a, b;
    wire and_out, or_out, not_out;

    logical_tb uut(a, b, and_out, or_out, not_out);

    initial begin
        $dumpfile("logical_ops.vcd");
        $dumpvars(0, logical_ops_tb);

        
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end
endmodule

