<img width="711" height="643" alt="image" src="https://github.com/user-attachments/assets/d90fc8f5-01ef-4ce7-ba00-d1a68164ae96" />

**ActiveQueue:** Most of the Verilog events are scheduled in the active event queue.These events can be scheduled in any order and evaluated or updated in
any order. The active queue is used toupdate the blocking assignments, continuous assignments,evaluation of RHS of the non-blocking assignments
(LHS of NBA is not updated in the activequeue), $display commands and to update the primitives.   

**InactiveQueue:** The #0 delay assignments are updated in the inactivequeue. Useof #0 delays in the Verilog is not goodpractice, and it unnecessarily complicates the event scheduling and ordering.
Mostofthetimesthedesigneruses the#0delayassignments tofool thesimulator toavoidtheracearound
conditions.

 NBA Queue: The LHS of the non-blocking assignments updates in this queue.
iv. Monitor Queue: It is used to evaluate and update the $monitor and $strobe
commands. The updates of all the variables are during the current simulation
time.
