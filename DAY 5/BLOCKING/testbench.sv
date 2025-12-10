module alu_blocking_tb;
  reg [3:0] a, b;
  reg [1:0] sel;         
  wire [3:0] out;
  alu_blocking dut(
    .a(a),
    .b(b),
    .sel(sel),
    .out(out)
  );
  initial begin
    $dumpfile("alu_blocking.vcd");
    $dumpvars(0, alu_blocking_tb);   
  end
  initial begin
    a = 4'b0011;
    b = 4'b0101;
    sel = 2'b00;
    #10;
    a = 4'b1100;
    b = 4'b0011;
    sel = 2'b01;
    #10;
    a = 4'b1010;
    b = 4'b0101;
    sel = 2'b10;
    #10;
    a = 4'b1010;
    b = 4'b0101;
    sel = 2'b11;
    #10;
    repeat(5) begin
      a = $urandom_range(0,15);
      b = $urandom_range(0,15);
      sel = $urandom_range(0,3);
      #10;
    end
    $finish;
  end
endmodule
