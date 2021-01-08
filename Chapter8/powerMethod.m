function [lambda,x,it] = powerMethod(A,x0,itMax, eps)
%   Implementation of the power method to find Eigenvalues and Eigenvecotrs
%   of a square matrix A.
%   
%   Input:
%           A        : square matrix a
%           x0       : initial guess
%           itMax    : maximal number of iterations
%           eps      : tolerance
%
%   Output:
%           lambda   : Eigenvalue lambda with the biggest magnitude
%           x        : (normalised)Eigenvector to lambda
%           it       : number of iterations
%
    
    %% Check if L is a square matrix
    [n,m] = size(A); % n = dimension
    if n ~= m
        disp("Error, matrix A is not a square matrix");
        return
    end
        
    %% Initialisation
    y0 = x0 / norm(x0); 
    xk = A*y0; 
    lambda = y0'*xk;
    err = eps*abs(lambda) + 1;
    it = 0;
    %% Iteration
    while (it <= itMax) & (err > eps*abs(lambda)) 
        x = xk; 
        x = x/norm(x);  % normalise to prevent overflows
        xk = A*x;
        lambdanew = x'*xk;
        err = abs(lambdanew - lambda); % compute new weeor
        lambda = lambdanew; % set new computed lambda as acutal lambda
        it = it +1;
    end
    
end  

    
