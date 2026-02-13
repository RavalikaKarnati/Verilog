module count_ones #(parameter WIDTH = 32) (
    input  logic [WIDTH-1:0] in,
    output logic [$clog2(WIDTH+1)-1:0] count
);

    integer i;
    always_comb begin
        count = 0;
        for (i = 0; i < WIDTH; i++)
            count = count + in[i];
    end

endmodule
