`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 11:34:47 AM
// Design Name: 
// Module Name: Generic_RCA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Generic_RCA

    // Generic code Parameterization by implementing N-Bit Adder
// flexible for any widthe

  #(parameter n = 4)
  (
    input [n-1:0] x, y,
    input c_in,
    output [n-1:0] s,
    output c_out,
    output overflow
  );
  
  wire [n:0] c;
  assign c[0] = c_in;
  assign c_out = c[n];
  assign overflow = c[n] ^ c[n-1];
  // used to replicate hardware structures based on basic pattern
  generate
    genvar i; // genvar is a integer variable/ datatype which cannot take negative values
    
    for (i=0; i < n; i= i + 1)
    begin: stage
       full_adder FA (
           .x(x[i]),
           .y(y[i]),
           .s(s[i]),
           .c_in(c[i]),
           .c_out(c[i+1])
       );
    end
  endgenerate
//assign c_out = c[n];

endmodule
