`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 22:35:23
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


`timescale 1ns / 1ps

module mux8_1_tb;
  reg I0, I1, I2, I3, I4, I5, I6, I7;
  reg [2:0] S;
  wire Y;
   mux8_1 uut ( .Y(Y), .I0(I0), .I1(I1), .I2(I2),  .I3(I3), .I4(I4),   .I5(I5), .I6(I6),  .I7(I7),   .S(S));
   initial begin
    $display("Time\tSelect\tY");
    $display("------------------");
    I0 = 0;
    I1 = 1; 
    I2 = 0;
    I3 = 1;
    I4 = 0; 
    I5 = 1; 
    I6 = 0; 
    I7 = 1;
    S = 3'b000; #10;
    S = 3'b001; #10;
    S = 3'b010; #10;
    S = 3'b011; #10;
    S = 3'b100; #10;
    S = 3'b101; #10;
    S = 3'b110; #10;
    S = 3'b111; #10;

    $finish;
  end
  initial begin
    $monitor("%0t\t%03b\t%b", $time, S, Y);
  end
endmodule



