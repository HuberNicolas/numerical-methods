%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
f = @(x) exp(-25*x.^2);
x = linspace(-1,0,5);
y = f(x);
x0 = -0.4;
yexact = f(x0);

% degree = 2 interpolation
x2 = [2,3,4]
c2 = polyfit(x[x2],y[x2],2);
z2 = linspace(x(1),x(end),100);
p2 = polyval(c2,z2);
fprintf(' p_2 f(x) = %.2f x^2 + %.2f x + %.2f\n', p2(1),p2(2), p2(3));
subplot(2,1,1);
plot(z2,p2,x,y,'o');
% calculate error
err2 = abs(yexact - polyval(c2,x0));
fprintf("Error of the interpolation polynom degree = 2 is %f\n",err2);

% degree = 3 interpolation
c3 = polyfit(x,y,3);

z3 = linspace(x(1),x(end),100);
p3 = polyval(c3,z3);
fprintf(' p3(x) = %.2f x^3 +%.2f x^2 + %.2f x + %.2f\n',p3(1),p3(2), p3(3), p3(4));
subplot(2,1,2);
plot(z3,p3,x,y,'o');
err3 = abs(yexact - polyval(c3,x0));
fprintf("Error of the interpolation polynom degree = 3 is %f\n",err3);
