`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 11:46:46
// Design Name: 
// Module Name: dmux_tb
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


module TB_DEMUX;

  // --- For 1x2 DEMUX
  reg a2, sel2;
  wire [1:0] y2;

  // --- For 1x4 DEMUX
  reg a4;
  reg [1:0] sel4;
  wire [3:0] y4;

  // --- For 1x8 DEMUX
  reg a8;
  reg [2:0] sel8;
  wire [7:0] y8;

  // Instantiate all demux modules
  demux1x2 d1(sel2, a2, y2);
  demux1x4 d2(sel4, a4, y4);
  demux1x8 d3(sel8, a8, y8);

  initial begin
    $display("------ Testing demux1x2 ------");
    a2 = 1;
    sel2 = 0; #1;
    $display("sel=%b | y = %b", sel2, y2);
    sel2 = 1; #1;
    $display("sel=%b | y = %b", sel2, y2);

    $display("\n------ Testing demux1x4 ------");
    a4 = 1;
    sel4 = 2'b00; #1; $display("sel=%b | y = %b", sel4, y4);
    sel4 = 2'b01; #1; $display("sel=%b | y = %b", sel4, y4);
    sel4 = 2'b10; #1; $display("sel=%b | y = %b", sel4, y4);
    sel4 = 2'b11; #1; $display("sel=%b | y = %b", sel4, y4);

    $display("\n------ Testing demux1x8 ------");
    a8 = 1;
    for (integer i = 0; i < 8; i = i + 1) begin
      sel8 = i[2:0]; #1;
      $display("sel=%b | y = %b", sel8, y8);
    end

    $finish;
  end
endmodule

