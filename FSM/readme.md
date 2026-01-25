<img width="726" height="422" alt="image" src="https://github.com/user-attachments/assets/c280b6f3-eceb-43af-b50b-7ede367e6322" />
<img width="757" height="322" alt="image" src="https://github.com/user-attachments/assets/c1a168de-b5a9-4e00-9605-51e22979c09b" />
<img width="691" height="325" alt="image" src="https://github.com/user-attachments/assets/e76df759-af31-4683-a774-84b14d0bab6a" />

1. FSMs are coded very efficiently by using Verilog RTL for better synthesis  
outcome.  
2. FSMs are of two types: Moore and Mealy.  
3. In the Moore type FSMs, the output is function of current state only.  
4. In the Mealy FSMs, the output is function of current state as well as inputs.  
5. FSM encoding styles are binary, gray, and one hot.  
6. One-hot encoding style is used for glitch-free outputs and yields the better and clean synthesis.
7. In ASIC designs, two or three always block FSMs are used to generate efficient synthesis.  
8. Register the FSM outputs as it ensures that an output is glitch free.  
9. For better and efficient synthesis outcome, use the one-hot encoding method.  
10. Use non-blocking assignments for coding the state register logic.  
11. Use blocking assignments for coding the next state combinational logic.  
12. Use blocking assignments for coding the output combinational logic.  
13. Include the default condition in the case construct to avoid the unintentional latches

 **Improving the Design Performance for FSMs** 
The objective or goal during the FSM coding is efficient synthesis and better design timing. 
The reusability and use of the state encoding is another important point RTL designer needs to focus. Even the coding style should be compact as well as readable.

The following are important guidelines used to improve the FSM performance.  
a. Do not use the single always block FSM. As the issue is in readability and it doesn’t yield in the efficient synthesis results.
b. Use multiple procedural block FSMs. In practical ASIC designs, two or three always block FSMs are used as it improves the readability and reusability, and
even it yields into the efficient synthesis results.  
c. Declare the state parameters according to the required state encoding, and then, declare the next_state and current_state.  
d. Use non-blocking assignments for coding the state register logic.  
e. Use blocking assignments for coding the next state combinational logic.  
f. Use blocking assignments for coding the output combinational logic.  
g. Include the default condition in the case construct to avoid the unintentional latches.  
h. While using the if-else construct, the number of transitions in the state diagram should be same as number of if-else conditions.  
i. Register the FSM outputs as it ensures that an output is glitch free.  
j. For better and efficient synthesis outcome, use the one-hot encoding method.  


