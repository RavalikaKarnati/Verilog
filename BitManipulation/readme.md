Shift Operators:  
Left Shift (<<): Moves bits to the left and fills in with 0.  
5 << 2 =20  
Right Shift (>>): Moves bits to the right and fills in based on the sign of the number.  
5 >> 2 =1  
Zero Fill Right Shift (>>>): Shifts bits right, filling in zeros.  
-5 >>> 2   = 1073741823    
########################################################################################
// swap with blocking    
        x = x ^ y;     
        y = x ^ y;    
        x = x ^ y;     
// with non-blocking   
       x <= y;   
       y <= x;  

########################################################################################
Check if an integer is even or odd      
n & 1 returns value 1 --> odd      
n & 1 returns value 0 --> even      
########################################################################################
Detect if two integers have opposite signs or not     
x ^ y   --> leftmost is 0 --> same sign numbers
x ^ y   --> leftmost is 1 --> opposite sign numbers
########################################################################################
bit shifting
left shift ‘<<' multiplies by 2   
right shift '>>’ divides it by 2   
########################################################################################
Unique integer in a given array  - works only if there is 1 unique integer    
[4, 1, 2, 1, 2]      
4 ^ 1 ^ 2 ^ 1 ^ 2  = 4     
######################################################################################## 
