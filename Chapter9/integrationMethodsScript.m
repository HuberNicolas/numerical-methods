%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}
%% About
%{
    Script to investigate different numerical Integration methods
%}

%% Clearing Workspace
clc; clear all; close all;

% non-composite methods
%% Initialisation
f = @(x) sin(3*x-x.^2).*exp(-x.^2);
a = 0.75;
b = 1.25;

%% Computation
I = integral(f,a,b);
Imp = midpointFormula(f,a,b)
abs(I-Imp);
It = trapezoidalFormula(f,a,b)
abs(I-It);
Is = trapezoidalFormula(f,a,b)
abs(I-Is);
clc; clear all; close all;

% composite methods
%% Initialisation
f = @(x) sin(3*x-x.^2).*exp(-x.^2);
a = -1.25;
b = 1.25;
%% Computation
I = integral(f,a,b)
Icmp = compositeMidpointFormula(f,a,b,10)
Ict = compositeTrapezoidalFormula(f,a,b,10)
Ics = compositeSimpsonFormula(f,a,b,10)
