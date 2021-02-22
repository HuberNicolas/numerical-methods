%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
maxIt = 500;
eps = 10e-8;
x0 = [1;1;1];
aas = linspace(-2,2,500);
for j = 1:500
    A = [aas(j),1,1;1,3,-1;1,-1,2]
end

%% Computation

%% Plotting

