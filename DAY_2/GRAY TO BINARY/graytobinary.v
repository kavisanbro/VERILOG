`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 22:53:04
// Design Name: 
// Module Name: graytobinary
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


module graytobinary(
output [3:0]B,
input [3:0]G
    );
 assign B[3]=G[3];
 assign B[2]=G[2]^B[3];
 assign B[1]=G[1]^B[2];
 assign B[0]=G[0]^B[1];
endmodule
