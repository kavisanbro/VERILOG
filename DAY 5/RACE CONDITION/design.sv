module race_contidion(
  input  clk,
  input  c,
  output reg a,
  output reg b
);
  always @(posedge clk) begin
    a = b;   
  end
  always @(posedge clk) begin
    b = c;   
  end
endmodule
