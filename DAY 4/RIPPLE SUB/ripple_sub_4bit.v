// ripple_sub_4bit.v
// 4-bit Ripple Borrow Subtractor (structural)
module ripple_sub_4bit (
    input  wire [3:0] a,    // minuend
    input  wire [3:0] b,    // subtrahend
    input  wire       bin,  // borrow in (least-significant)
    output wire [3:0] diff, // difference
    output wire       bout  // final borrow out (MSB)
);

    wire b1, b2, b3; // internal borrows between stages

    // LSB stage [0]
    full_sub fs0 (
        .a(a[0]),
        .b(b[0]),
        .bin(bin),
        .diff(diff[0]),
        .bout(b1)
    );

    // stage [1]
    full_sub fs1 (
        .a(a[1]),
        .b(b[1]),
        .bin(b1),
        .diff(diff[1]),
        .bout(b2)
    );

    // stage [2]
    full_sub fs2 (
        .a(a[2]),
        .b(b[2]),
        .bin(b2),
        .diff(diff[2]),
        .bout(b3)
    );

    // MSB stage [3]
    full_sub fs3 (
        .a(a[3]),
        .b(b[3]),
        .bin(b3),
        .diff(diff[3]),
        .bout(bout)
    );

endmodule

