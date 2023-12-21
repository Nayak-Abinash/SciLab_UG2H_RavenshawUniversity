clc;funcprot(0);
function y1=f(x,y)
    y1=2.5-y/4
endfunction
x0=0;y0=0;
x=0:0.001:15;
sol=ode(y0,x0,x,f);
plot2d(x,sol,5);
xlabel("Time in seconds");
ylabel("Voltage of capacitor in volts");
title("Charging in RC Circuit");
