`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2025 11:55:33 AM
// Design Name: 
// Module Name: half_sub_tb
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




module half_sub_tb;
reg a, b;
wire barrow, difference;
half_sub uut (
    .a(a),
    .b(b),
    .barrow(barrow),
    .difference(difference)
);
initial begin
    $dumpfile("half_sub.vcd");
    $dumpvars(0, half_sub_tb);
    $display("A B | Difference Barrow");
    $monitor("%b %b |     %b         %b", a, b, difference, barrow);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
end
endmodule
