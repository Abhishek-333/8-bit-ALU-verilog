// 8-bit ALU - alu.v
module alu (
    input  wire [7:0] a,
    input  wire [7:0] b,
    input  wire [2:0] op,    // operation select
    output reg  [7:0] y,
    output reg        carry,
    output reg        zero
);

always @(*) begin
    carry = 0;
    case (op)
        3'b000: {carry, y} = a + b;       // add
        3'b001: {carry, y} = a - b;       // subtract (wrap)
        3'b010: y = a & b;                // and
        3'b011: y = a | b;                // or
        3'b100: y = a ^ b;                // xor
        3'b101: y = ~a;                   // not a
        3'b110: y = a << 1;               // shift left
        3'b111: y = a >> 1;               // shift right
        default: y = 8'b0;
    endcase
    zero = (y == 8'b0);
end

endmodule
