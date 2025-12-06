// Code your design here
module modN_ctr
  # (parameter N = 3,   // N = input frequency / output frequency, div/2, div/3, etc
     parameter WIDTH = 4)

  ( input   clk,
    input   rstn,
    output reg clk_div
   	);

  reg [$clog2(N)-1:0] count;
  always @ (posedge clk) begin
    if (!rstn) begin
      count <= 0;
      clk_div <= 0;
    end else begin
      if (count == N-1) begin
        count <= 0;
        clk_div <= ~clk_div;
      end
      else begin
        count <= count + 1;
      end
    end
  end
endmodule

// Code your testbench here
module tb;
  parameter N = 3;
  parameter WIDTH = 4;

  reg clk;
  reg rstn;
  wire [WIDTH-1:0] out;

  modN_ctr #(2) u0  ( 	.clk(clk),   // #(.N(N)
                	.rstn(rstn),
                	.clk_div(clk_div));

  always #10 clk = ~clk;

  initial begin
    {clk, rstn} <= 0;

    $monitor ("T=%0t rstn=%0b out=0x%0h", $time, rstn, out);
    @ (posedge clk);
    rstn <= 1;

    repeat(20) @ (posedge clk);
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
