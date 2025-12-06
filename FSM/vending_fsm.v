module vending_fsm (
  input  logic clk,
  input  logic rst_n,
  input  logic coin5,    // 5-unit coin
  input  logic coin10,   // 10-unit coin
  output logic dispense  // product output
);

  typedef enum logic [1:0] {S0, S5, S10, S15} state_t;
  state_t state, next_state;

  // State register
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      state <= S0;
    else
      state <= next_state;
  end

  // Next-state logic
  always_comb begin
    next_state = state;
    case (state)
      S0: begin
        if (coin5)  next_state = S5;
        else if (coin10) next_state = S10;
      end
      S5: begin
        if (coin5)  next_state = S10;
        else if (coin10) next_state = S15;
      end
      S10: begin
        if (coin5)  next_state = S15;
        else if (coin10) next_state = S15; // overpay still dispenses
      end
      S15: next_state = S0; // dispense then reset
    endcase
  end

  // Output logic (Moore: depends only on state)
  always_comb begin
    dispense = (state == S15);
  end

endmodule
