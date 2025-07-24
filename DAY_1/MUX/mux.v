`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 11:00:07
// Design Name: 
// Module Name: mux
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


module mux2x1(input a, b, sel, output y);
  assign y = sel ? b : a;
endmodule
module mux4x1(input [3:0] in, input [1:0] sel, output y);
  assign y = in[sel];
endmodule
module mux8x1_logic(
  input a, b, c, d, e, f, g, h,
  input [2:0] sel,
  output y
);
  assign y = (!sel[2] & !sel[1] & !sel[0] & a) |
             (!sel[2] & !sel[1] &  sel[0] & b) |
             (!sel[2] &  sel[1] & !sel[0] & c) |
             (!sel[2] &  sel[1] &  sel[0] & d) |
             ( sel[2] & !sel[1] & !sel[0] & e) |
             ( sel[2] & !sel[1] &  sel[0] & f) |
             ( sel[2] &  sel[1] & !sel[0] & g) |
             ( sel[2] &  sel[1] &  sel[0] & h);
endmodule

