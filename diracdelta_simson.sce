//Q. The Dirac delta function.
//Here we present the Dirac delta function as an integration over a Gaussian curve. We also evaluate a function at a point using the Dirac delta function.

clc; //clears console
clear; //clear variables
sigma=0.1; //width of the gaussian
function y=fun(x) //defines a gaussian bell
    y=((x+3)/sqrt(2*%pi*sigma^2))*exp(-(x-2)^2/(2*sigma^2))
endfunction
xi=-3;xf=3; //limits of integration
N=10000; //number of desired iterations
h=(xf-xi)/N; //step size
k1=fun(xi); //terms in simpson's rule of numerical integration
k4=fun(xf); //terms in simpson's rule of numerical integration
k2sum=0;
for i=1:2:N-1
    k2sum = k2sum + fun(xi+(i*h)) //terms in simpson's rule of numerical integration
end
k3sum=0;
for j=2:2:N-2
    k3sum = k3sum + fun(xi+(j*h)) //terms in simpson's rule of numerical integration
end
simintg = h/3*(k1 + 4*k2sum + 2*k3sum + k4); //the simpson's formula
disp(simintg); //displaying the result
