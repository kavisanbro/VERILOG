`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 15:49:34
// Design Name: 
// Module Name: full_adder_4bit_rcd_tb
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
module full_adder_4bit_tb;
    reg [3:0] A, B;
    reg cin;
    wire [3:0] sum;
    wire cout;

    full_adder_4bit uut (
        .a(A),
        .b(B),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $monitor("Time=%0t | A=%b B=%b Cin=%b -> Sum=%b Cout=%b", $time, A, B, cin, sum, cout);

        A = 4'b0001; B = 4'b0010; cin = 0; #10;
        A = 4'b0101; B = 4'b0011; cin = 0; #10;
        A = 4'b1111; B = 4'b0001; cin = 0; #10;
        A = 4'b0101; B = 4'b0101; cin = 1; #10;

        $finish;
    end
endmodule





