// full_sub.v
// 1-bit Full Subtractor
module full_sub (
    input  wire a,    // minuend bit
    input  wire b,    // subtrahend bit
    input  wire bin,  // borrow in
    output wire diff, // difference bit
    output wire bout  // borrow out
);
    // diff = a ^ b ^ bin
    assign diff = a ^ b ^ bin;

    // borrow-out: bout = (~a & b) | ((~a ^ b) & bin)
    // alternative simpler expression: bout = (~a & (b | bin)) | (b & bin)
    assign bout = (~a & b) | ((~a ^ b) & bin);

endmodule

