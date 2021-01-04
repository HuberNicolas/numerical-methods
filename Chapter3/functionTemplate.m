function [fun] = monomialInterpolation(x,y,xeval)
%   Lagrangian interpolation method to compute y values for a given set
%   x for a interpolated function given by a dataset
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

end  