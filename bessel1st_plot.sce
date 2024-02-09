//Q. Plot some bessel functions of the first kind

clc;clf;
x=linspace(0,40,5000)';
plot2d(x,besselj(0:4,x), style=2:6, leg="J0@J1@J2@J3@J4");
legend('J_'+string(0:4),1);
xtitle("Some Bessel functions of the first kind");
