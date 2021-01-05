function [y_eval] = lagrangianInterpolationBarycentric(x,y,xeval)
%   Interpolation method that uses Barycentric weights 
%   to compute y values for a given set x for a interpolated
%   function given by a dataset
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
    n = length(x); % number of datapoints ######np = n
    sz = size(xeval); % number of points that need to be evaluated
    a = min(x); % lower border of the interval
    b = max(x); % upper border of the interval
    w = ones(n,1); % initialise weights
    C = 4/(b-a); % to avoid under- and overflows
    
    %% Computation
    % Compute weights w
    for j = 1:n
        for k = 1:j-1
            w(j) = w(j)*(x(j)-x(k))*C;
        end
        % important: leave k = j out!
        for k = j+1:n
            w(j) = w(j)*(x(j)-x(k))*C;
        end
    end
    w = 1./w; % ^(-1), w is done
    
    % Compute numerator and denumerator
    numer = zeros(size(xeval)); % numerator
    denum = numer; % denumerator
    exact = numer;
    for j = 1:n
        % calculate new values
        xdiff = xeval-x(j); % x - xk
        wx = w(j)./xdiff; % wk
        % add the new values
        denum = denum + wx;
        numer = numer + wx*y(j);
        exact(xdiff == 0)=j;
    end
    y_eval = numer./denum;
    for m = 1:length(xeval)
        if exact(m) > 0
            y_eval(m) = y(exact(m));
        end
end  

    
