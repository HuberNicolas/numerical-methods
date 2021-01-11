function [I] = compositeMidpointFormula(fun,a,b,n)
%   Composite method of the midpoint integration formula
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

    %% Intialisation
    h = (b-a)/n; % stepwidth
    xk = linspace(a,b,n+1); % generate n intervals between a and b with width = h

    %% Computation
    % compute all midpoints
    for j=1:length(xk)-1
        xm(j) = (xk(j) + xk(j+1))./2;
    end
    
    % compute integral
    sum = 0;
    for j=1:length(xm)
        sum = sum + fun(xm(j)); 
    end
    I = h * sum;
end  

    
