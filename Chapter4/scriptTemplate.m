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
A = [1,3,2;2,3,1;2,1,3];
%% Computation
gaussLUFactorisation(A)

[L, U] = lu(sparse(A), 0)
%% Plotting

L = [1,0,0;2,1,0;2,1.66667,1];
U = [1,3,2;0,-3,-3;0,0,4];
L*U
