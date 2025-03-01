function J = computeCost(X, Y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, Y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(Y); % number of training examples

% You need to return the following variables correctly 
A=((theta)')*X'-Y';
B=A.^2;
J = (1/(2*m))*(sum(B',1));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
