function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

  m = length(y); % number of training examples
  J_history = zeros(num_iters, 1);

  for iter = 1:num_iters

    % My Code:
    error = (X * theta) - y;
    theta = theta - ((alpha / m) * X' * error);
    % End

    % Save the cost J in every iteration
    J_history(iter) = computeCostMulti(X, y, theta);

  end

end
