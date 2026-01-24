// Full Adder implementation using Verilog

module full_adder(
  input x, y, c_in,
  output s, c_out
);

wire s0, c0, c1;
// instantiated from Half_Adder.v
// full adder using half adder
  
half_adder HA0 (
    .x(x),
    .y(y),
    .s(s0),
    .c(c0)
);
half_adder HA1(
    .x(s0),
    .y(c_in),
    .s(s),
    .c(c1)  
);

assign c_out = c0 | c1;
// behavioral modelling of full-adder
  
  // boolean expressions
//  assign s = x ^ y ^ c_in;
  //  assign c_out = (x & y) | ( c_in & (x ^ y));
endmodule
