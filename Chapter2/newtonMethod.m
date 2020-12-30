function [x,it] = newtonMethod(fun, dfun, x0, itMax, eps)
%   Implementation of the Newton Method to find roots
%   
%   Input:
%           fun          : function that we want to find a root
%           fprime       : first derivative of fun
%           x0           : initial guess
%           itMax        : maximal number of iterations
%           eps          : tolerance
%
%   Output:
%           x            : found root
%           it           : number of performed iterations

   %% Initialisation
    % check, we might are lucky
    it = 0;
    if abs(fun(x0) - 1e-12) < eps
        x = x0;
        return 
    end
    %% Procedure
    while (it < itMax) && (abs(fun(x0) - 1e-12) > eps)
        x0 = x0 - (fun(x0)/dfun(x0));
        it = it+1;
    end
    x = x0;

end