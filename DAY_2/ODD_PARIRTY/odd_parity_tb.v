`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 10:03:51
// Design Name: 
// Module Name: odd_parity_tb
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


module odd_parity_tb();


  // Testbench signals
  reg [7:0] data;
  wire parity;

  // Instantiate the design under test (DUT)
  odd_parity dut (
    .data(data),
    .parity(parity)
  );

  // Procedure to run multiple test cases
  initial begin
    $display("Time\tData\t\tParity");
    $monitor("%0t\t%b\t%b", $time, data, parity);

    // Test cases
    data = 8'b00000000; #10;  // Even number of 1s: 0, expect parity = 1
    data = 8'b00000001; #10;  // Odd number of 1s: 1, expect parity = 0
    data = 8'b00001111; #10;  // Even number of 1s: 4, expect parity = 1
    data = 8'b11111111; #10;  // Even number of 1s: 8, expect parity = 1
    data = 8'b10101010; #10;  // Even number of 1s: 4, expect parity = 1
    data = 8'b11110000; #10;  // Even number of 1s: 4, expect parity = 1
    data = 8'b00010001; #10;  // Odd number of 1s: 2, expect parity = 1

    $finish;
  end

endmodule


