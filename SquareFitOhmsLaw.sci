//Q: Use Least Square Method to fit for Ohm's Law.

clc;clf;
x=[00,01,02,03,04,05,06,07,08,09,10]; //x-component of the data point
y=[00,05,09,16,22,25,28,34,37,44,48]; //y-component of the data point
X=sum(x); //defines +x_i
Y=sum(y); //defines +y_i
X2=sum(x.*x); //defines +x_i^2
XY=sum(x.*y); //defines +x_i*y_i
M=length(x); //number of data points
A=[M,X;X,X2]; //defines the matrix form of equations
C=[Y;XY]; //defines the matrix form of equations
B=inv(A)*C; //defines the matrix form of equations
a0=B(1); //the solution for a
a1=B(2); //the solution for b
yfit=a0+a1*x; //the fitting line a+b*x
plot(x,y,"+b");
plot(x,yfit,"red");
xlabel("Voltage in volts");
ylabel("Current in ampere");
//xgrid(1,1,3);
title("Law of Ohm in Square Fit Method");
