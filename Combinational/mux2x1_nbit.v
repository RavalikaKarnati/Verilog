`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2025 10:04:54 PM
// Design Name: 
// Module Name: mux2x1_nbit
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


module mux2x1_nbit
#(parameter N = 4)
(
    input [N-1:0] a, b, sel,
    output [N-1:0] f // when using always block, output f should be declared as reg - this is not a register or memory storage variable
    );
    
    assign f = sel ? a : b; // continuous assignment - behavioral modelling
//    assign f = (~sel & a) | (sel & b); // gate level modelling
// Procedural assignment
/*
   always @( a, b, sel) begin
    f = sel ? a : b;
   end
*/ 
endmodule
