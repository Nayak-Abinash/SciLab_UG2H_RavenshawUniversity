
//Illustration of dierent orders of Fourier expansion against a step function.
funcprot(0);clc;clear;clf; 

L=5;
function fun=f(x) 
    if x<0 then
        fun=1
    else
        fun=-1
    end
endfunction
a0=1/L*intg(-L,L,f,1e-2); 

function forf=ff(x,n)
for i=1:n
    function afun=fa(x)
        afun=f(x)*cos(i*%pi*x/L)
    endfunction
    a(i)=1/L*intg(-L,L,fa,1e-2); 
    function bfun=fb(x)
        bfun=f(x)*sin(i*%pi*x/L)
    endfunction
    b(i)=1/L*intg(-L,L,fb,1e-2);
end
disp(a0, a, b); 

fourierseries=0; 
    for i=1:n
        fourierseries = fourierseries + a(i)*cos(i*%pi*x/L) + b(i)*sin(i*%pi*x/L)
    end
    forf = a0/2 + fourierseries
endfunction
y=linspace(-L,L,1000);
plot2d(y,ff(y,1),style=3,leg="P1"); 
plot2d(y,ff(y,3),style=4,leg="P2"); 
plot2d(y,ff(y,5),style=5,leg="P3");
plot2d(y,ff(y,7),style=6,leg="P4"); 
plot2d(y,ff(y,9),style=1,leg="P5",rect=[0,0,5,1.5]);
plot(y,f,'black--');
plot(y,(0*y),'black--');
a=gca();
a.thickness=2;
a.box="on";
a.children.children.thickness=1;
title("Fourier Series Expansion","fontsize",4,"fontname",2);
xlabel("x","fontsize",5,"fontname",3);
ylabel("f(x)","fontsize",4,"fontname",3);
legend('n='+string(1:5),1);

