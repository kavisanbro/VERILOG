`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2025 12:15:38 PM
// Design Name: 
// Module Name: full_sub
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


module full_sub(
input a,b,c,d,
output f
    );
    wire w1,w2,w3;
    and a1(a,b,w1);
    xor x1(w1,w2,w3);
    or k1(c,d,w3);
    and a2(w2,w3,f);
endmodule
