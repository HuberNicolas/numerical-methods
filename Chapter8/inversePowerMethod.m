function [lambda,x,it] = inversePowerMethod(A,x0,itMax, eps)
%   Implementation of the inverse power method to find Eigenvalues and Eigenvecotrs
%   of a square matrix A.
%   
%   Input:
%           A        : square matrix a
%           x0       : initial guess
%           itMax    : maximal number of iterations
%           eps      : tolerance
%
%   Output:
%           lambda   : Eigenvalue lambda with the lowest magnitude
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
    x0 = x0/norm(x0); % in slides y0 instead of x0
    B = A
    [L,U] = lu(B); % LU - Decomposition of Matrix B 
    x0= x0/norm(x0);
    z0 = L\x0;
    xk = U\x0;
    lambda = x0'*xk; % calculate initial lambda
    it = 0;
    err = eps*abs(lambda)+1
    %% Iteration
    while it <= itMax & err > eps*abs(lambda)
        x = xk;
        x = x/norm(x);
        z = L\x;
        xk = U\z;
        lambdanew = x'*xk;
        err = abs(lambdanew - lambda);
        lambda = lambdanew;
        it = it+1;
    end
    lambda = 1/lambda;
end  

    
