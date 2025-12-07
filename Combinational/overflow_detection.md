# Verilog

Overflow Detection:    
Unsigned Overflow: carry_out = 1    
Signed Overflow: carry_out[n] ^ carry_out[n-1] | ((x[n-1] == y[n-1]) && (sum[n-1] != x[n-1]))     

Signed numbers typically use two’s complement representation.  
For an N-bit signed number:  

RANGE: -2^(𝑁-1) to +(2^(N-1)) -1
Bit-width(N)	Range (two’s complement)
4-bit	       -8 to +7
8-bit	       -128 to +127

<img width="997" height="673" alt="image" src="https://github.com/user-attachments/assets/93d9f2b5-829d-46ec-ac55-1175539843e5" />


