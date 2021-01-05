function [yeval] = monomialInterpolation(x,y,xeval)
%   Monomial interpolation method to compute y values for a given set
%   x for a interpolated function given by a dataset with the Vandermode
%   matrix. 
%   
%   Input:
%           x        : x values of the dataset
%           y        : y values of the dataset
%           xeval    : x values for he new 
%
%   Output:
%           y_eval   : vector containing all the new computed y values that
%                      corresponds to the xeval values
    
    %% Sanity check of  the dataset
    szx = size(x); % number of x entries of the dataset
    szy = size(y); % number of y entries ot the dataset
    if szx(1) ~= szy(1)
        disp("invalid set of datapoints");
        return
    end
    
    %% Initialisation
    n = szx(1); % numbers of different datapoints
    V = zeros(n,n) % init n * n+1 Vandermode matrix
    V(:,1) = ones()
    %% Create Vandermonde matrix
    for j = 1:n % rows
        for k = 2:n % columns, start with the 2nd entry
            V(j,k) = x(j).^(k-1)
        end
    end
    %% Calculate c coefficients by solving the system Ac = y
    V = V
    c = V\y
    c = flip(c) % flip coeffient matrix, since c0 is at the top and cn at the bottom
    yeval = polyval(c,xeval); % compute new points
end  