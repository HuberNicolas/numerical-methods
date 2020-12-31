function [fun] = lagrangianInterpolation(x,y)
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
    
    %% Initialisation
    szx = size(x)
    szy = size(y)
    if szx(1) ~= szy(1)
        disp("invalid set of datapoints");
        return
    end
    n = szx(1)-1;
    L=ones(szx(1),szx(1));
    %% Computation
    for k=0:n % k-th lagrangian base function
        L(:,1)= y(k+1,:)';
        for j=0:n
            if j ~= k
                disp(j); % works
                L = L
            end
        end
        
    end
   


end  