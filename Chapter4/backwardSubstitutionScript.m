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
bA = [13;11;13];
% x = [1;2;3]
%% Computation
U = [1,3,2;0,-3,-3;0,0,4]; % system A after gaussian 
b = [13;-15;12]; % right side b after gaussian
x = backwardSubstitution(U,b);
U\b; % check for the backward substitution


