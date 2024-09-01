//Calculate the error in a data sample e.g. the measurements for 'g' from a pendulum experiment 

clc;clear;
dataset=[9.63,9.78,9.98,9.53,9.91,10.05,9.34,9.89,10.08,9.79,9.74,9.94,9.82,9.84]; //define the dataset, D
N=length(dataset); //calculates the order of D
mu_data=mean(dataset); //calculates the mean or central value of D
nsum=0;
for i=1:N
    nsum=nsum+(dataset(i)-mu_data)^2 
end
var_data=nsum/N; //calculates the variance of D
sigma_data=sqrt(var_data); //calculates the standard deviation of D
mprintf("\nThe Central Value=%f\nThe Standard Deviation=%f",mu_data,sigma_data); //prints the desired values
