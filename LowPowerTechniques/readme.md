**Synthesis Area, Power, Timing Report**:  


**CLOCK GATING:**  
• The clock/power gating strategy should be defined/decided during the initial phase of design. This will allow designers to make appropriate decisions in terms of power, area and performance budget.  
• Do not over do the clock/power gating as this comes at cost of area as well as added complexity in terms of verification  

Implemented clock gating to disable the clock for the blocks that is not needed or enabled based on the inputs.  

**Modeling and power estimation:**
At RTL level, using joules tool to estimate the power or switching  

**Power Gating**
if the functional blocks are not used, then the selected functional blocks are powered off  

