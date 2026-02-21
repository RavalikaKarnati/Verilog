// 1. Use a counter to count the clock cycles and compare it with the duty cycle input.
// 2. The PWM signal should be high for the number of cycles proportional to the duty cycle and low for the remaining cycles.

module clk_60_duty #(
  parameter N = 4   // width of the duty cycle input
) (
  input  logic clk,      // input clock
  input  logic rst_n,    // active-low reset
  input logic [N-1:0] duty_cycle, // duty cycle to comapre with counter to be high and low for remaining cycles
  output logic clk_out   // 
);

  // Counter width based on N
  localparam W = $clog2(N);
  logic [W-1:0] count;

  // Counter logic
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      count <= '0;
    else if (count == N-1)
      count <= '0;
    else
      count <= count + 1;
  end

  // Duty cycle logic: HIGH for DUTYCYCLE counts, LOW for REMAINING CYCLES
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      clk_out <= 1'b0;
    else begin
      if (count < duty_cycle)   // count < duty_cycle
        clk_out <= 1'b1;  // HIGH when count=0,1,2; LOW when count=3,4
      else
        clk_out <= 1'b0;
    end
  end

endmodule
