**Asynchronous assertion = “I need the chip to reset right now”**      
During power‑up or a fault condition, the clock may be:   
unstable                   
not yet running   
gated    
But the chip must enter a known safe state immediately.

Why async assertion is used?    
Immediate effect — no need to wait for a clock edge.     
Brings all flops to a known state even before the clock tree is alive.      
Critical for POR (Power‑On Reset), brown‑out, safety faults, watchdog resets.  
This is exactly why ASICs allow the reset pin of a flop to be asynchronous —     
it guarantees deterministic initialization even when the clock is not trustworthy.    

**Synchronous de‑assertion = “Release reset only when the clock is stable”**

If you release an asynchronous reset near a clock edge, different flops may sample the release at different times →  
metastability, inconsistent state, or partial reset release.    
Why this is dangerous???      
Some flops come out of reset on cycle N    
Others on cycle N+1    
Some go metastable    
FSMs start in illegal states    
Reset domain crossings become unpredictable    
ASICs cannot tolerate this — it breaks determinism.       

**Solution: Reset synchronizer: 2FF synchronizer**  
You assert reset asynchronously, but you de‑assert it through a 2‑flop synchronizer inside each clock domain:   

Async assertion gives: immediate safety, deterministic power‑up,independence from clock availability 
Sync de‑assertion gives: glitch‑free release, no metastability, clean STA (reset release becomes a normal timing path), predictable initialization of FSMs and datapaths   

**When and Where to Use a Reset??**   

AMD devices have a dedicated global set/reset signal (GSR). This signal sets the initial value of all sequential cells in hardware at the end of device configuration.   

If an initial state is not specified, sequential primitives are assigned a default value. In most cases, the default value is zero. Exceptions are the FDSE and FDPE primitives that default to a logic one. Every register     will be at a known state at the end of configuration. Therefore, it is not necessary to code a global reset for the sole purpose of initializing a device on power up.   

AMD highly recommends that you take special care in deciding when the design requires a reset, and when it does not. In many situations, resets might be required on the control path logic for proper operation. However,     resets are generally less necessary on the data path logic. Limiting the use of resets:   

Limits the overall fanout of the reset net.   
Reduces the amount of interconnect necessary to route the reset.   
Simplifies the timing of the reset paths.   
Results in many cases in overall improvement in clock frequency, area, and power.    
Recommended: Evaluate each synchronous block, and attempt to determine whether a reset is required for proper operation. Do not code the reset by default without ascertaining its real need.   
Functional simulation should easily identify whether a reset is needed or not.    

For logic in which no reset is coded, there is much greater flexibility in selecting the device resources to map the logic.  

The synthesis tool can then pick the best resource for that code to arrive at a potentially superior result by considering, for example:  
Requested functionality  
Clock period requirements  
Available device resources  
Power   

