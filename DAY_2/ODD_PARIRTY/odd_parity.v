`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 09:58:41
// Design Name: 
// Module Name: odd_parity
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



module odd_parity (
  input [7:0] data,     // 8-bit input data
  output parity         // Odd parity bit
);

  // XOR all bits and invert the result to get odd parity
  assign parity = ~(^data);  // ^data gives even parity, ~ makes it odd

endmodule


