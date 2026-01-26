module clk_60_duty #(
  parameter N = 5   // total states (5 → 60% duty cycle)
)(
  input  logic clk,      // input clock
  input  logic rst_n,    // active-low reset
  output logic clk_out   // 60% duty cycle clock // input duty_cycle;
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

  // Duty cycle logic: HIGH for 3 counts, LOW for 2 counts
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      clk_out <= 1'b0;
    else begin
      if (count < 3)   // count < duty_cycle
        clk_out <= 1'b1;  // HIGH when count=0,1,2; LOW when count=3,4
      else
        clk_out <= 1'b0;
    end
  end

endmodule
