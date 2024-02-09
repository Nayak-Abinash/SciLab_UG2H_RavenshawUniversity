//Fourier transform of a gaussian
// in general the fourier transform of f(x) is given by
//  int_lim(-inf,inf) e^(-ikx)f(x) dx

clc;funcprot(0); 
k=2; //value of k
function ft=f(x) //defines the integral
    ft=exp((-%i*k*x) - x^2); 
endfunction
a=-999;b=999;
fourtrnsfm=integrate('f','x',a,b); //integration
disp("The value of Fourier integral for k="+string(k)+" will be "+string(fourtrnsfm));
