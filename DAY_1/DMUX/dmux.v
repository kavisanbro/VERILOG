`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 11:44:27
// Design Name: 
// Module Name: dmux
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
module demux1x2(input sel, input a, output [1:0] y);
  assign y[0] = (~sel) & a;
  assign y[1] = sel & a;
endmodule
module demux1x4(input [1:0] sel, input a, output [3:0] y);
  assign y[0] = (~sel[1] & ~sel[0]) & a;
  assign y[1] = (~sel[1] &  sel[0]) & a;
  assign y[2] = ( sel[1] & ~sel[0]) & a;
  assign y[3] = ( sel[1] &  sel[0]) & a;
endmodule
module demux1x8(input [2:0] sel, input a, output [7:0] y);
  assign y[0] = (~sel[2] & ~sel[1] & ~sel[0]) & a;
  assign y[1] = (~sel[2] & ~sel[1] &  sel[0]) & a;
  assign y[2] = (~sel[2] &  sel[1] & ~sel[0]) & a;
  assign y[3] = (~sel[2] &  sel[1] &  sel[0]) & a;
  assign y[4] = ( sel[2] & ~sel[1] & ~sel[0]) & a;
  assign y[5] = ( sel[2] & ~sel[1] &  sel[0]) & a;
  assign y[6] = ( sel[2] &  sel[1] & ~sel[0]) & a;
  assign y[7] = ( sel[2] &  sel[1] &  sel[0]) & a;
endmodule

