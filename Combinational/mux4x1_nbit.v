`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2025 04:08:10 PM
// Design Name: 
// Module Name: mux4X1
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


module mux4x1_nbit
  #(parameter N=4)
    (
      input [N-1:0] a1, a2, a3, a4,
      input [1:0] s,
      output reg [N-1:0] f
    );
 
  always @(a1,a2,a3,a4,s)
   begin
     case (s)
       2'b00 : f = a1;
       2'b01 : f = a2;
       2'b10 : f = a3;
       2'b11 : f = a4;
       default : f = 'bx;    
     endcase
   end
endmodule
