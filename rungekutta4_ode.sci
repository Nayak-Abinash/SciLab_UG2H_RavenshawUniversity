//Q: Solve the ODE, dy/dx=x+y, with initial value y(0)=1, using 
//the Runge-Kutta order-4 method.

clc;
function yp=f(x,y) //defines the ODE
    yp=x+y //defines the function
endfunction
xi=0;yi=1; //state the initial values
xf=0.3; //define the endpoint
h=0.01; //define a suitable step-size
n=(xf-xi)/h; //number of iterations required
for i=1:n
    k1=h*f(xi,yi) //RK4 working formula
    k2=h*f(xi+(h/2),yi+(k1/2)) //RK4 working formula
    k3=h*f(xi+(h/2),yi+(k2/2)) //RK4 working formula
    k4=h*f(xi+h,yi+k3) //RK4 working formula
    y1=yi+(1/6)*(k1+2*k2+2*k3+k4) //RK4 working formula
    xi=xi+h //redefine the initial x point for the next iteration
    yi=y1 //redefine the corresponding y value for the next iteration
    //disp([xi yi]) //displaying results at each iteration
end
disp([xi yi]); //displaying the final result once after the for loop ends 
//Compare the result with "ode.sci"
