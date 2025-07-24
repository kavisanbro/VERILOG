`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:24:58
// Design Name: 
// Module Name: full_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_full_adder;
  reg a, b, c;
  wire sum, carry;

  // Instantiate the full_adder
  full_adder fa_inst(.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

  initial begin
    $display("A B C | SUM CARRY");
    $display("--------------");

    a = 0; b = 0; c = 0; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    a = 0; b = 0; c = 1; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    a = 0; b = 1; c = 0; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    a = 0; b = 1; c = 1; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    a = 1; b = 0; c = 0; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    a = 1; b = 0; c = 1; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    a = 1; b = 1; c = 0; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    a = 1; b = 1; c = 1; #10;
    $display("%b %b %b |  %b    %b", a, b, c, sum, carry);

    $finish;
  end
endmodule

