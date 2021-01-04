function [fun] = monomialInterpolation(x,y)
%   Description of the function
%   
%   Input:
%           x        : x values of the dataset
%           y        : y values of the dataset
%
%   Output:
%           x        : a return Value
%           y        : a return Value
%           z        : a return Value

% Add code here of the function you want to create

%% Initialisation
    szx = size(x)
    szy = size(y)
    if szx(1) ~= szy(1)
        disp("invalid set of datapoints");
        return
    end

end  