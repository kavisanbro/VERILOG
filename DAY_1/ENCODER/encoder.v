`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:55:54
// Design Name: 
// Module Name: encoder
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



module binary_encoder(
  input [7:0] D,
  output [2:0] y);
  
  assign y[2] = D[4] | D[5] | D[6] | D[7];
  assign y[1] = D[2] | D[3] | D[6] | D[7];
  assign y[0] = D[1] | D[3] | D[5] | D[7];
endmodule
  module priority_encoder(
  input [7:0] D,
  output reg [2:0] y);
  
  always@(D) begin
    casex(D)
      8'b1xxx_xxxx: y = 3'b111;
      8'b01xx_xxxx: y = 3'b110;
      8'b001x_xxxx: y = 3'b101;
      8'b0001_xxxx: y = 3'b100;
      8'b0000_1xxx: y = 3'b011;
      8'b0000_01xx: y = 3'b010;
      8'b0000_001x: y = 3'b001;
      8'b0000_0001: y = 3'b000;
      default: $display("Invalid data received");
    endcase
  end
endmodule
