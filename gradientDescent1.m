function [history] = gradientDescent1(X, Y, theta, alpha, num_iters)
m = length(Y); % number of training examples
cost = zeros(num_iters, 1);


for iter = 1:num_iters
A=((theta)')*X'-Y';
B=A*X;
delta = (1/(m))*B';
theta=theta-(alpha)*delta;

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    cost(iter) = [computeCost(X, Y, theta)];
    

end
history=[cost];
end
