%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Skript to investiagte the piecewiese interpolation method.
    (linear )
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
x = [3;4.5;7;9];    % dataset
y = [2.5;1;2.5;0.5];    % dataset
% secure
xeval      = [6,9,5,7,3]; % where to evaluate
xevalQuick = [3;5;6;7;9]; % where to evaualte for interp1q 


%% Computation
yevall = linearPiecewiseInterpolation(x,y,xeval);
yeval2 = interp1(x,y,xeval); % integrated Matlab solution
yeval3 = interp1q(x,y,xevalQuick); % integrated Matlab solution, faster
S = quadraticSplineInterpolation(x,y);
%% Plotting
