function [Q,R] = QRFactorisationEconomic(A)
%   Computes QR-Factorisation of A (A = QR) with the modified Gram-Schmidt
%   Algorithm
%   
%   Input:
%           A        : m*n matrix A, m > n
%
%   Output:
%           Q        : m*m orthonormal matrix Q of the QR-Decomposition of A
%           R        : n*n upper triangular matrix R of the QR-Decomposition
%                      of A, R = [~R ; 0]
%         

    %% Initialise
    [m,n] = size(A);
    rank = min(m,n)
    Q = zeros(m,n);
    R = zeros(n);
    Q(1:m,1) = A(1:m,1)
    R(1,1) = 1
    %% Iterate
        for k=1:n % iterate over all columns of A
            R(k,k) = norm(A(1:m,k));
            Q(1:m,k) = A(1:m,k)/R(k,k);
            j=[k+1:n];
            R(k,j) = Q(1:m,k)'*A(1:m,j);
            A(1:m,j) = A(1:m,j)-Q(1:m,k)*R(k,j);
        end
end  

    
