//Q. Plot some of the legendre polynomials

clc;clf;
x=linspace(-1,1,5000);
plot2d(x,legendre(1:6,0,x)', style=2:7, leg="P1@P2@P3@P4@P5@P6");
legend('P_'+string(1:6),1);
xtitle("Some Legendre polynomials");
