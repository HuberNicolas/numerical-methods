function [coeff] = naturalspline(nodes,yys)
    % Function docstring
    
  
    %% Initialisations
    
    % Retrieving the number of nodes
    n = length(nodes);
    
    % Retrieving the subinterval lengths
    h = nodes(2:end)-nodes(1:end-1); % 2-1, 3-2, 4-3,...
    
    %% Computation of the coefficients ci
    % Initialising the matrix A st A*c = yb
    A = zeros(n);
    
    % Construct the submatrix to get the coefficients from 1 to n-2
    M = diag(h(1:end-2),-1)+diag(h(1:end-1)+h(2:end))+diag(h(2:end-1),1);
    A(2:end-1,2:end-1) = M;
    A(2,1) = h(1);
    
    % Fill the rest of the matrix according the conditions directly imposed
    % on c
    A(1,1) = 1; % Imposing c0 = 0 hardly
    A(end,:) = [zeros(1,n-2), h(end-1), 2*(h(end-1)+h(end))];
    
    % Scaling the matrix to 1/3
    A = A./3;
    
    % Computing the vector yb
    b = ((yys(3:end)-yys(2:end-1))./h(2:end)) - ((yys(2:end-1)-yys(1:end-2))./h(1:end-1));
    b = [0; b ;0]; % add 0 to the top and the bottom of b
    
    % Solve to retrieve ci
    c = A\b;
    
    %% Retrieving the coefficients ci and di
    % Computing di
    d = (1/3).*(c(2:end)-c(1:end-1))./(h);
    
    % Computing bi
    b = (yys(2:end)-yys(1:end-1)-c(1:end-1).*h.^2-d.*h.^3)./h;

    %% Defining the coefficient matrix
    coeff = [d, c(1:end-1), b, yys(1:end-1)]; % insted of yys'