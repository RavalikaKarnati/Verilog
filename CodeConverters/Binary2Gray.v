//assign  gray_out [3] = binary_in[3]; 
//assign  gray_out [2] = binary_in[3] ^ binary_in[2]; 
//assign gray_out [1] = binary_in[2] ^ binary_in[1]; 
//assign  gray_out [0] = binary_in[1] ^ binary_in[0];

module b2g_converter #(parameter WIDTH=4) (input [WIDTH-1:0] binary, output [WIDTH-1:0] gray);
  genvar i;    
  generate
    for(i=0;i<WIDTH-1;i++) begin
      assign gray[i] = binary[i] ^ binary[i+1];
    end
  endgenerate
  
  assign gray[WIDTH-1] = binary[WIDTH-1];

  // assign gray = (binary >> 1) ^ binary;
endmodule
