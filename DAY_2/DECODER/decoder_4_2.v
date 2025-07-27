`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 23:23:25
// Design Name: 
// Module Name: decoder_4_2
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
`timescale 1ns / 1ps

module decoder_4_2(
  output [3:0] I,
  input [1:0] S
);

  assign I[0] = ~S[1] & ~S[0];
  assign I[1] = ~S[1] &  S[0];
  assign I[2] =  S[1] & ~S[0];
  assign I[3] =  S[1] &  S[0];

endmodule


