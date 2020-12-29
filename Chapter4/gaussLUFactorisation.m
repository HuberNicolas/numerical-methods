function [A] = gaussLUFactorisation(A)
%   Computes the LU-Factorisation of A and stores them in A
%   (column oriented, overwrites A) 
%   
%   A = LU in which
%   L : lower triangular matrix (diagonal entries of L := 1)
%   U : upper triangular matrix 
%     
%   Input:
%           A        : square matrix A
%
%   Output:
%           A        : modified matrix A, that contains L and U of the LU-Factorisation

    %% Check if L is a square matrix
        sz = size(A);
        n = sz(1); % n = dimension
        if sz(1) ~= sz(2)
            disp("Error, matrix U is not a square matrix");
            return
        end
    %% Computation
    for j = 1:n
        for k = 1:j-1
            for i = k+1:n
                A(i,j) = A(i,j)-A(i,k)*A(k,j);
            end
        end
        for i = j+1:n
            A(i,j) = A(i,j)/A(j,j);
        end
    end
    
end