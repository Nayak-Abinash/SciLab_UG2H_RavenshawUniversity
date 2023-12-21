//Q: Illustration of Ohm's Law, V=IR

clf;
R1=2; R2=5; //define two resistances
V=0:0.001:50; //take an array of potentials
I1=V/R1; //Use the Ohm's law to get the current
I2=V/R2;
plot2d(V,I1,2);
plot2d(V,I2,5);
xlabel("Voltage"); ylabel("Current");
title("Ohms Law");
