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
    % ============================================================
    h = X * theta;
    errors = h - y;
    delta = X' * errors;
    theta = theta - (alpha / m) * delta;
    
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    t=J_history(iter);
    plot(iter,t,'g*')
    hold on
end


end
% optimized values for gradient descent for linear regresssion
%theta =
 %   0.3936
  %  0.0530
  % -0.0179
%fval =
 %   0.1146
    
    
    
  % optimised values for logistic regression using the fminunc function  
  %  theta =
  % -0.4537
   % 0.2276
   %-0.0770
%fval =
%    0.6500

%optimized values for logistic regression using the costFunction program.
%fval =
%    0.6500

%theta =
 %  -0.4462
  %  0.2269
  % -0.0781