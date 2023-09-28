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
