module counter (  input clk,               // Declare input port for clock to allow counter to count up
                  input rstn,              // Declare input port for reset to allow the counter to be reset to 0 when required
                  output reg[3:0] out
                  );    // Declare 4-bit output port to get the counter values

  always @ (posedge clk) begin
    if (! rstn)
      out <= 0;
    else
      out <= out + 1;
  end
endmodule

module updown_counter (  input clk,               // Declare input port for clock to allow counter to count up
                  input rstn, up,             // Declare input port for reset to allow the counter to be reset to 0 when required
                  output reg[3:0] out
                  );    // Declare 4-bit output port to get the counter values

  always @ (posedge clk) begin
    if (! rstn)
      out <= 0;
    else
      if (up)
      out <= out + 1;
      else 
      out <= out - 1;
  end
endmodule

module modNcounter 
#(parameter N = 10, parameter WIDTH = 4)
(  input clk,               // Declare input port for clock to allow counter to count up
                  input rstn,             // Declare input port for reset to allow the counter to be reset to 0 when required
                  output reg [WIDTH-1:0] out
                  );    // Declare 4-bit output port to get the counter values

  always @ (posedge clk) begin
    if (! rstn)
      out <= 0;
    else
      if (out == (N-1))
        out <= 0;
      else 
        out <= out + 1;
  end
endmodule
