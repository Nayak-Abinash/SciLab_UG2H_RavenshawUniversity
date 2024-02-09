//Evaluate the gaussian integral and show it tends to 5.

clc; //clears console
sigma=0.01; //define the bell width
xi=0; //initial x
xf=0:0.1:10; //final x
Y=1/sqrt(2*%pi*sigma^2); 
X=integrate('exp(-(x-2)^2/(2*sigma^2))*(x+3)','x',xi,xf); //integrates the gaussian
Z=Y*X;
plot(Z); //plots the integral values for different final x
