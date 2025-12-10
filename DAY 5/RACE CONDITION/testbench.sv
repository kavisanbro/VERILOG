module race_contidion_tb;

  reg clk;
  reg c;
  wire a, b;
  race_contidion dut (
    .clk(clk),
    .c(c),
    .a(a),
    .b(b)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    c = 1;    
    #10 c = 0;
    #20 c = 1;
    #30 c = 0;
    #40 c = 1;
    $finish;
  end
  initial begin
    $dumpfile("race_condition.vcd");
    $dumpvars(0, race_contidion_tb);
  end
endmodule
