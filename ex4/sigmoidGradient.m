function g = sigmoidGradient(z)
%SIGMOIDGRADIENT returns the gradient of the sigmoid function
%evaluated at z
%   g = SIGMOIDGRADIENT(z) computes the gradient of the sigmoid function
%   evaluated at z. This should work regardless if z is a matrix or a
%   vector. In particular, if z is a vector or matrix, you should return
%   the gradient for each element.

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the gradient of the sigmoid function evaluated at
%               each value of z (z can be a matrix, vector or scalar).

sig1=sigmoid(z);
sig2=1-sigmoid(z);
g=sig1.*sig2;












% =============================================================




end

%J(?)=?1m?i=1m?k=1K[y(i)klog((h?(x(i)))k)+(1?y(i)k)log(1?(h?(x(i)))k)]+?2m?l=1L?1?i=1sl?j=1sl+1(?(l)j,i)2;
