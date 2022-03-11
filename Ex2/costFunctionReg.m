function [J, grad] = costFunctionReg(theta, X, y, lambda)


    m = length(y); % number of training example
    J = 0;
    grad = zeros(size(theta));
    
    z = X * theta;
    h = sigmoid(z);

    J = sum(-y .* log(h) - (1 - y) .* log(1 - h)) / m + lambda;
    J = J / 2;
    J = J / m * sum(theta(2:end) .^ 2);

    grad = sum((h - y) .* X) / m;
    grad(2:end) = grad(2:end) + lambda / m .* theta(2:end);

    
end
