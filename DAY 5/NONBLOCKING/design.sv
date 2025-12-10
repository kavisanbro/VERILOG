module nonblocking_shift (
    input  wire clk,
    input  wire en,
    input  wire in,
    output reg  q0,
    output reg  q1
);
    always @(posedge clk) begin
        if (en) begin
            q1 <= q0; 
            q0 <= in; 
        end
    end
endmodule