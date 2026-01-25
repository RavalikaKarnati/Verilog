**Synthesis Area, Power, Timing Report**:  


**CLOCK GATING:**  
• The clock/power gating strategy should be defined/decided during the initial phase of design. This will allow designers to make appropriate decisions in terms of power, area and performance budget.  
• Do not over do the clock/power gating as this comes at cost of area as well as added complexity in terms of verification  

Implemented clock gating to disable the clock for the blocks that is not needed or enabled based on the inputs.

<img width="666" height="347" alt="image" src="https://github.com/user-attachments/assets/b4e24814-3e8b-495f-a72d-b4f4b53e5e41" />
<img width="1026" height="382" alt="image" src="https://github.com/user-attachments/assets/96584734-7557-49d5-8c7a-60269defb51a" />

module clockgating(  
input  clk_in, // Input clock  
input clk_en, // Clock enable signal   
output gated_clk // Gated clock output   
);
reg latch_en;   
// Clock gating logic  
always @(clk_in or clk_en) begin  
  if (!clk_in)  
     latch_en = clk_en; // Pass the clock when enabled  
end  
assign gated_clk = latch_en & clk_in;  
endmodule  



**Modeling and power estimation:**
At RTL level, using joules tool to estimate the power or switching  

**Power Gating**
if the functional blocks are not used, then the selected functional blocks are powered off  

