module arithmetic_ops(
    input  [7:0] a,
    input  [7:0] b,
    output [7:0] add,
    output [7:0] sub,
    output [15:0] mul,
    output [7:0] div,
    output [7:0] mod
);

    assign add = a + b;   // Addition
    assign sub = a - b;   // Subtraction
    assign mul = a * b;   // Multiplication
    assign div = a / b;   // Division
    assign mod = a % b;   // Modulus

endmodule

