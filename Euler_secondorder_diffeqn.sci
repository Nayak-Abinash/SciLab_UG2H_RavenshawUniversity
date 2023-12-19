//Q: Solve the given second-order differential equation using Euler's method.
//the diff eqn: y'' + 2y' = y, with initial values y(0)=0 & y'(0)=1.

//The trick to solve is to define y'=z and writing the diff eqn as
// z'=y-2z and solving these two ODEs simultaneously.

funcprot(0)
clc;
function [yp,zp]=fun(x,y,z) //define the two functions on an array
    yp=z //defines y'=z
    zp=y-2*z //defines z'=y-2z
endfunction
xi=0;yi=0;zi=1; //state all initial values
xf=5; //endpoint on x
h=0.01; //step-size
x=xi:h:xf; //array on x-axis
n=(xf-xi)/h; //number of iterations
for i=1:n
    [yp,zp]=fun(xi,yi,zi) //initiate the functions at their initial point
    y1=yi+h*yp //Euler's algortihm
    z1=zi+h*zp //Euler's algortihm
    xi=xi+h //shift x to the next point
    yi=y1 //redefine y
    zi=z1 //redefine z
end
disp([xi yi]); //displays the endvalue
//compare this result with "secondorder_diffeqn.sci"
