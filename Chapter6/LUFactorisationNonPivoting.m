function [L,U] = LUFactorisationNonPivoting(A)
%   Computes LU-Factorisation of A (A = LU)
%   (without pivoting)
%   
%   Input:
%           A        : square Matrix A
%
%   Output:
%           L        : lower triangular matrix L of the LU-Decomposition of A
%           U        : upper triangular matrix U of the LU-Decomposition of A

    %% Check if L is a square matrix
        sz = size(A);
        n = sz(1); % n = dimension
        if sz(1) ~= sz(2)
            disp("Error, matrix U is not a square matrix");
            return
        end
    %% Computation
    L = eye(n);
    for k = 1:n
        % For each row k, access columns from k+1 to the end and divide by
        % the diagonal coefficient at A(k ,k)
        L(k+1:n,k) = A(k+1:n,k) / A(k,k);
        % For each row k+1 to the end, perform Gaussian elimination
        % In the end, A will contain U
        for l=k+1:n
            A(l,:) = A(l,:) - L(l,k)*A(k,:);
        end
    end
    U = A;
end  