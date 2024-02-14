//Q: Use Least Square Method to fit for Hooke's Law.

clc;clf;
x=[000,005,010,015,020,025,030,035,040,045,050]; //x-component of the data point
y=[155,157,158,159,163,165,168,169,171,174,175]; //y-component of the data point
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
xlabel("Mass in grams");
ylabel("Length in mm");
//xgrid(1,1,3);
title("Law of Hooke in Square Fit Method");
