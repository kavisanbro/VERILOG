`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 15:34:45
// Design Name: 
// Module Name: fulladder_halfadder
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


module fulladder_halfadder(
input x,y,z,
output sum,carry
);
wire w1,w2,w3;
  
    and and1 (w3,w1,z);
    and and2(w2,x,y);
    xor xor1 (sum,w1,z);
    xor xor2(w1,x,y);
    or gate(carry,w2,w3);
endmodule
