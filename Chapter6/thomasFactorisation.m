function [L,U] = thomasFactorisation(A)
%   Computes Thomas-Factorisation of A (A = LU)
%   
%   Input:
%           A        : tridiagonal matrix A
%
%   Output:
%           A        : upper triangular matrix R of the Cholesky-Decomposition of A
%
    
    %% Check if L is a square matrix
        sz = size(A);
        n = sz(1) % n = dimension
        if sz(1) ~= sz(2)
            disp("Error, matrix U is not a square matrix");
            return
        end
        
    %% Initialisation    
    Ci = diag(A,1); % c1 to c(n-1)
    Ai = diag(A); % a1 to an
    Ei = diag(A,-1); % e2 to en, add placeholder for e1
    Ei = [0;Ei] % PLACEHOLDER, that we can start iterating form j=2
    alpha(1) = A(1,1); % alpha1

    %% Computation
    for j = 2:n
        beta(j) = Ei(j)./alpha(j-1) % NOT aj-1!
        alpha(j) = Ai(j) - beta(j).*Ci(j-1)
    end
    
    % generate L
    L = diag(ones(n,1))
    L = L + diag(beta(2:end),-1) % first entry is a zero, we start with beta_2
    
    % generate U
    U = diag(alpha)
    U = U + diag(Ci,1)
end  

    
