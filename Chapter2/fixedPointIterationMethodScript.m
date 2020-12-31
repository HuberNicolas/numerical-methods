%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Script to check the functionality fixed point iteration method to find
    roots.
%}

%% Clearing Workspace
clc; clear; close all;

%% Initialisation
f = @(x) exp(-x) - x;
phi = @(x) exp(-x);
x0 = 0.75;
itMax = 1000;
tolerance = 10e-10;

%% Computation
[x,it] = fixedPointIterationMethod(f,phi,0.75,itMax,tolerance);

%% Plotting

