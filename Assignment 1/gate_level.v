`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 15:12:29
// Design Name: 
// Module Name: gate_level
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


module gate_level(
input a,b,
output f
    );
    wire w;
    supply1 VDD;
    supply0 GND;
    pmos p1(f,VDD,a);
    pmos p2(f,VDD,b);
    nmos n1(b,GND,w);
    nmos n2(w,a,f); 
endmodule
