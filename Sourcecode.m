%Ethanol to Carbondioxide conversion model. Following linear regression
data=load('logdata.txt');
Y=data(:,1);
l=length(data);
X=[ones(l,1)  data(:,2)  data(:,3)];
theta=zeros(3,1);
iterations=100000;
alpha=0.01;
dat1=zeros(iterations,2);
computeCost(X,Y,theta);
counter = zeros(iterations, 1);
for iter = 1:iterations
counter(iter) = [iter];
end


history= gradientDescent1(X, Y, theta, alpha, iterations);
dat1=[history];
fprintf('Cost function values  :\n');
fprintf('%f\n',dat1);
%--------------------Cost function minimization graph------------------------------------
plot(counter,dat1);
xlabel('Iterations');
ylabel('Cost function');
%--------------------Theta values--------------------------------------------------------
theta= gradientDescent2(X, Y, theta, alpha, iterations);
fprintf('Theta values  :\n');
fprintf('%f\n',theta);
%--------------------Model equation------------------------------------------------------
fprintf('THE FINAL MODEL EQUATION IS:\n')
fprintf('Expected log Ethanol output=')
fprintf('%f',theta(1,:))
fprintf('  +  ')
fprintf('(')
fprintf('%f',theta(2,:))
fprintf(')')
fprintf('log CO.')
fprintf('  +  ')
fprintf('(')
fprintf('%f',theta(3,:))
fprintf(')')
fprintf('log CO2 \n')
%fprintf('+')
%fprintf('%f',theta(4,:))
%fprintf('  Furnace temperature.\n')
%--------------------Result comparison of model with data--------------------------------
prediction=predictor(theta,X);
for pt = 1:l
number(pt) = [pt];
end

plot(number, prediction);
hold on;
plot(number, Y, 'rx', 'Markersize', 10);
xlabel('Datapoints');
ylabel('Values');







