`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 15:18:36
// Design Name: 
// Module Name: gate_level_tb
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


module gate_level_tb;
reg a,b;
wire f;
gate_level uut(
.a(a),
.b(b),
.f(f)
);
initial begin
 $monitor("Time=%0t | a=%b b=%b => f=%b", $time, a, b, f);
a=0;b=0;  #10
a=0;b=1;  #10
a=1;b=0;  #10
a=1;b=1;  #10
$finish;
end
endmodule


