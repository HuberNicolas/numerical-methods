%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Methods to compute Eigenvalues and Eigenvetors
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
A = [30,2,3,13;5,11,10,8;9,7,6,12;4,14,15,1];
x0 = [1;1;1;1];
itMax = 1000;
eps = 10e-10;

%% Power method
[lambda,x,it] = powerMethod(A,x0,itMax, eps)
% Check with Eigenvalue conditions
disp("A*x = ");
A*x % should be the same as lambda * x
disp("lambda*x = ");
lambda*x % should be the same as A * x
disp("Rayleigh quotient of Eigenvector x");
(x'*A*x) ./(x'*x) % Rayleigh quotient
norm(x) % norm of EV is 1

clc;
%% Inverse Power method
[lambda,x,it] = inversePowerMethod(A,x0,itMax, eps)
% Check with Eigenvalue conditions
disp("A*x = ");
A*x % should be the same as lambda * x
disp("lambda*x = ");
lambda*x % should be the same as A * x
disp("Rayleigh quotient of Eigenvector x");
(x'*A*x) ./(x'*x) % Rayleigh quotient
norm(x) % norm of EV is 1

clc;
%% Inverse Power method (with shift)
eig(A)
mu = 1
[lambda,x,it] = inversePowerMethodShift(A,mu,x0,itMax, eps)

clc
%% (Inverse?) Power method (with dynamic shift)
eig(A)
[lambda,x,it] = powerMethodDynShift(A,20,x0,itMax, eps)