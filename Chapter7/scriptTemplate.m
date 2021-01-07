%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Skript for iterative methods
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
A = [3, -0.1, -0.2; 0.1, 7, -0.3; 0.3, -0.2, 10]
b = [7.85; -19.3; 71.4]
x0 = [0;0;0]
itMax = 10000;
eps = 10e-10;
w = 1;
%% Computation
[x,it] = gaussSeidelMethodWeighting(A,b,x0,itMax,eps,w);
%% Plotting

