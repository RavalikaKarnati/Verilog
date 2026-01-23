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
