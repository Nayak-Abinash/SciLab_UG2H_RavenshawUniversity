//Q. Fourier series.
//A fourier series is an expansion of a periodic function in terms of trigonometric functions.

funcprot(0);clc;clear;clf; 
L=5; //defines the period
n=5; //number of terms desired in the fourier expansion
function fun=f(x) //defines the asked function
    fun=x
endfunction
a0=1/L*intg(-L,L,f,1e-2); //evaluates the first coefficient
//disp(a0);
for i=1:n
    function afun=fa(x)
        afun=f(x)*cos(i*%pi*x/L)
    endfunction
    a(i)=1/L*intg(-L,L,fa,1e-2); //evaluates the cosine coefficients
    //disp(a(i));
    function bfun=fb(x)
        bfun=f(x)*sin(i*%pi*x/L)
    endfunction
    b(i)=1/L*intg(-L,L,fb,1e-2); //evaluates the sine coefficients
    //disp(b(i));
end
disp(a0, a, b); //displays the full coefficient list

fourierseries=0; 
function forf=ff(x) //expresses the fourier series as a function
    for i=1:n
        fourierseries = fourierseries + a(i)*cos(i*%pi*x/L) + b(i)*sin(i*%pi*x/L)
    end
    forf = a0/2 + fourierseries
endfunction
h=0.01; //step size
y=-L:h:L; //array of points to plot
plot2d(y,ff(y)); //plotting the fourier series


