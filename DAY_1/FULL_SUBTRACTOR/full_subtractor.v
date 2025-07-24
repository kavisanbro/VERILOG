`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 15:18:13
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
  input a,       // Minuend
  input b,       // Subtrahend
  input bin,     // Borrow-in
  output difference,
  output borrow
);

  // Difference output using XOR
  assign difference = a ^ b ^ bin;

  // Borrow output logic
  assign borrow = (~a & b) | ((~(a ^ b)) & bin);

endmodule




