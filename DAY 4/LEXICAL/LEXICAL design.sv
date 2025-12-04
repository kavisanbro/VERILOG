// Code your design here
module lexical_conversion;
  reg [3:0]a,b;
  wire [3:0]sum;
  assign sum = a + b;
    initial begin
    a = 4'b1010;
    b = 4'b1100;
    $display("A=%b B=%b SUM=%b",a,b,sum);
  end
  assign sum = a - b;
   initial begin
    a = 4'b1010;
    b = 4'b1100;
    $display("A=%b B=%b SUM=%b",a,b,sum);
  end
endmodule

  