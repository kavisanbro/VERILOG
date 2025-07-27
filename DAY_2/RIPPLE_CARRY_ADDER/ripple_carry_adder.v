`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 16:06:45
// Design Name: 
// Module Name: ripple_carry_adder
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

module ripple_carry_adder(
  input [3:0] A, B,      // 4-bit inputs
  input Cin,             // Initial carry input
  output [3:0] Sum,      // 4-bit sum output
  output Cout            // Final carry output
);

  // Intermediate carry wires
  wire c1, c2, c3;

  // Bit 0
  assign Sum[0] = A[0] ^ B[0] ^ Cin;
  assign c1     = (A[0] & B[0]) | (A[0] & Cin) | (B[0] & Cin);

  // Bit 1
  assign Sum[1] = A[1] ^ B[1] ^ c1;
  assign c2     = (A[1] & B[1]) | (A[1] & c1) | (B[1] & c1);

  // Bit 2
  assign Sum[2] = A[2] ^ B[2] ^ c2;
  assign c3     = (A[2] & B[2]) | (A[2] & c2) | (B[2] & c2);

  // Bit 3
  assign Sum[3] = A[3] ^ B[3] ^ c3;
  assign Cout   = (A[3] & B[3]) | (A[3] & c3) | (B[3] & c3);

endmodule
