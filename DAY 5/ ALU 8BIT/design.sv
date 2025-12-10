module alu_8bit(
  input wire [7:0] a,
  input wire [7:0] b,
  input wire [3:0] opcode,
  output reg [7:0] result,
  output reg zero,
  output reg carry,
  output reg overflow
);

  reg [8:0] temp;

  always @(*) begin
    result   = 8'b0;
    zero     = 1'b0;
    carry    = 1'b0;
    overflow = 1'b0;

    case (opcode)

      4'b0000: begin              // ADD
        temp   = a + b;
        result = temp[7:0];
        carry  = temp[8];
      end

      4'b0001: begin              // SUB
        temp   = a - b;
        result = temp[7:0];
        carry  = temp[8];
      end

      4'b0010: begin              // AND
        result = a & b;
      end

      4'b0011: begin              // OR
        result = a | b;
      end

      4'b0100: begin              // XOR
        result = a ^ b;
      end

      4'b0101: begin              // SHIFT LEFT by 1
        result = a << 1;
      end

      4'b0110: begin              // SHIFT RIGHT by 1
        result = a >> 1;
      end

      4'b0111: begin              // GREATER THAN
        result = (a > b) ? 8'd1 : 8'd0;
      end

      4'b1000: begin              // LESS THAN
        result = (a < b) ? 8'd1 : 8'd0;
      end

      default: begin              // DEFAULT
        result = 8'h00;
        zero   = 1'b1;
      end

    endcase
  end

endmodule
