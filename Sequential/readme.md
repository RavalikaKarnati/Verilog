**Async Reset vs Sync Reset**:

In the synchronous reset module, the input reset_n is synchronized with the clock signal using an edge-triggered flip-flop. The reset condition is checked on the rising edge of the clock, and if reset_n is low, the data is reset to 0. Otherwise, data is updated based on input ports.   

In the asynchronous reset module, the input reset_n is checked on both rising and falling edges of the clock, and if reset_n is low, the data is reset to 0 regardless of the current clock state.   
<img width="441" height="567" alt="image" src="https://github.com/user-attachments/assets/96680950-b792-44c4-8e27-80becebcf6c1" />



**Level Senstive latch**:  

always @( clock or D)  
if (clock) Q <= D;  

<img width="992" height="382" alt="image" src="https://github.com/user-attachments/assets/f376b4af-41f6-487a-8d02-1e6d61aa5125" />

**Asynchronus_Reset**:  
    always @(posedge clk or negedge rst) begin  
        if (!rst) out <= 0;  
        else begin  
            out <= in;  
        end  
    end  
<img width="1018" height="451" alt="image" src="https://github.com/user-attachments/assets/59263280-ea05-4a46-a1fb-f76f16194ce9" />

**Synchronus_Reset**:  
    always @(posedge clk) begin  
        if (!rst) out <= 0;  
        else begin  
            out <= in;  
        end   
    end   
<img width="1130" height="528" alt="image" src="https://github.com/user-attachments/assets/796b1f03-3465-4668-bd24-342a5f167131" />


    












counter:  
<img width="1092" height="525" alt="image" src="https://github.com/user-attachments/assets/c108148b-955b-40aa-84ef-615537aa9949" />
