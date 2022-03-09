function [theta] = normalEqn(X, y)

  theta = zeros(size(X, 2), 1);

  % My Code:
  theta = pinv(X' * X) * X' * y;

end
