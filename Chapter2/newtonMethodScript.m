%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Script to check the functionality of different root finding methods.
%}

%% Clearing Workspace
clc; clear; close all;

%% Newton Method
%% Initialisation
f =      @(x) x^3 - 4*x^2 - 1;
fprime = @(x)       3*x^2 - 8*x;
x01 = 0.5;
itMax = 1000;
tolerance = 5e-10;
%% Computation
[x1,it1] = newtonMethod(f,fprime,x01,itMax,tolerance);

%% modified Newton Method
%% Initialisation
g =      @(x) (x-1)*log(x);
gprime = @(x) (-1/x) + log(x) + 1;
x02 = 1.5;
m = 2; % double zero at x = +
itMax = 1000;
tolerance = 5e-10;
%% Computation
[x2,it2] = modifiedNewtonMethod(g,gprime,x02,2,itMax,tolerance);