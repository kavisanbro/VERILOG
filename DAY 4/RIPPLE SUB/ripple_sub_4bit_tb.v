// ripple_sub_4bit_tb.v
`timescale 1ns/1ps
module ripple_sub_4bit_tb;

    reg  [3:0] a, b;
    reg        bin;
    wire [3:0] diff;
    wire       bout;

    ripple_sub_4bit uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        $dumpfile("ripple_sub_4bit.vcd");
        $dumpvars(0, ripple_sub_4bit_tb);

        $display("t  | a    b    bin | diff  bout");
        $display("--------------------------------");
        // test vector sequence (LSB changes first)
        a = 4'b0101; b = 4'b0011; bin = 0; #10; // 5 - 3 = 2
        $display("%0t | %b %b %b  | %b   %b", $time, a, b, bin, diff, bout);

        a = 4'b1000; b = 4'b0010; bin = 1; #10; // 8 - 2 -1 = 5
        $display("%0t | %b %b %b  | %b   %b", $time, a, b, bin, diff, bout);

        a = 4'b0110; b = 4'b0111; bin = 0; #10; // 6 - 7 = borrow
        $display("%0t | %b %b %b  | %b   %b", $time, a, b, bin, diff, bout);

        a = 4'b0000; b = 4'b0001; bin = 1; #10; // 0 -1 -1 = borrow
        $display("%0t | %b %b %b  | %b   %b", $time, a, b, bin, diff, bout);

        a = 4'b1111; b = 4'b0101; bin = 0; #10; // 15 -5 = 10
        $display("%0t | %b %b %b  | %b   %b", $time, a, b, bin, diff, bout);

        $finish;
    end

endmodule

