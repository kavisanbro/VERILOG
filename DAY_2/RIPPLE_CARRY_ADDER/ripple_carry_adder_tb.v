`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 16:29:28
// Design Name: 
// Module Name: ripple_carry_adder_tb
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

module ripple_carry_adder_tb;

  // Inputs
  reg [3:0] A, B;
  reg Cin;

  // Outputs
  wire [3:0] Sum;
  wire Cout;

  // Instantiate the design under test (DUT)
  ripple_carry_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
  );

  // Stimulus
  initial begin
    $display("Time\tA\tB\tCin\t|\tSum\tCout");
    $display("--------------------------------------------------");

    A = 4'b0000; B = 4'b0000; Cin = 0; #10;
    A = 4'b0001; B = 4'b0010; Cin = 0; #10;
    A = 4'b0011; B = 4'b0101; Cin = 1; #10;
    A = 4'b1010; B = 4'b0101; Cin = 0; #10;
    A = 4'b1111; B = 4'b1111; Cin = 0; #10;
    A = 4'b1111; B = 4'b1111; Cin = 1; #10;

    $finish;
  end

  // Monitor signal changes
  initial begin
    $monitor("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);
  end

endmodule



   
