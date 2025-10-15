// Ripple Carry adder Implemnetation using FA

module rca_4bit(
   input [3:0] x, y,         // x0, x1, x2, x3
   input c_in, 
   output [3:0] s,  // s0, s1, s2, s3,
   output c_out,
   output overflow
);

wire [4:0] c;

assign c[0] = c_in;
assign c_out = c[4];
assign overflow = c[4] ^ c[3];

generate 
genvar i;
  for ( i=0; i <=3; i=i+1) begin
    full_adder FA (
    .x(x[i]),
    .y(y[i]),
    .s(s[i]),
    .c_in(c[i]),
    .c_out(c[i+1])
    );
   end
endgenerate

/*
full_adder FA0 (
    .x(x[0]),
    .y(y[0]),
    .s(s[0]),
    .c_in(c_in),
    .c_out(c[1])
);
full_adder FA1 (
    .x(x[1]),
    .y(y[1]),
    .s(s[1]),
    .c_in(c[1]),
    .c_out(c[2])
);
full_adder FA2 (
    .x(x[2]),
    .y(y[2]),
    .s(s[2]),
    .c_in(c[2]),
    .c_out(c[3])
);
full_adder FA3 (
    .x(x[3]),
    .y(y[3]),
    .s(s[3]),
    .c_in(c[3]),
    .c_out(c_out)
);
*/

endmodule
