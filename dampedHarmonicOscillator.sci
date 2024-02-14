//Q: Damped Harmonic Oscillator:x''=-kx-cx'

clc();clf(); //clears the graphic console
function dx=f(t,x) 
    dx(1)=x(2) //defines x'=z
    dx(2)=-k*x(1)-c*x(2) //this eqn defines z'=-kx-cx'
endfunction
k=0.8;c=0.2; //define the spring constant and damping coefficient
ti=0;xi=0; //we can assume initial time and displacement=0
dxi=0.3; //the initial velocity
tf=30; //at what time do we want our solution
h=0.01; //a suitable step-size
n=(tf-ti)/h; //number of iterations
t=ti:h:tf; //define an array of points on the time-axis
x=ode([xi;dxi],ti,t,f); //solve the two ODEs simultaneously 
plot(t,x(1,:)); 
xlabel("Time");ylabel("Displacement");legend("Damped Harmonic Oscillator");

