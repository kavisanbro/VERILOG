`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:36:38
// Design Name: 
// Module Name: half_subtractor_tb
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


`timescale 1ns / 1ps

module half_subtractor_tb;

  // Declare inputs as reg
  reg a, b;

  // Declare outputs as wire
  wire difference, borrow;

  // Instantiate the half_subtractor module
  half_subtractor uut (
    .a(a),
    .b(b),
    .difference(difference),
    .borrow(borrow)
  );

  // Apply test inputs
  initial begin
    $display("A B | Difference Borrow");
    $display("----------------------");

    a = 0; b = 0; #5;
    a = 0; b = 1; #5;
    a = 1; b = 0; #5;
    a = 1; b = 1; #5;

    $finish;
  end

  // Monitor output changes
  initial begin
    $monitor(" %b %b |     %b        %b", a, b, difference, borrow);
  end

endmodule

