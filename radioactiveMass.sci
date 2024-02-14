//Q: Plot a radioactivly decaying mass

clc;clf;
th=200; //let's say that the element has a half-life of 200 days
t=0:10:1600; //create an array in time of 10-day intervals untill 1600 days
lambda=0.693/th; //define the decay constant: lambda
mi=100; //state an initial mass
m=mi*%e^(-lambda*t); //the decaying mass formula
plot(t,m); //plots the decaying mass with time
xlabel("Time");ylabel("Mass");legend("Radioactive decay of Mass");
