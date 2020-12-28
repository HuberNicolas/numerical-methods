function [b] = backwardSubstitution(U,b)
%   Backward substitution (column oriented, overwrites b)
%   
%   Input:
%           U        : upper matrix of the system Ax = b (after gaussian)
%           b        : right side of the system Ax = b (after gaussian)
%
%   Output:
%           b        : x vector in the overwritten b

    %% Check if U is a square matrix
    sz = size(U);
    n = sz(1); % n = dimension
    if sz(1) ~= sz(2)
        disp("Error, matrix U is not a square matrix");
        return
    end
    %% Computation
    for j = n:-1:2
        b(j) = b(j) / U(j,j);
        b(1:j-1) = b(1:j-1)-b(j)*U(1:j-1,j);
    end
    b(1) = b(1)/U(1,1);
end

%% Notes
% b(1:j-1) : all values of b above the actual calculated
% b(j) : the actual calculated x value * U(1:j-1,j) : the entry in matrix u