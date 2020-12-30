%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Script to check the functionality of the secant method to find roots.
%}

%% Clearing Workspace
clc; clear; close all;

%% Secant method
%% Initialisation
f =      @(x) cos(2*x)^2-x^2; % interval [0,1.5]
xm1 = 0;
x0 = 0.75;
itMax = 1000;
tolerance = 10e-10;
%% Computation
[x1,it1] = secantMethod(f,x0,xm1,itMax, tolerance)
