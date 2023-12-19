//Q: Solve the ordinary differential equation, dy/dx=f(x,y) with given initial
//conditions. Plot the result.

//This example is defined for f(x,y)=x+y, with initial value y(0)=1. We are 
//going to use this f(x,y) and the initial values for other related programs
//to draw easy comparison.

clc; //clears the console
funcprot(0); //lets us redefine a function as we move along
function yp=f(x,y) //defines the differential equation, we have defined
    yp=x+y         //dy/dx as y'.
endfunction
xi=0;yi=1; //define and initiate the initial values
xf=0.3; //the desired endpoint in our calculation
h=0.01; //define a suitable step size
x=xi:h:xf; //define an array of points on the x-axis
n=(xf-xi)/h; //define the number of iterations. This step is not necessary here.
y=ode(yi,xi,x,f); //use the ode function predefined in scilab to solve for y.
                  //remember that y here is in an array form.
plot(x,y); //plots y vs x
disp(y(n+1)); //shows the value y(xf)





