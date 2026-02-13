module remove_duplicates #(
    parameter N = 8,
    parameter WIDTH = 8
)(
    input  logic [WIDTH-1:0] arr [N],
    output logic [WIDTH-1:0] unique_arr [N],
    output logic              is_unique [N]
);

    integer i, j;

    always_comb begin
        for (i = 0; i < N; i++) begin
            count = 1'b0;

            // check with other elements
          for (j = i+1; j < N; j++) begin
                if (arr[i] == arr[j])
                    count = count + 1'b1;
            end

            // pass through only if unique
          unique_arr[i] = (count == 1'b0) ? arr[i] : '0;
          duplicates[i] = (count >= 1'b1) ? arr[i] : '0;
        end
    end

endmodule
