//Q. Solve dy/dx=e^x, with y(0)=0
//for detailed comments refer to the file: ode.sce 

funcprot(0);
clc;clf;clear;
function yp=f(x,y)
    yp=exp(x)
endfunction
xi=0;xf=8;
yi=0;
h=0.01;
x=xi:h:xf;
y=ode(yi,xi,x,f);
plot2d(x,y);






