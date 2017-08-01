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
    %
    
    #Wrong:
      %theta(1) = theta(1) - (alpha / m * sum(((theta' * X')' - y)' * X(:,1)));
      %theta(2) = theta(2) - (alpha / m * sum(((theta' * X')' - y)' * X(:,2)));
    
    #After debug:
    delta = ((theta' * X') - y');  % 1x2 * 2x97 - 1x97
    theta = theta - (alpha / m * (delta * X))'; % 2x1 - (1x97 * 97x2)'

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

    #disp(sprintf('At %0.1f, theta is %0.5f and %0.5f, Cost: %0.8f',iter, theta(1),theta(2),J_history(iter)))

end

end
