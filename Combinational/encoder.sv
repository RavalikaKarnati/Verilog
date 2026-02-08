// https://github.com/ARC-Lab-UF/sv-tutorial/blob/main/combinational/priority_encoder_4in.sv

module priority_encoder #(
    parameter int NUM_INPUTS,
    parameter int NUM_OUTPUTS = $clog2(NUM_INPUTS)
) (
    input logic [NUM_INPUTS-1:0] inputs,

    // Here we use the new parameter to define the width of the result.
    output logic [NUM_OUTPUTS-1:0] result,
    output logic                   valid
);
    always_comb begin
        result = '0;
        valid  = 1'b0;

        for (int i = NUM_INPUTS - 1; i >= 0; i--) begin
            if (inputs[i] == 1'b1) begin
                result = NUM_OUTPUTS'(i);
                valid  = 1'b1;
                break;
            end
        end
    end
endmodule  
