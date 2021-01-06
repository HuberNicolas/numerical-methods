function [b] = forwardSubstitution(L,b)
%   Forward substitution (column oriented, overwrites b)
%   
%   Input:
%           L        : lower matrix of the system Ax = b (after gaussian)
%           b        : right side of the system Ax = b (after gaussian)
%
%   Output:
%           b        : x vector in the overwritten b

    %% Check if L is a square matrix
    sz = size(L);
    n = sz(1); % n = dimension
    if sz(1) ~= sz(2)
        disp("Error, matrix U is not a square matrix");
        return
    end
    %% Computation
    for j = 1:n-1
        b(j) = b(j) / L(j,j);
        b(j+1:n) = b(j+1:n)-b(j)*L(j+1:n,j);
    end
    b(n) = b(n)/L(n,n);
end

%% Notes
% b(j+1:n) : all values of b above the actual calculated
% b(j) : the actual calculated x value * L(j+1:n,j) : the entry in matrix L