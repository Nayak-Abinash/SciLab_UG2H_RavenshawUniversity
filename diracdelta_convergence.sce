funcprot(0);
clc;clf; 
xi=-3;xf=3; 
N=10000;
xfloat=linspace(xi,xf,N); 
function fun=dirac_integral(sigma,xe)
        fun=(1/sqrt(2*%pi*sigma^2))*integrate('exp(-(x-2)^2/(2*sigma^2))*(x+3)','x',xi,xe)
endfunction
plot2d(dirac_integral(0.1,xfloat),style=2,leg="P1");
plot2d(dirac_integral(1.1,xfloat),style=3,leg="P2");
plot2d(dirac_integral(2.1,xfloat),style=5,leg="P3");
legend('sigma='+string(0.1:2.1),2);
xtitle("The Dirac Integral for different sigmas");
