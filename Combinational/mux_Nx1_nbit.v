`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 11:06:55 PM
// Design Name: 
// Module Name: mux_Nx1_nbit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  fully synthesizable, parameterized implementation of an M-to-1 multiplexer for N-bit-wide data
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_Nx1_nbit #(
  parameter NUM_OF_INPUTS = 5,
  parameter INPUT_WIDTH = 4
  )
  (
  
 // 1. You cannot pass arrays as ports
 // example: module mux (input [7:0] arr[0:3]); // ❌ illegal in Verilog-2001
 // 2. You cannot assign entire arrays
 // example: mem = other_mem;  // ❌ illegal
 // instead use FOR loop
 // example: integer i;
 //          for (i = 0; i < 256; i = i + 1)
 //          mem[i] = other_mem[i];

 // 3. You cannot use arrays in expressions directly // ❌ illegal
 // can Define memories : reg [15:0] rom [0:255]; // ✅ can do in Verilog-2001
 
// input [INPUT_WIDTH-1:0] a [NUM_OF_INPUTS-1:0],  // N-BIT WIDE VECTOR WITH DEPTH N

// alernate use concatenation instead of array //  ✅ can do in Verilog-2001
// input [7:0] in [0:3]; // not allowed in Verilog-2001
// instead we write:
// input [31:0] data_in; // {in3, in2, in1, in0}
// assign data_out = data_in[sel*8 +: 8];


    input [INPUT_WIDTH*NUM_OF_INPUTS-1:0] a,  // N-BIT WIDE VECTOR WITH DEPTH N
    input [$clog2(NUM_OF_INPUTS)-1:0] sel,
    output reg [INPUT_WIDTH-1:0] f  
  );
  
  
  integer i;
  always @(a,sel)  begin
    f = {INPUT_WIDTH{1'b0}};
    for (i=0; i< NUM_OF_INPUTS; i=i+1) begin
       if ( sel==i)
//        +: is Verilog bit slicing f= a[start_index +: width];
//        start_index → the LSB (least significant bit) position to start from
//        width → how many bits to select
//        "+:" means “go upward from start_index to start_index+width-1”
//        "-:" means "go downward from start_index to start_index-width+1"

         f[i] = a[i*INPUT_WIDTH +: INPUT_WIDTH]; 
    end   
  end  
endmodule
