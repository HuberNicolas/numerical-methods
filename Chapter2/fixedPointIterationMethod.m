function [x,it] = fixedPointIterationMethod(fun, phi, x0, itMax, eps)
%   Implementation of the fixed point iteration to find roots
%   
%   Input:
%           fun          : function that we want to find a root
%           phi          : iteration function
%           xx           : initial guess
%           itMax        : maximal number of iterations
%           eps          : tolerance
%
%   Output:
%           x            : found root
%           it           : number of performed iterations

   %% Initialisation
    it = 0;
    x = x0;
    % check, we might are lucky
    if abs(fun(x0) - 1e-12) < eps
        return
    end
    
    %% Procedure
    while (it < itMax) && (abs(fun(x) - 1e-12) > eps) % Stopping criterion: residum
        x = phi(x);
        it = it + 1;
    end
end

  