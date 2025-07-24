`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 11:04:06
// Design Name: 
// Module Name: mux_tb
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
module TB_Mux;

  // For mux2x1
  reg a, b, sel;
  wire y2;

  // For mux4x1
  reg [3:0] in4;
  reg [1:0] sel4;
  wire y4;

  // For mux8x1_logic
  reg a8, b8, c8, d8, e8, f8, g8, h8;
  reg [2:0] sel8;
  wire y8;

  // Instantiate mux2x1
  mux2x1 m2(a, b, sel, y2);

  // Instantiate mux4x1
  mux4x1 m4(in4, sel4, y4);

  // Instantiate mux8x1_logic
  mux8x1_logic m8(a8, b8, c8, d8, e8, f8, g8, h8, sel8, y8);

  initial begin
    $display("------ Testing mux2x1 ------");
    a = 0; b = 1; sel = 0; #1;
    $display("sel=%b | y = %b (expected a=%b)", sel, y2, a);
    sel = 1; #1;
    $display("sel=%b | y = %b (expected b=%b)", sel, y2, b);

    $display("\n------ Testing mux4x1 ------");
    in4 = 4'b1010;
    sel4 = 2'b00; #1;
    $display("sel=%b | y = %b (expected in[0]=%b)", sel4, y4, in4[0]);
    sel4 = 2'b01; #1;
    $display("sel=%b | y = %b (expected in[1]=%b)", sel4, y4, in4[1]);
    sel4 = 2'b10; #1;
    $display("sel=%b | y = %b (expected in[2]=%b)", sel4, y4, in4[2]);
    sel4 = 2'b11; #1;
    $display("sel=%b | y = %b (expected in[3]=%b)", sel4, y4, in4[3]);

    $display("\n------ Testing mux8x1_logic ------");
    // Set values: a=0, b=1, c=0, ..., h=1
    {h8, g8, f8, e8, d8, c8, b8, a8} = 8'b10101010;

    for (integer i = 0; i < 8; i = i + 1) begin
      sel8 = i[2:0]; #1;
      $display("sel=%b | y = %b", sel8, y8);
    end

    $finish;
  end
endmodule

