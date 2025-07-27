`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 22:30:44
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
///////////////////////////////////////////////////////////////////////////////
module mux8_1(
output Y,
input I0,
input I1,
input I2,
input I3,
input I4,
input I5,
input I6,
input I7,
input [2:0]S   );
assign Y=S[2]?(S[1]?(S[0]?I7:I6):(S[0]?I5:I4)):(S[1]?(S[0]?I3:I2):(S[0]?I1:I0));
endmodule
   
