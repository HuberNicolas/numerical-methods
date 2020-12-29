function [A,b] = forwardGaussianElimination(A,b)
%   Forward Gaussian Elimination (overwrites A and b)
%   Matrix A does not store 0's, instead keeping the old A values
%   
%   Input:
%           A        : square matrix of the system Ax = b
%           b        : right side of the system Ax = b
%
%   Output:
%           A        : upper triangular part U of modified A 
%           b        : modified right side b

   %% Check if L is a square matrix
    sz = size(A);
    n = sz(1); % n = dimension
    if sz(1) ~= sz(2)
        disp("Error, matrix U is not a square matrix");
        return
    end
    
    %% Computation
    for k = 1:n-1                                   % loop on diagonal elements
        for i = k+1:n                               % loop on rows
            I(i,k) = A(i,k)/A(k,k);                 % A(k,k) ~= 0 (pivot element)
            for j = k+1:n                           % loop on columns
                A(i,j) = A(i,j) - I(i,k)*A(k,j);    % rewrite A    
            end
            b(i) = b(i) - I(i,k)*b(k);              % rewrite b
        end
    end
end 