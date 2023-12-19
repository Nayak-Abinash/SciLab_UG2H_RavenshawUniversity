//Q:Plot tan(x).

clc; 
x=(-%pi/2)+0.01:0.01:(%pi/2)-0.01; //Here the xlist is defined keeping
                       //the divergences of the tan(x) in mind.
y=tan(x); 
plot(x,y); 

