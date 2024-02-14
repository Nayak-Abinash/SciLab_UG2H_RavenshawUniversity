//Q: Solve the ODE, dy/dx=x+y, with initial value y(0)=1, using 
//the Modified-Euler's method.

clc;
function yp=f(x,y) //defines the ODE
    yp=x+y //defines the function
endfunction
xi=0;yi=1; //state the initial values
xf=0.3; //define the endpoint
h=0.01; //define a suitable step-size
n=(xf-xi)/h; //number of iterations required 
for i=1:n
    k1=h*f(xi,yi) //Modified-Euler working formula
    k2=h*f(xi+h,yi+k1) //Modified-Euler working formula
    y1=yi+(1/2)*(k1+k2) //Modified-Euler working formula
    xi=xi+h //redefine the initial x point for the next iteration
    yi=y1 //redefine the corresponding y value for the next iteration
    //disp([xi yi]) //displaying results at each iteration
end
disp([xi yi]); //displaying the final result once after the for loop ends 
//Compare the result with "ode.sci"
