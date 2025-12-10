// Testbench for 8-bit ALU - alu_tb.v
`timescale 1ns/1ps
module alu_tb;
reg [7:0] a,b;
reg [2:0] op;
wire [7:0] y;
wire carry;
wire zero;

alu uut(.a(a), .b(b), .op(op), .y(y), .carry(carry), .zero(zero));

initial begin
  $display("time\t a\t b\t op\t y\t carry zero");
  a = 8'h0; b = 8'h0; op = 3'b000;
  #10 a = 8'h0A; b = 8'h05; op = 3'b000; // add
  #10 op = 3'b001; // sub
  #10 op = 3'b010; // and
  #10 op = 3'b011; // or
  #10 op = 3'b100; // xor
  #10 op = 3'b101; // not
  #10 op = 3'b110; // shl
  #10 op = 3'b111; // shr
  #10 $finish;
end

initial begin
  $monitor("%0t\t %h\t %h\t %b\t %h\t %b %b", $time, a, b, op, y, carry, zero);
end

endmodule
