`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:27:36
// Design Name: 
// Module Name: array_multiplexer_tb
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

module array_mux8to1_tb;

  // Inputs
  reg [7:0] data_in;
  reg [2:0] sel;

  // Output
  wire out;

  // Instantiate the MUX module
  array_mux8to1 uut (
    .data_in(data_in),
    .sel(sel),
    .out(out)
  );

  // Stimulus block
  initial begin
    $display("Time\tSel\tData_in\t\tOut");
    $display("------------------------------------");

    data_in = 8'b10101010; // Pattern: D7=1, D6=0, D5=1, ..., D0=0

    sel = 3'b000; #5; // out = D0 = 0
    sel = 3'b001; #5; // out = D1 = 1
    sel = 3'b010; #5; // out = D2 = 0
    sel = 3'b011; #5; // out = D3 = 1
    sel = 3'b100; #5; // out = D4 = 0
    sel = 3'b101; #5; // out = D5 = 1
    sel = 3'b110; #5; // out = D6 = 0
    sel = 3'b111; #5; // out = D7 = 1

    $finish;
  end

  // Monitor block
  initial begin
    $monitor("%0t\t%b\t%b\t%b", $time, sel, data_in, out);
  end

endmodule
