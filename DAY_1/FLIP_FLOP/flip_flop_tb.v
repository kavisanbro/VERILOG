`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:38:41
// Design Name: 
// Module Name: flip_flop_tb
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


module tb_all_flipflops;
  // Common signals
  reg clk, rst_n;

  // SR flip-flop signals
  reg s, r;
  wire q_sr, qbar_sr;

  // JK flip-flop signals
  reg j, k;
  wire q_jk, qbar_jk;

  // T flip-flop signals
  reg t;
  wire q_t, qbar_t;

  // Instantiate SR Flip-Flop
  SR_flipflop sr_inst(
    .clk(clk), .rst_n(rst_n),
    .s(s), .r(r),
    .q(q_sr), .q_bar(qbar_sr)
  );

  // Instantiate JK Flip-Flop
  JK_flipflop jk_inst(
    .clk(clk), .rst_n(rst_n),
    .j(j), .k(k),
    .q(q_jk), .q_bar(qbar_jk)
  );

  // Instantiate T Flip-Flop
  T_flipflop t_inst(
    .clk(clk), .rst_n(rst_n),
    .t(t),
    .q(q_t), .q_bar(qbar_t)
  );

  // Clock generation
  always #5 clk = ~clk;  // 10 time unit period

  initial begin
    // Initialize all inputs
    clk = 0;
    rst_n = 0;
    s = 0; r = 0;
    j = 0; k = 0;
    t = 0;

    $display("Starting Flip-Flop Test...");
    #10 rst_n = 1;  // Release reset

    // ---------- SR Flip-Flop Test ----------
    $display("\nTesting SR Flip-Flop:");
    s = 0; r = 0; #10;  // No change
    s = 1; r = 0; #10;  // Set
    s = 0; r = 1; #10;  // Reset
    s = 1; r = 1; #10;  // Invalid

    // ---------- JK Flip-Flop Test ----------
    $display("\nTesting JK Flip-Flop:");
    j = 0; k = 0; #10;  // No change
    j = 1; k = 0; #10;  // Set
    j = 0; k = 1; #10;  // Reset
    j = 1; k = 1; #10;  // Toggle

    // ---------- T Flip-Flop Test ----------
    $display("\nTesting T Flip-Flop:");
    t = 0; #10;  // No change
    t = 1; #10;  // Toggle
    t = 1; #10;  // Toggle again
    t = 0; #10;  // No change

    $finish;
  end

  // Monitor signals
  initial begin
    $monitor("Time=%0t | SR: s=%b r=%b -> q=%b | JK: j=%b k=%b -> q=%b | T: t=%b -> q=%b", 
              $time, s, r, q_sr, j, k, q_jk, t, q_t);
  end
endmodule

