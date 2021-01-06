%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Skript for LU-Factorisation
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
A = [1,3,2;2,3,1;2,1,3];
%L = [1,0,0;2,1,0;2,1.66667,1];
%U = [1,3,2;0,-3,-3;0,0,4];
%% Computation
% METHOD 1
[A_LU] = gaussLUFactorisation(A)
% extract
A_L = [1,0,0;2,1,0;2,1.66667,1];
A_U = [1,3,2;0,-3,-3;0,0,4];

% METHOD 2
[L,U] = LUFactorisationNonPivoting(A)


%% Check solution
[Lcalc, Ucalc] = lu(sparse(A), 0)
% extract
Lcalc = [1,0,0;2,1,0;2,1.66667,1];
Ucalc = [1,3,2;0,-3,-3;0,0,4];
Lcalc*Ucalc
% https://stackoverflow.com/questions/41150997/perform-lu-decomposition-without-pivoting-in-matlab
% lu(A) does LU-Factorisation with Pivoting, which means we cannot check with this