//Given Bessel function at N points find its value at intermediate points.

clear;
clc;
clf;
x=linspace(0,10,20);
y=besselj(0,x);
ip=0.378;
ivl=interp1(x,y,ip,'linear');
ivs=interp1(x,y,ip,'spline');
ivn=interp1(x,y,ip,'nearest');
disp(ivl,ivs,ivn);
isp=0.25:0.5:10;
isl=interp1(x,y,isp,'linear');
iss=interp1(x,y,isp,'spline');
isn=interp1(x,y,isp,'nearest');

plot(isp', [isl; iss; isn]','<-', x, y, '*')
xtitle('Interpolation of Bessel function of first kind.')
legend(['linear','spline','nearest'], "in_upper_right");
