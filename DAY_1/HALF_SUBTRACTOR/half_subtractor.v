`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:33:29
// Design Name: 
// Module Name: half_subtractor
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


module half_subtractor (
  input a,     // Minuend
  input b,     // Subtrahend
  output difference,
  output borrow
);

  // Difference = a XOR b
  assign difference = a ^ b;

  // Borrow = NOT a AND b
  assign borrow = ~a & b;

endmodule

