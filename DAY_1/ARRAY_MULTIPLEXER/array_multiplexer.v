`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:16:10
// Design Name: 
// Module Name: array_multiplexer
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
/////////////////////////////////////////////////////////////////////////////
module array_mux8to1 (
  input [7:0] data_in,     // 8 input lines (D0 to D7)
  input [2:0] sel,         // 3-bit select signal
  output wire out          // Single-bit output
);

  // Output assigned based on selected input
  assign out = data_in[sel];

endmodule

