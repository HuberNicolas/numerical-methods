%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Skript to investiagte the piecewiese interpolation method.
    (polynomial, spline (quadratic))
    TO-DO:  - Piecewise constant interpolation
            - spline (qubic)
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
% linear piecewise interpolation
yevall = linearPiecewiseInterpolation(x,y,xeval);
yeval2 = interp1(x,y,xeval); % integrated Matlab solution
yeval3 = interp1q(x,y,xevalQuick); % integrated Matlab solution, faster

% quadratic Spline interpolation
S1 = quadraticSplineInterpolation(x,y);
S2 = quadraticSplineInterpolation2(x,y);
%yeval5 = quadraticSplineInterpolationQuarteroni(x,y,xeval) % Copyright by QUARTERONI

% qubic Spline interpolation
zsp = [x(1):0.01:x(end)];
s = spline(x,y,zsp);
plot(x,y,'o',zsp,s)


%% Plotting
