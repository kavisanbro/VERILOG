`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 10:10:07
// Design Name: 
// Module Name: mux8_1
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


module mux8_1(
input a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2,
output y);
wire w1,w2;
 assign w1=~s0&~s1&a0|~s0&s1&a1|s0&~s1&a2|s0&s1&a3;
 assign w2=~s0&~s1&a4|~s0&s1&a5|s0&~s1&a6|s0&s1&a7;
 assign y=w1+w2;
 endmodule



