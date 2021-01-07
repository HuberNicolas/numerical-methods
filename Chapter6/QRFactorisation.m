function [Q,R] = QRFactorisation(A)
%   Computes QR-Factorisation of A (A = QR) with the Grahm-Schmidt
%   Algorithm
%   
%   Input:
%           A        : square matrix A
%
%   Output:
%           Q        : orto matrix Q of the QR-Decomposition of A
%           R        : upper triangular matrix R of the QR-Decomposition of A
%
    
    %% Check if L is a square matrix
        sz = size(A);
        n = sz(1); % n = dimension
        if sz(1) ~= sz(2)
            disp("Error, matrix U is not a square matrix");
            return
        end
        
    % Initialise
    R=zeros(n);
    Q=zeros(n,n);
    % Iterate
        for k=1:n % iterate over all columns of A
            % Copy all columns of A into k
            Q(:,k) = A(:,k);
            for l=1:k-1 % triangle shape
                R(l,k) = Q(:,k)'*Q(:,l); 
                Q(:,k) = Q(:,k) - R(l,k)'*Q(:,l); % subtract the "direction" of the previous one
            end
            R(k,k) = norm(Q(:,k));
            Q(:,k) = Q(:,k)/R(k,k); % normalise Q colum vector
        end

end  

    
