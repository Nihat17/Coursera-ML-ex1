function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X_norm, 2));   %size(X,2) = 2
mu1 = mean(X_norm);
mu(1,1) = mu1(1,1);
mu(1,2) = mu1(1,2);
%disp(sprintf('X : %0.3f',X));

top = X_norm(:,1) .- mu(1,1);
top2 = X_norm(:,2) .- mu(1,2);

%disp(sprintf('mu1: %0.3f',mu(1,1)));
%disp(sprintf('mu1: %0.3f',mu(1,2)));

sigma = zeros(1, size(X_norm, 2));  % size(X,2) =2;
std1 = std(X_norm);
sigma(1,1) = std1(1,1);
sigma(1,2) = std1(1,2);
%disp(sprintf('sigma1: %0.3f',sigma(1,1)));
%disp(sprintf('sigma2: %0.3f',sigma(1,2)));
X_norm(:,1) = top ./ sigma(1,1);
X_norm(:,2) = top2 ./ sigma(1,2);
%disp(sprintf('X : %0.3f',X_norm));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
