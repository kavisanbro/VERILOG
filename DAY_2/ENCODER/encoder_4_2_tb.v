`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 23:17:56
// Design Name: 
// Module Name: encoder_4_2_tb
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


module encoder_4_2_tb();

  // Inputs
  reg [3:0] I;

  // Outputs
  wire [1:0] y;

  // Instantiate the DUT (Device Under Test)
  encoder_4_2 uut (
    .I(I),
    .y(y)
  );

  // Stimulus block
  initial begin
    $display("Time\tInput I\tOutput y");
    $display("----------------------------");

    I = 4'b0001; #10;  // Input 0 active
    I = 4'b0010; #10;  // Input 1 active
    I = 4'b0100; #10;  // Input 2 active
    I = 4'b1000; #10;  // Input 3 active
    I = 4'b0000; #10;  // No input active (invalid case)
    I = 4'b1010; #10;  // Multiple active (priority or undefined case)

    $finish;
  end

  // Monitor block
  initial begin
    $monitor("%0t\t%b\t  %b", $time, I, y);
  end

endmodule

