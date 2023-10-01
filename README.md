This repository contains Verilog code for various digital circuits. Here's a brief overview of each module:

### 1. Half Adder (1-bit)

The Half Adder is a basic digital circuit used for adding two 1-bit binary numbers. It has two inputs, 'a' and 'b', and two outputs, 'sum' and 'cout' (carry out).

- `a` and `b` are the input bits to be added.
- `sum` is the sum of `a` and `b`.
- `cout` is the carry-out, which is 1 if the sum `a + b` produces a carry.

The Verilog code for the Half Adder is simple and directly implements these logical operations. It uses an XOR gate (`^`) to calculate the sum and an AND gate (`&`) to calculate the carry-out.

### 2. Full Adder (1-bit)

The Full Adder is an extension of the Half Adder, capable of adding two 1-bit numbers along with a carry-in bit. It has three inputs, 'a', 'b', and 'cin' (carry-in), and two outputs, 'sum' and 'cout' (carry out).

- `a` and `b` are the 1-bit numbers to be added.
- `cin` is the carry-in bit from a previous stage of addition.
- `sum` is the sum of `a`, `b`, and `cin`.
- `cout` is the carry-out, which is 1 if the sum produces a carry.

The Full Adder is implemented using two Half Adders. The first Half Adder adds `a` and `b` to produce a partial sum, and the second Half Adder adds that partial sum to `cin` to produce the final sum and carry-out.

### 3. Full Adder (4-bit)

The Full Adder (4-bit) is similar to the Full Adder (1-bit), but it operates on 4-bit binary numbers. It can add two 4-bit numbers along with a carry-in bit.

- `a[3:0]` and `b[3:0]` are the 4-bit numbers to be added.
- `cin` is the carry-in bit from a previous stage of addition.
- `sum[3:0]` is the 4-bit sum of `a`, `b`, and `cin`.
- `cout` is the carry-out, which is 1 if the sum produces a carry.

The Verilog code for the Full Adder (4-bit) uses the assignment `{cout,sum} = a + b + cin` to perform the addition, taking advantage of Verilog's ability to add multi-bit vectors.

### 4. Ripple Carry Adder (N-bit)

The Ripple Carry Adder (RCA) is a more scalable adder that can add two N-bit binary numbers along with a carry-in bit.

- `a[N-1:0]` and `b[N-1:0]` are the N-bit numbers to be added.
- `cin` is the carry-in bit from a previous stage of addition.
- `sum[N-1:0]` is the N-bit sum of `a`, `b`, and `cin`.
- `cout` is the carry-out, which is 1 if the sum produces a carry.

This RCA is implemented using a series of Full Adders (1-bit). It uses a generate loop to instantiate Full Adders for each bit position, with carry propagation from one stage to the next.

### 5. Carry Look-Ahead Adder (N-bit) [Bugged]

The Carry Look-Ahead Adder (CLA) is another N-bit adder, aiming to improve speed by generating carry bits in advance.

- `a[N-1:0]` and `b[N-1:0]` are the N-bit numbers to be added.
- `cin` is the carry-in bit from a previous stage of addition.
- `sum[N-1:0]` is the N-bit sum of `a`, `b`, and `cin`.
- `cout` is the carry-out, which is 1 if the sum produces a carry.

However, it's important to note that the elaborated circuit still resembles an RCA more than a CLA since the way the module is coded leads to carry dependence between stages.

### 6. Binary Coded Decimal Adder (1-digit)

The Binary Coded Decimal Adder (BCDA) is designed to add two 4-bit Binary Coded Decimal (BCD) digits.

- `a[3:0]` and `b[3:0]` are the BCD digits to be added.
- `cin` is the carry-in bit, which is typically 0 for BCD addition.
- `sum[3:0]` is the BCD sum of `a`, `b`, and `cin`.
- `cout` is the carry-out, which indicates whether there was a carry during BCD addition.

This circuit uses two Full Adders and some additional logic to perform BCD addition. It is useful for applications involving decimal arithmetic.

Certainly! Here are entries for each of the Verilog modules with a format similar to the example you provided:

### 7. 2:1 Multiplexer (1-bit)

The 2x1 Multiplexer (mux_2x1) is a digital circuit designed for selecting one of two input signals based on a select signal.

- `sel`: The select signal. When `sel` is high (1), the output 'out' corresponds to input 'b,' otherwise it corresponds to input 'a.'
- `a` and `b`: The two input signals to be selected from.
- `out`: The output signal, which carries the value of either 'a' or 'b' depending on the value of 'sel.'

This module is commonly used for data switching, where it routes one of two inputs to the output based on the select signal.

### 8. 4:1 Multiplexer (1-bit)

The 4x1 Multiplexer (mux_4x1) is a digital circuit used to select one of four input signals based on a 2-bit select signal.

- `sel[1:0]`: The 2-bit select signal. It determines which of the four inputs ('a,' 'b,' 'c,' or 'd') gets routed to the output 'out.'
- `a`, `b`, `c`, and `d`: The four input signals to choose from.
- `out`: The output signal, which carries the value of the selected input.

This multiplexer combines two 2x1 Multiplexers (mux_2x1) to achieve the selection of one of the four inputs based on the 2-bit control signal.

### 9. 8:1 Multiplexer (1-bit)

The 8x1 Multiplexer (mux_8x1) is a digital circuit designed to select one of eight input signals based on a 3-bit select signal.

- `sel[2:0]`: The 3-bit select signal. It determines which of the eight inputs ('a' to 'h') gets routed to the output 'out.'
- `a`, `b`, `c`, `d`, `e`, `f`, `g`, and `h`: The eight input signals to choose from.
- `out`: The output signal, which carries the value of the selected input.

This multiplexer routes one of the eight inputs to the output based on the binary value of the 3-bit select signal. It's versatile for data routing and signal selection.

### 10. 1:4 Demultiplexer (1-bit)

The 1x4 Demultiplexer (demux_1x4) is a digital circuit that takes a single input signal ('in') and distributes it to one of four output lines based on a 2-bit select signal.

- `sel[1:0]`: The 2-bit select signal. It determines which of the four output lines receives the input signal.
- `in`: The input signal to be distributed.
- `out[3:0]`: The four output lines. One of them receives the input signal based on the select signal.

The 1x4 Demultiplexer operates as the opposite of a multiplexer, routing the input signal to one of the four output lines based on the select signal. It's commonly used for data distribution.

### 11. 3:8 Decoder

The 3x8 Decoder (decoder_3x8) is a digital circuit that takes a 3-bit input signal ('in') and activates one of eight output lines based on the input value.

- `in[2:0]`: The 3-bit input signal, determining which of the eight output lines should be active.
- `out[7:0]`: The eight output lines. Only one of them is activated (set to logic high) based on the input value.

The 3x8 Decoder is used to implement binary-to-decimal or binary-to-octal conversions. It activates a specific output line corresponding to the binary input value.
