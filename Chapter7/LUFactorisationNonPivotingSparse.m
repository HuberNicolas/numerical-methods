function [L,U] = LUFactorisationNonPivotingSparse(A,p,q)
%   Computes LU-Factorisation of A (A = LU)
%   (without pivoting, A is a Sparse matrix)
%   
%   Input:
%           A        : square Matrix A
%           p        : lower bandwith (# of lower diagonals)
%           q        : upper bandwith (# of upper diagonals
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

    for k = 1:n-1 % iterate over all rows - 1
        for i = k+1:k+p % run vertical (make zeros)
            if i > n % did not find "nice" solution :/
                break
            end
            %a(k,k) = pivot
            L(i,k) = A(i,k)./ A(k,k); % entry in L (
            for j = k+1:k+q
                if j > n % did not find "nice" solution :/
                    break
                end
                %fprintf("k = %d, i = %d, j = %d ",k,i,j);
                A(i,j) = A(i,j) - L(i,k).*A(k,j); % run horicontal (compute other entries in row != 0)                
            end
        end
    end
    U = triu(A);
    
end  