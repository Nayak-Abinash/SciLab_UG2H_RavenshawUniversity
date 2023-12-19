//Q: Solve the given second-order differential equation.
//the diff eqn: y'' + 2y' = y, with initial values y(0)=0 & y'(0)=1.

//The trick to solve is to define y'=z and writing the diff eqn as
// z'=y-2z and solving these two ODEs simultaneously.

//clc();clf(); //clears the graphic console
function dy=f(x,y) //define a general differential of y
    dy(1)=y(2) //let's say y is an array with the 1st component=y & 
               //2nd component=z. Then this eqn defines y'=z
    dy(2)=y(1)-2*y(2) //this eqn defines z'=y-2z
endfunction
xi=0;yi=0; //state the initial values of the independent variable x
           // and the dependent variable y
dyi=1; //the initial value y'(0)=1
xf=5; //the desired endpoint on the x-axis
h=0.01; //a suitable step-size
n=(xf-xi)/h; //number of iterations
x=xi:h:xf; //define an array of points on the x-axis
y=ode([yi;dyi],xi,x,f); //solve the two ODEs simultaneously 
plot(x,y(1,:)); //recollect that y is an array with the first component=y.
                //this line basically collects all the points in the first
                //array.
disp(y(1,n+1)); //displays the value y(5).
//We could define dy(2)=1+y(2) alongwith yi=1,xf=0.3 
//and compare the results with "ode.sci"
