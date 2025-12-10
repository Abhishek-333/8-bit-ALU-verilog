![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![VLSI](https://img.shields.io/badge/Domain-VLSI-orange)

# 8-bit-ALU-Verilog

Simple 8-bit ALU implemented in Verilog.

## Description
Supports add, subtract, and, or, xor, not, shl, shr.

## Files
- `alu.v` - ALU Verilog RTL
- `alu_tb.v` - Simple testbench

## How to run
Use any simulator (ModelSim, Icarus Verilog):
```bash
iverilog -o alu_tb.vvp alu.v alu_tb.v
vvp alu_tb.vvp

