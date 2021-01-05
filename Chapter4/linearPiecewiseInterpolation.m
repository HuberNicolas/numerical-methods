function [yeval] = linearPiecewiseInterpolation(x,y,xeval)
%   Piecewise linear interpolation method to compute y values for a given (valid!) set
%   x for a interpolated function given by a dataset
%   
%   Input:
%           x        : x values of the dataset
%           y        : y values of the dataset
%           xeval    : x values for he new 
%
%   Output:
%           yeval   : vector containing all the new computed y values that
%                     corresponds to the xeval values
    
    %% Sanity check of  the dataset
    szx = size(x); % number of x entries of the dataset
    szy = size(y); % number of y entries ot the dataset
    if szx(1) ~= szy(1)
        disp("invalid set of datapoints");
        return
    end
    
    %% Initialisation
    n = szy(1); % number of datapoints
    nSubInt = n-1; % number of sub intervals
    sz = size(xeval); % number of points that need to be evaluated
    %a = min(x);
    %b = max(x);
    
    %% Computation
    S = [];  % Matrix to store polynom si for each subinterval
    for j = 1:nSubInt % compute each si polynom
        % si(x) = mx + b
        m = (y(j+1)-y(j))./(x(j+1)-x(j));
        b = y(j) - x(j).*(y(j+1)-y(j))./(x(j+1)-x(j));
        S = [S;m,b];
    end
    % Evaluate
    yeval  = [];
    l = length(xeval);
    for k = 1:length(xeval) % compute for al xeval values the yeval value
        for j = 2:n % find corresponding si for xeval, j+1 is the index of the subinterval, j corresponds to the x node
            if xeval(k) <= x(j)
                %si = S(j-1,:); % extract coefficients of the polynom si from S
                yeval = [yeval; polyval(S(j-1,:),xeval(k))];
                break
            end
        end
    end
end  

    
