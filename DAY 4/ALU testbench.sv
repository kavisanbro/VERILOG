// Code your testbench here
// or browse Examples
module alu_tb;
  reg[3:0]a,b;
  reg[3:0]op;
  wire[4:0]y;
  alu dut(
    .a(a),
    .b(b),
    .op(op),
    .y(y));
     initial begin
               $monitor("TIME=%0t | a=%b b=%b op=%b -> y=%b", $time, a, b, op, y);

                a = 4'b0101; b = 4'b0011; op = 3'b000; #10;   

                a = 4'b1000; b = 4'b0011; op = 3'b001; #10;   

                a = 4'b1100; b = 4'b1010; op = 3'b010; #10;

                a = 4'b1100; b = 4'b1010; op = 3'b011; #10;

                a = 4'b1100; b = 4'b1010; op = 3'b100; #10;

                a = 4'b1010; op = 3'b101; #10;
             
                a = 4'b0110; b = 4'b0011; op = 3'b110; #10;  

                $finish;
    end

endmodule
