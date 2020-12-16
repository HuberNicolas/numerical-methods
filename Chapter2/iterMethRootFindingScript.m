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

%% Initialisation
f1 = @(x) x^3+x^2-6.*x;
f = @(x) x^3-3.*x^2-x+3;
xa = -0.5;
xb = 2.8;
itMax = 1000;
tolerance = 5*10^(-10);

%% Computation
[m,it] = bisectionMethod(f,xa,xb,itMax,tolerance);

%% Plotting

