
module fulladder_halfadder_tb;
  reg x, y, z;
  wire sum, carry;
  integer i;

  fulladder_halfadder uut(
    .x(x),
    .y(y),
    .z(z),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    $display("x y z | sum carry");
    $display("-----------------");
    for(i = 0; i < 8; i = i + 1) begin
      {x, y, z} = i;
      #10;
      $display("%b %b %b |  %b    %b", x, y, z, sum, carry);
    end
    $finish;
  end
endmodule

 



