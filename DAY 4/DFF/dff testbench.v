module dff_tb();
  reg clk,rst_n;
  reg d;
  reg q;
   dff dut(clk, rst_n, d, q);
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(1);
  end 
  always #2 clk = ~clk;
  initial begin
    clk<=0;rst_n=0;
    d=0;
    #3 rst_n = 1;
    repeat(6)begin
      d=$urandom_range(0,1);
      #3;
    end
    rst_n=0; #3;
    rst_n=1;
    repeat (6)begin
    d = $urandom_range(0,1);

      #3;
    end
    $finish;
  end
endmodule