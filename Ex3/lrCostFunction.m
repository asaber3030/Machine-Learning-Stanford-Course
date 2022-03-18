function [J, grad] = lrCostFunction(theta, X, y, lambda)

  m = length(y); % number of training examples
  J = 0;
  grad = zeros(size(theta));

  % ====================== YOUR CODE HERE ======================

  z = X * theta;
  h = sigmoid(z);
  regularazation = (lambda / (2 * m)) * sum(theta(2:end) .^ 2 );

  J = (-1 / m) * sum((y .* log(h)) - ((1 - y) .* log(1 - h))) + regularazation;

  grad(1) = (1 / m) * (X(:,1)' * (h - y));
  grad(2:end) = (1 / m) * (X(:,2:end)' * (h - y)) + (lambda / m) * theta(2:end);

  % =============================================================

  grad = grad(:);

end
