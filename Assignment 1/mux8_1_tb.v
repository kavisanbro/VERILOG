`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 10:24:05
// Design Name: 
// Module Name: mux8_1_tb
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


module mux8_1_tb();
reg a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2;
wire y;
mux8_1 uut(
.a0(a0),
.a1(a1),
.a2(a2),
.a3(a3),
.a4(a4),
.a5(a5),
.a6(a6),
.a7(a7),
.s0(s0),
.s1(s1),
.s2(s2), 
.y(y)
);
initial begin
a0=0;a1=0;a2=1;a3=1;a4=0;a5=0;a6=1;a7=1;   #10
s2=0;s1=0;s0=0; #10
s2=0;s1=0;s0=1; #10
s2=0;s1=1;s0=0; #10
s2=0;s1=1;s0=1; #10
s2=1;s1=0;s0=0; #10
s2=1;s1=0;s0=1; #10
s2=1;s1=1;s0=0; #10
s2=1;s1=1;s0=1; #10
$finish;
end 
endmodule  



