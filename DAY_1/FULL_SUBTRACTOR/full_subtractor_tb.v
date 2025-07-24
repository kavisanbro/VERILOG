`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 15:48:25
// Design Name: Full Subtractor
// Module Name: full_subtractor_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for full subtractor
// 
// Dependencies: full_subtractor.v
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module full_subtractor_tb;
  // Inputs
  reg a, b, bin;

  // Outputs
  wire difference, borrow;

  // Instantiate the Full Subtractor module
  full_subtractor uut (
    .a(a),
    .b(b),
    .bin(bin),
    .difference(difference),
    .borrow(borrow)
  );

  // Apply test inputs
  initial begin
    $display("A B Bin | Difference Borrow");
    $display("--------------------------");

    a = 0; b = 0; bin = 0; #5;
    a = 0; b = 0; bin = 1; #5;
    a = 0; b = 1; bin = 0; #5;
    a = 0; b = 1; bin = 1; #5;
    a = 1; b = 0; bin = 0; #5;
    a = 1; b = 0; bin = 1; #5;
    a = 1; b = 1; bin = 0; #5;
    a = 1; b = 1; bin = 1; #5;

    $finish;
  end

  // Monitor outputs
  initial begin
    $monitor(" %b %b  %b  |     %b        %b", a, b, bin, difference, borrow);
  end
endmodule

