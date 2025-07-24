`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:25:33
// Design Name: 
// Module Name: universal_gates_tb
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


module TB_Gates;
  reg a, b;
  wire y, r, u, o, p, l, k;

  // Instantiate all gate modules
  andgate     u1(a, b, y);
  nandgate    u2(a, b, r);
  orgate      u3(a, b, u);
  xorgate     u4(a, b, o);
  notgate     u5(a, p);     // ? only one input
  norgate     u6(a, b, l);
  xnorgate    u7(a, b, k);

  initial begin
    $display("A B | AND NAND OR XOR NOT NOR XNOR");
    $display("----------------------------------");

    a = 0; b = 0; #1;
    $display("%b %b |  %b    %b    %b   %b   %b   %b    %b", a, b, y, r, u, o, p, l, k);

    a = 0; b = 1; #1;
    $display("%b %b |  %b    %b    %b   %b   %b   %b    %b", a, b, y, r, u, o, p, l, k);

    a = 1; b = 0; #1;
    $display("%b %b |  %b    %b    %b   %b   %b   %b    %b", a, b, y, r, u, o, p, l, k);

    a = 1; b = 1; #1;
    $display("%b %b |  %b    %b    %b   %b   %b   %b    %b", a, b, y, r, u, o, p, l, k);

    $finish;
  end
endmodule

