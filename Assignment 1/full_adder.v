`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 12:05:31
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input a,b,c,
output sum,carry);
    wire w1,w2,w3;
    and and1 (w3,w1,c);
    and and2(w2,a,b);
    xor xor1 (sum,w1,c);
    xor xor2(w1,a,b);
    or gate(carry,w2,w3);
  
endmodule
