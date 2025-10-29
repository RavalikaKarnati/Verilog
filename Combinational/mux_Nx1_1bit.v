`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 11:29:10 PM
// Design Name: 
// Module Name: mux_generic_1bit
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


module mux_Nx1_1bit
  #(parameter NUM_OF_INPUTS = 5)
  (
    input [NUM_OF_INPUTS-1:0] a,
    input [$clog2(NUM_OF_INPUTS)-1:0] sel,
    output reg f
  );
  
  integer i;
  
  always @(a,sel)  begin
    f = 1'bx;
    for (i=0; i< NUM_OF_INPUTS; i=i+1) begin
       if ( i==sel)
          f = a[i];
    end   
  end
endmodule
