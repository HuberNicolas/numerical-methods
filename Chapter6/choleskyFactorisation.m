function [A] = choleskyFactorisation(A)
%   Computes Cholesky-Factorisation of A (A = R'R)
%   R' is unlike L of the LU factorsiation not necessarily unitary.
%   
%   Input:
%           A        : square matrix A
%
%   Output:
%           A        : upper triangular matrix R of the Cholesky-Decomposition of A
%
    
    %% Check if L is a square matrix
        sz = size(A);
        n = sz(1); % n = dimension
        if sz(1) ~= sz(2)
            disp("Error, matrix U is not a square matrix");
            return
        end
    for k=1:n-1
        % check if pivot element is > 0
        if A(k,k) <= 0
            disp("Error, negtativ or zero pivot element");
            return
        end
        A(k,k) = sqrt(A(k,k));
        A(k+1:n,k) = A(k+1:n,k)/A(k,k);
        for j=k+1:n
            A(j:n,j)=A(j:n,j)-A(j:n,k)*A(j,k);
        end
    end
    A(n,n) = sqrt(A(n,n));
    A = tril(A);
    A = A';
end  

    
