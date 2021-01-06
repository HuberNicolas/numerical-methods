function [C] = leastSquare(x,y,m)
%   Description: (Polynomial) Least Square method
%                 https://en.wikipedia.org/wiki/Polynomial_regression
%   
%   Input:
%           x        : x values of the dataset
%           y        : y values of the dataset
%           m        : degree m 
%
%   Output:
%           C        : coefficient matrix C for the interpolated polynom
%                      order (high - low): ^m, ^(m-1), ^(m-2), ... , ^(1), ^(0)
%

    n = length(y);
    %A = size(n,n+1)
    % create Vandermonde matrix A

    for j = 1:n
        for k = 1:m
            A(j,k) = x(j).^(k);
        end
    end
    A = [ones(n,1),A]; % add first col of 1's
    
    % solve system A'Ax = A'y
    
    c1 = (A'*A)\(A'*y); % solve with "backslash"
    c1 = flip(c1); % flip order (highest order coeff first)
    
    c2 = (A'*A)^(-1) * A' * y; % same, solve with inverse
    c2 = flip(c2); % flip order (highest order coeff first)
    
    c3 = polyfit(x,y,m); % matlab solution
    C = c1;
    
    % plot
    p = polyval(c1,x);
    plot(x,p);
end  

    
