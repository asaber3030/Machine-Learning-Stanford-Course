function J = computeCostMulti(X, y, theta)

  m = length(y); % number of training examples

  J = 0;

  % My Code:

  J = (1 / (2 * m)) * sum(((theta * X) - y) .^ 2);

end
