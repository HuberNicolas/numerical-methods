%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Different Substitution methods
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
A = [1,3,2;2,3,1;2,1,3];
bA = [13;11;13];
% x = [1;2;3]
%% Backward substitution
U = [1,3,2;0,-3,-3;0,0,4]; % system A after gaussian in upper matrix form 
b = [13;-15;12]; % right side b after gaussian
x = backwardSubstitution(U,b)
U\b % check backward substitution

%% Forward substitution
L = [-9/2,0,0;4/3,8/3,0;2,1,3]; % system A after gaussian in lower matrix form
b = [-9/2;20/3;13]; % right side b after gaussian
x = forwardSubstitution(L,b)
L\b % check forward substitution

