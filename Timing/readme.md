<img width="1007" height="560" alt="image" src="https://github.com/user-attachments/assets/306f9761-3791-4ced-a3ed-638ac3855dd8" />   

clock skew: systematic clock edge varaiable between different FFs. Ex: for FF1 clock clock arrives early and for FF2 later   
Impact:   
Positive skew: Clock arrives later at the destination flop → can help setup but hurts hold.   
Negative skew: Clock arrives earlier at the destination flop → can help hold but hurts setup.   
 
clock Jitter: Variation in clock edge timing between clock cycles in the same FF 


preventing set-up time violation:  
<img width="981" height="717" alt="image" src="https://github.com/user-attachments/assets/428cadcd-c3c7-4a59-9ae3-47648a0ee342" />

<img width="1233" height="741" alt="image" src="https://github.com/user-attachments/assets/db3ed0fc-6af8-471c-a9c8-fb0a7261a614" />


<img width="1223" height="737" alt="image" src="https://github.com/user-attachments/assets/f8729051-20be-4259-b885-acc38aa787f3" />




preventing hold time violation:    
<img width="970" height="717" alt="image" src="https://github.com/user-attachments/assets/1e5dd87e-debe-41a4-95ee-b7d5cc080def" />

<img width="973" height="727" alt="image" src="https://github.com/user-attachments/assets/c3fa6dbc-901d-404c-a446-18745dc5058a" />



<img width="982" height="725" alt="image" src="https://github.com/user-attachments/assets/92141797-c21a-4fb1-80ca-116a5436e6c2" />







