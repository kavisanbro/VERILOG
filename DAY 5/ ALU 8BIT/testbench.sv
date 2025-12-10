`timescale 1ns/1ps

module alu_8bit_tb;

    reg  [7:0] a, b;
    reg  [3:0] opcode;
    wire [7:0] result;
    wire zero, carry, overflow;

    // instantiate DUT
    alu_8bit uut (
        .a(a),
        .b(b),
        .opcode(opcode),
        .result(result),
        .zero(zero),
        .carry(carry),
        .overflow(overflow)
    );

    initial begin
        $dumpfile("alu_8bit_tb.vcd");
        $dumpvars(0, alu_8bit_tb);

        // Header
        $display("time(ns) | opcode |    a    |    b    | result | zero carry");
        $display("-----------------------------------------------------------");

        // Test ADD
        a = 8'd10;  b = 8'd20;  opcode = 4'b0000; #10;
        $display("%8t | 0000   | %3d (0x%0h) | %3d (0x%0h) | %3d (0x%0h) |   %b    %b", 
                 $time, a, a, b, b, result, result, zero, carry);

        // Test SUB
        a = 8'd30;  b = 8'd10;  opcode = 4'b0001; #10;
        $display("%8t | 0001   | %3d (0x%0h) | %3d (0x%0h) | %3d (0x%0h) |   %b    %b", 
                 $time, a, a, b, b, result, result, zero, carry);

        // Test AND
        a = 8'b11001100; b = 8'b10101010; opcode = 4'b0010; #10;
        $display("%8t | 0010   | 0x%0h     | 0x%0h     | 0x%0h     |   %b    %b", 
                 $time, a, b, result, zero, carry);

        // Test OR
        a = 8'b11001100; b = 8'b00111100; opcode = 4'b0011; #10;
        $display("%8t | 0011   | 0x%0h     | 0x%0h     | 0x%0h     |   %b    %b", 
                 $time, a, b, result, zero, carry);

        // Test XOR
        a = 8'b11110000; b = 8'b10101010; opcode = 4'b0100; #10;
        $display("%8t | 0100   | 0x%0h     | 0x%0h     | 0x%0h     |   %b    %b", 
                 $time, a, b, result, zero, carry);

        // SHIFT LEFT
        a = 8'b00001111; b = 8'b0; opcode = 4'b0101; #10;
        $display("%8t | 0101   | 0x%0h     | -        | 0x%0h     |   %b    %b", 
                 $time, a, result, zero, carry);

        // SHIFT RIGHT
        a = 8'b11110000; opcode = 4'b0110; #10;
        $display("%8t | 0110   | 0x%0h     | -        | 0x%0h     |   %b    %b", 
                 $time, a, result, zero, carry);

        // GREATER THAN
        a = 8'd50; b = 8'd30; opcode = 4'b0111; #10;
        $display("%8t | 0111   | %3d (0x%0h) | %3d (0x%0h) | %3d (0x%0h) |   %b    %b", 
                 $time, a, a, b, b, result, result, zero, carry);

        // LESS THAN
        a = 8'd20; b = 8'd40; opcode = 4'b1000; #10;
        $display("%8t | 1000   | %3d (0x%0h) | %3d (0x%0h) | %3d (0x%0h) |   %b    %b", 
                 $time, a, a, b, b, result, result, zero, carry);

        // ZERO case
        a = 8'd0; b = 8'd0; opcode = 4'b0000; #10;
        $display("%8t | 0000   | %3d (0x%0h) | %3d (0x%0h) | %3d (0x%0h) |   %b    %b", 
                 $time, a, a, b, b, result, result, zero, carry);

        $display("Test Completed");
        $finish;
    end
endmodule
