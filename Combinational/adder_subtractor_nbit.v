`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2025 10:12:21 PM
// Design Name: 
// Module Name: adder_subtractor
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


module adder_subtractor_nbit

    // Generic code Parameterization by implementing N-Bit Adder
// flexible for any widthe

  #(parameter n = 4)
  (
    input [n-1:0] x, y,
    input  adder_subtractor_en,
    output [n-1:0] s,
    output c_out,
    output overflow
  );
  
  wire [n-1:0] xored_y;

 
  // used to replicate hardware structures based on basic pattern
  
  generate 
   genvar k;
    for ( k=0; k<n; k=k+1) 
    begin 
     assign xored_y = y[k] ^ adder_subtractor_en;
    end
  endgenerate
  
    Generic_RCA  rca_nbit (
        .x(x),
        .y(xored_y),
        .s(s),
        .c_in(adder_subtractor_en),
        .c_out(c_out),
        .overflow(overflow)
    );
//assign c_out = c[n];

endmodule
