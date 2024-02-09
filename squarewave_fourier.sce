//Q. Evaluate the fourier coefficients of a square wave
// f(x) = -1 -pi<x<0
//      = +1 0<x<pi

funcprot(0);clc;clear;
n=input("No. of desired Fourier coefficients: "); //takes the desired no of terms as an input
L=%pi; //period
function fun1=f1(x) //defines the square wave peicewise 
    fun1=-1
endfunction
function fun2=f2(x) //defines the square wave peicewise 
    fun2=1
endfunction
integral1=(1/L)*integrate('f1','x',-%pi,0);
integral2=(1/L)*integrate('f2','x',0,%pi);
a0=integral1 + integral2; //evaluates a_0

for i=1:n
    function fun3=f3(x)
        fun3=-1*cos(i*x)
    endfunction
    function fun4=f4(x)
        fun4=1*cos(i*x)
    endfunction
    integral3=(1/L)*integrate('f3','x',-%pi,0);
    integral4=(1/L)*integrate('f4','x',0,%pi);
    a(i)=integral3 + integral4; //evaluates a_n
end

for j=1:n
    function fun5=f5(x)
        fun5=-1*sin(j*x)
    endfunction
    function fun6=f6(x)
        fun6=1*sin(j*x)
    endfunction
    integral5=(1/L)*integrate('f5','x',-%pi,0);
    integral6=(1/L)*integrate('f6','x',0,%pi);
    b(j)=integral5 + integral6; //evaluates b_n
end
disp(a0, a, b); 
