`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:03:05
// Design Name: 
// Module Name: universal_gates
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


module andgate(input a,b,output y);
and d(y,a,b);
endmodule
module nandgate(input a,b,output r);
nand t(r,a,b);
endmodule
module orgate(input a,b,output u);
or h(u,a,b);
endmodule
module xorgate(input a,b,output o);
xor g(o,a,b);
endmodule
module notgate(input a,b,output p);
not v(p,a);
endmodule
module norgate(input a,b,output l);
nor k(l,a,b);
endmodule
module xnorgate(input a,b,output k);
xnor h(k,a,b);
endmodule     
 
