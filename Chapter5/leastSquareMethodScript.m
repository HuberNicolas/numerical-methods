%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Script for the polynomial least square method
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
f = @ (x) 0.05*sin(1000*x)+0.5*cos(pi*x)-0.4*sin(10*x);
a = 0;
b = 1;
m = 100; % number of points
x = linspace(a,b,m);
y = f(x);
x = x';
y = y';

%% Computation
leastSquare(x,y,6);

