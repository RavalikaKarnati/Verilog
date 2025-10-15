// Half Adder implementation using Verilog
module half_adder(
   input x, y,
   output s, c
);

// continous Assignment
assign s = x ^ y;   // x xor y
assign c = x & y;

// structural
xor sum (s, x, y);
and carry (c, x, y);

endmodule
