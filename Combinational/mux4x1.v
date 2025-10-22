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


module mux4x1(
    input [3:0] a, [1:0] s,
    output f
    );
    
    wire g1, g2;
    mux2x1 mux1 (
         .a(a[0]),
         .b(a[1]),
         .sel(s[1]),
         .f(g1)
    );
    
    mux2x1 mux2 (
         .a(a[2]),
         .b(a[3]),
         .sel(s[1]),
         .f(g2)
    );
    mux2x1 mux3 (
         .a(g1),
         .b(g2),
         .sel(s[0]),
         .f(f)
    );
endmodule
