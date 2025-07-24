`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 12:44:25
// Design Name: 
// Module Name: half_adder_tb
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


module TB_half_adder;

  reg A, B;              // inputs
  wire sum, carry;       // outputs

  // Instantiate half adder
  half_adder uut (.A(A), .B(B), .sum(sum), .carry(carry));

  initial begin
    $display("A B | SUM CARRY");
    $display("----------------");

    A = 0; B = 0; #1;
    $display("%b %b |  %b     %b", A, B, sum, carry);

    A = 0; B = 1; #1;
    $display("%b %b |  %b     %b", A, B, sum, carry);

    A = 1; B = 0; #1;
    $display("%b %b |  %b     %b", A, B, sum, carry);

    A = 1; B = 1; #1;
    $display("%b %b |  %b     %b", A, B, sum, carry);

    $finish;
  end
endmodule

