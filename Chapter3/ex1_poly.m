clc; clear all;
f = @(x) exp(-25.*x.^2);
x = [-1.0, -0.75, -0.5, -0.25, 0];
%x2 = linspace(-1,0,5)
y = f(x);
xeval = -0.4;

x = [-55 -25 5 35 65]; 
y = [-3.25 -3.2 -3.02 -3.32 -3.1];
c=polyfit(x,y,4)
z=linspace(x(1),x(end),100);
p=polyval(c,z); 
plot(z,p,x,y,'o');