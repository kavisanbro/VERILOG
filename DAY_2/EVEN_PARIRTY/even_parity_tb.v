`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 23:03:28
// Design Name: 
// Module Name: even_parity_tb
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

module even_parity_tb;

  // Inputs
  reg [8:0] x;

  // Output
  wire y;

  // Instantiate the Unit Under Test (UUT)
  even_parity uut (
    .x(x),
    .y(y)
  );

  // Test stimulus
  initial begin
    $display("Time\tInput x\t\tParity (y)");
    $display("-----------------------------------");

    x = 9'b000000000; #10;  // Even number of 1s ? y = 0
    x = 9'b000000001; #10;  // Odd number of 1s  ? y = 1
    x = 9'b101010101; #10;  // Count of 1s = 5 ? y = 1
    x = 9'b111111111; #10;  // Count of 1s = 9 ? y = 1
    x = 9'b111111110; #10;  // Count of 1s = 8 ? y = 0
    x = 9'b100000000; #10;  // Only 1 one ? y = 1
    x = 9'b000011110; #10;  // Count of 1s = 4 ? y = 0

    $finish;
  end

  // Monitor changes
  initial begin
    $monitor("%0t\t%b\t\t%b", $time, x, y);
  end

endmodule


