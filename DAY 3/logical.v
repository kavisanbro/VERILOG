module logical(
input[7:0]a,
input[7;0]b,
output and_out,
output or_out,
output not_out);
assign and_out = a&&b;
assign or_out = a||b;
assign not_out = !a;
endmodule

