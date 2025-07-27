`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 22:56:54
// Design Name: 
// Module Name: graytobinary_tb
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


module graytobinary_tb();

  // Inputs
  reg [3:0] G;

  // Outputs
  wire [3:0] B;

  // Instantiate the Unit Under Test (UUT)
  graytobinary uut (
    .B(B),
    .G(G)
  );

  // Apply test vectors
  initial begin
    $display("Time\tGray\tBinary");
    $display("--------------------------");

    G = 4'b0000; #10;
    G = 4'b0001; #10;
    G = 4'b0011; #10;
    G = 4'b0010; #10;
    G = 4'b0110; #10;
    G = 4'b0111; #10;
    G = 4'b0101; #10;
    G = 4'b0100; #10;
    G = 4'b1100; #10;
    G = 4'b1110; #10;

    $finish;
  end

  // Monitor signal changes
  initial begin
    $monitor("%0t\t%b\t%b", $time, G, B);
  end

endmodule

