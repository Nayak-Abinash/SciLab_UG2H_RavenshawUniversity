//Q:Plot sec(x).

clc; 
x=-100:0.1:100; 
y=secd(x); //The functions which are not well defined in terms of radians,
           //we can just use the equivalent functions in terms of degree.
plot(x,y); 
