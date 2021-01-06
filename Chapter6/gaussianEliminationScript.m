%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    (Forward) Gaussian Elimination Methods
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
A = [1,3,2;2,3,1;2,1,3];
b = [13;11;13];
% x = [1;2;3]

%% Computation
[B,c] = forwardGaussianElimination(A,b)  % B does not store 0's
[C,d] = forwardGaussianEliminationU(A,b) % C does store 0's

