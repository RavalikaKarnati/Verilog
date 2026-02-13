// same when read forward or backward
// 001100
// 0010100

module palindrome_bits #(
    parameter WIDTH = 16
)(
    input  logic [WIDTH-1:0] in,
    output logic             is_palindrome
);

    integer i;

    always_comb begin
        is_palindrome = 1'b1;
        for (i = 0; i < WIDTH/2; i++) begin
            if (in[i] != in[WIDTH-1-i])
                is_palindrome = 1'b0;
        end
    end

endmodule
