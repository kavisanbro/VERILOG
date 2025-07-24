`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 17:04:19
// Design Name: 
// Module Name: encoder_tb
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

module encoder_tb;

  // Inputs and outputs for both encoders
  reg [7:0] D;
  wire [2:0] y_bin;
  wire [2:0] y_pri;

  // Instantiate Binary Encoder
  binary_encoder binary_enc (
    .D(D),
    .y(y_bin)
  );

  // Instantiate Priority Encoder
  priority_encoder priority_enc (
    .D(D),
    .y(y_pri)
  );

  // Stimulus
  initial begin
    $display("Time\t\tD\t\tBinaryY\tPriorityY");
    $display("-----------------------------------------------");

    // Apply different single-bit inputs
    D = 8'b00000001; #5;
    D = 8'b00000010; #5;
    D = 8'b00000100; #5;
    D = 8'b00001000; #5;
    D = 8'b00010000; #5;
    D = 8'b00100000; #5;
    D = 8'b01000000; #5;
    D = 8'b10000000; #5;

    // Priority encoder test with multiple 1s
    D = 8'b11000000; #5;  // Priority to MSB
    D = 8'b00011000; #5;
    D = 8'b00000000; #5;  // Invalid case

    $finish;
  end

  // Monitor outputs
  initial begin
    $monitor("%0t\t%b\t%b\t   %b", $time, D, y_bin, y_pri);
  end

endmodule

