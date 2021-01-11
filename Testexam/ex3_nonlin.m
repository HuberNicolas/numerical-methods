%% Author
%{
    Nicolas Huber
    16-936-205
    BA Information Systems @ UZH, Switzerland
%}

%% Clearing Workspace
clc; clear all; close all;

%% Initialisation
f = @(x) (x-1)*log(x);
df =  @(x) 1 + log(x) - (1./x);
m = 2;
a = 0.5;
b = 1.8;
x0 = (b-a)./2;
[x,it,xvec] = stdNewton(f,df,x0)