
input_features = 400;
output_labels = 10;

fprintf('Loading and Visualizing Data ...\n')
load('crossData.mat'); 
m = size(X, 1);

rand_indices = randperm(m);
sel = X(rand_indices(1:80), :);

displayData(sel);


fprintf('\nLoading Saved Theta Parameters ...\n')

% Load the weights into variables Theta1 and Theta2
load('thetaData.mat');

X = [ones(m, 1) X];

ps = (X*all_theta');
[p_max, i_max]=max(ps, [], 2);
pred = i_max;

acc = mean(double(pred == y)) * 100;
fprintf('\nCross-validation Set Accuracy: %f\n', mean(double(pred == y)) * 100);


