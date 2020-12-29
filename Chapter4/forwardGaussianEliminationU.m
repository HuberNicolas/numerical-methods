function [A,b] = forwardGaussianEliminationU(A,b)
%   Forward Gaussian Elimination (overwrites A and b)
%   Matrix A does store 0's
%   Input:
%           A        : square matrix of the system Ax = b
%           b        : right side of the system Ax = b
%
%   Output:
%           U        : upper triangular matrix U based on A
%           b        : modified right side b

   %% Check if L is a square matrix
    sz = size(A);
    n = sz(1); % n = dimension
    if sz(1) ~= sz(2)
        disp("Error, matrix U is not a square matrix");
        return
    end
    
    %% Computation
    % compute all values from diagonal element up to the end
    for k = 1:n-1                                   % loop on diagonal elements
        for i = k+1:n                               % loop on rows
            I(i,k) = A(i,k)/A(k,k);                 % A(k,k) ~= 0 (pivot element)
            for j = k+1:n                           % loop on columns
                A(i,j) = A(i,j) - I(i,k)*A(k,j);    % rewrite A    
            end
            b(i) = b(i) - I(i,k)*b(k);              % rewrite b
        end
    end
    % write 0 for all elements from the beginning up to the diagonal element
    for k = 1:n-1
        for i = k+1:n
            A(i,k) = 0;
        end
    end
end 