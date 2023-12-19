//Q:Plot cot(x).

clc; 
x=-100:01:100; //Initiates a list of points defined in terms of degrees
               //instead of radians.
y=cotd(x); 
plot(x,y); 

//For some reason, the cotangent function is not well defined
//in Scilab in terms of radians. Thus we have used the cotd function,
//which is the cotangent function defined in terms of degrees instead
//of radians.
