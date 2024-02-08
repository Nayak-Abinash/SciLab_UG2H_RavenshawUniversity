//Q. Solve d^2y/dx^2 + 2dy/dx = -y, with y(0)=0 and y'(0)=1
//for detailed comments refer to the file: secondorder_diffeqn.sce 

clc;clf;
function dy=f(x,y)
    dy(1) = y(2)
    dy(2) = -y(1) -exp(-x)*y(2)
endfunction
xi=0;xf=08;
yi=0;
dyi=1;
h=0.01;
x=xi:h:xf;
y=ode([yi;dyi],xi,x,f); 
plot2d(x,y(1,:));










