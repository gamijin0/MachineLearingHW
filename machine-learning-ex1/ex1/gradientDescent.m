function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    
    tmptheta = theta;
    
    tmpsum1 = 0;
    tmpsum2 = 0;
    for i = 1:m,
        tmpsum1 = tmpsum1 + (X(i,:)*tmptheta - y(i))*X(i,1);
        tmpsum2 = tmpsum2+ (X(i,:)*tmptheta - y(i))*X(i,2);
    end;
    theta(1) = theta(1) - alpha/m*tmpsum1;
    theta(2) = theta(2) - alpha/m*tmpsum2;
    %cost = computeCost(X, y, theta)
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
