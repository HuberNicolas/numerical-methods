function [I] = trapezoidalFormula(fun,a,b)
%   Description:
%   
%   Input:
%           fun      : to be integrated function
%           a        : lower x value of the integral
%           b        : upper x value of the intergral
%
%   Output:
%           I        : value of the integral of f(x) between a and b
%

    %% Computation
    I = (b-a).* ((fun(a)+fun(b))./2);
end