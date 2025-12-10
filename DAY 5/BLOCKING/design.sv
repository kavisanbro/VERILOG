module alu_blocking (
    input  [3:0] a, b,
    input  [1:0] sel,
    output reg [3:0] out
);

  always @(*) begin     
    if (sel == 2'b00)
      out = a + b;      
    else if (sel == 2'b01)
      out = a - b;
    else if (sel == 2'b10)
      out = a & b;
    else
      out = a | b;
  end

endmodule

