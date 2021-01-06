%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Thomas Algortihm Mistake on Slide 11 (not ei/ai-1 but ei/alphai-1);
    correct Version on Slide 8 one week later
%}

%% Clearing Workspace
clc; clear all; close all;

%% Cholesky-Decomposition
% Initialisation
A = [1 -1 0; -1 5 0; 0 0 7];

% Computation
R = choleskyFactorisation(A);
C = R'*R;
R2 = chol(A); % check with Matlab

%% Thomas-Decomposition (Efficient LU for Tridiagonal Matrices)
clc; clear all; close all;
n = 5;
% Initialisation
D = 2.04 .* ones(n,1); % main diag
D1 = (-1).* ones(n-1,1); % sub diag
A = diag(D)+diag(D1,-1)+diag(D1,+1);
y = [20.8; 0.8; 0.8; 0.8; 100.8];

[L,U] = thomasFactorisation(A)
B = L*U % check if Algorithm was sucessfull
% Ax = y
% LUx = y
b = L\y
x = U\b


