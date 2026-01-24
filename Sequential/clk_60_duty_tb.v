
// tb to generate 60% duty cycle clock
`define CLK_PERIOD 10ns
module clk_gen; 
  realtime on_t = `CLK_PERIOD * 0.6; 
  realtime off_t = `CLK_PERIOD * 0.4; 
  bit clk; 
  
  always begin 
    #on_t clk = 0; 
    #off_t clk = 1; 
  end 
  initial begin 
    clk = 1; 
    #50 
    $finish; 
  end 
  initial begin 
    // Dump waves 
    $dumpfile("dump.vcd");
    $dumpvars(0); 
  end endmodule
