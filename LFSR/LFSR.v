//for 4-bit LFSR, At every step,
//Q[3] xor Q[2]
//Q = Q << 1
//The result of the XOR operation is fed to the LSB (0th bit)
//In the above pseudo-random sequence generator, taps are 4 and 3.

module lfsr (
input wire clk,
// Clock input
input wire rst,
// Active-low reset
output reg [15:0] lfsr_out
// 16-bit LFSR output
);
// Feedback polynomial: 

always @(posedge clk or negedge rst) begin
if (~rst)
lfsr_out <= 16'hFFFF;
// Initialize the LFSR to all 1's
else
lfsr_out <= {lfsr_out[14:0], lfsr_out[15] ^ lfsr_out[13] ^
lfsr_out[12] ^ lfsr_out[10]};
// Shift and feedback
end
