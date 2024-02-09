//program to sum \sum(n=1->\inf) 0.2^n

clc; //clears console
nsum=0; //initiates a variable named sum
N=100000; //number of terms in the sum
for n=1:N
    nsum = nsum + (0.2)^n;
end
disp("sum=",nsum); //displays the sum
