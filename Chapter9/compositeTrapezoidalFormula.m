function [I] = compositeTrapezoidalFormula(fun,a,b,n)
%   Composite method of the trapezoidal integration formula
%   
%   Input:
%           fun      : to be integrated function
%           a        : lower x value of the integral
%           b        : upper x value of the intergral
%           n        : number of steps
%
%   Output:
%           I        : value of the integral of f(x) between a and b
%

    %% Initalisation
    h = (b-a)/n; % stepwidth
    xk = linspace(a,b,n+1); % generate n intervals between a and b with width = h
    s = 0;
    
    %% Computation
    for j = 2:length(xk)-1
        s = s + fun(xk(j));
    end
    sum = fun(a) + 2*s + fun(b);
    I = (h/2)* sum;

end  