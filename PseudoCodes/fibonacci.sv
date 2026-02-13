module fibonacci_seq #(
    parameter WIDTH = 16
)(
    input  logic              clk,
    input  logic              rst_n,
    input  logic              start,      // pulse to restart sequence
    output logic [WIDTH-1:0]  fib_out
);

    logic [WIDTH-1:0] a, b;  // a = F(n), b = F(n+1)

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            a       <= '0;
            b       <= '0;
            fib_out <= '0;
        end else if (start) begin
            // Initialize: F(0)=0, F(1)=1
            a       <= 0;
            b       <= 1;
            fib_out <= 0;
        end else begin
            fib_out <= a;       // output current Fibonacci number
            {a, b}  <= {b, a+b}; // next pair
        end
    end

endmodule
