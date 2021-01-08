function [lambda,x,it] = powerMethodDynShift(A,mu,x0,itMax, eps)
%   Implementation of the inverse power method with shift to find Eigenvalues and Eigenvecotrs
%   of a square matrix A.
%   
%   Input:
%           A        : square matrix a
%           x0       : initial guess
%           itMax    : maximal number of iterations
%           eps      : tolerance
%
%   Output:
%           lambda   : Eigenvalue lambda that is next to mu
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
        y0 = x0/norm(x0); % in slides y0 instead of x0
        
        lambda = y0'*A*y0; % calculate initial lambda
        xk = y0
        it = 0;
        err = eps*abs(lambda)+1
    %% Iteration
    while it <= itMax & err > eps*abs(lambda)
        x = xk
        x = x/norm(x)
        B = A - lambda*eye(n);
        [L,U] = lu(B); % LU - Decomposition of Matrix B 
        
        z0 = L\x;
        xk = U\z0;
        
        x= xk/norm(xk);

        lambdanew = x'*xk;
        alpha = (x'*A*x) ./ (x'*x)
        lambda = 1/lambdanew + alpha
        err = abs(lambdanew - lambda);
        it = it+1;
    end
end  

    
