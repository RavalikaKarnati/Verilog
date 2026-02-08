//Parity detectors are used in many of DSP applications and an integral module for encryption engines.
//Odd 1s : Assign output as logical 1
//Even 1s : Assign output as logical zero

// odd parity =  ^ 1101 = 1^1^0^1 = 1
// even parity = ^1100 = 1^1^0^0 = 0

module  even_odd_parity_detector  ( 
input [7:0]  data_in,  
output parity_out
);      

assign parity_out = ^ data_in;

endmodule 
