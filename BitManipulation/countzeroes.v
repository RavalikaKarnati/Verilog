module count_zeroes #(parameter WIDTH = 32) (
    input  logic [WIDTH-1:0] in,
    output logic [$clog2(WIDTH+1)-1:0] zero_count
);

    integer i;
    always_comb begin
        zero_count = 0;
        for (i = 0; i < WIDTH; i++)
            zero_count += (in[i] == 1'b0);
    end

endmodule
