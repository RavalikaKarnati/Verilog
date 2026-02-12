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
