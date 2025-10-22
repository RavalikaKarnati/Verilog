`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2023 12:36:47 PM
// Design Name: 
// Module Name: multi_adder
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


module multi_adder(
    input [15:0] x, y,
    output [15:0] s_xy,
    output c_out_xy,
    
    input [33:0] a, b,
    output [33:0] s_ab,
    output c_out_ab
    );
    
    Generic_RCA #(.n(16)) adder_16 (
        .x(x),
        .y(y),
        .s(s_xy),
        .c_in(0),
        .c_out(c_out_xy)
    );
    
    Generic_RCA #(.n(34))adder_33 (
        .x(a),
        .y(b),
        .s(s_ab),
        .c_in(0),
        .c_out(c_out_ab)
    );
    
endmodule
