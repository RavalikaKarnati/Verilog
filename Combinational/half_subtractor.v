module half_subtractor(
   input x, y,
   output b, d
    );
    
    // continous Assignment
assign d = x ^ y;   // x xor y
assign b = !x & y;

// gate level
//xor diff (d, x, y);
//and borrow (b, ~x, y);
endmodule
