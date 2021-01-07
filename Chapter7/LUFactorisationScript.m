%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Skript for LU-Factorisation (Sparse Matrices)
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
n = 7;
D = 4*ones(n,1); % main diagonal
D1 = -3*ones(n-1,1); % first upper diag
D2 = 2*ones(n-2,1); % second upper diag
Dm1 = 5*ones(n-1,1); % fist lower diag
Dm2 = ones(n-2,1); % second lower diag
A = diag(D)+diag(D1,1)+diag(D2,2)+diag(Dm1,-1)+diag(Dm2,-2);
p = 2;
q = 2;
%% Computation
B = A;
[L,U] = LUFactorisationNonPivotingSparse(A,p,q)
Acalc = L*U
B = B % seems to work




%L = [1,0,0;2,1,0;2,1.66667,1];
%U = [1,3,2;0,-3,-3;0,0,4];
%% Computation
%[L,U] = 