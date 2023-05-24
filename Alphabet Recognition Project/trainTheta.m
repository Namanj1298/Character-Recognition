clear;
clc;
close all;

input_features = 400;
output_labels = 10;

fprintf('Loading and Visualizing Data ...\n')
load('trainData.mat'); 
m = size(X, 1);

rand_indices = randperm(m);
sel = X(rand_indices(1:100), :);

displayData(sel);

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nTraining One-vs-All for Logistic Regression...\n')

lambda = 5;


% Calculating All THETA

m = size(X, 1);
n = size(X, 2);
all_theta = zeros(output_labels, n + 1);
X = [ones(m, 1) X];

	options = optimset('GradObj', 'on', 'MaxIter', 400);
	for c=1:output_labels
	initial_theta = zeros(n + 1, 1);
	[theta] = fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)),initial_theta, options);
	all_theta(c,:)=theta';
	end




fprintf('Program paused. Press enter to continue.\n');
pause;

%Predict OnevsALL

m = size(X, 1);
output_labels = size(all_theta, 1);
pred = zeros(size(X, 1), 1);

ps = sigmoid(X*all_theta');
[p_max, i_max]=max(ps, [], 2);
pred = i_max;

acc = mean(double(pred == y)) * 100;
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

clear ans;
clear c;
clear index;
clear input_features;
clear lambda;
clear m;
clear n;
clear options;
clear output_labels;
clear clear p_max;
clear ps;
clear rand_indices;
clear sel;
clear total;
clear initial_theta;
clear i_max;
clear theta;
clear pred;
clear X;
clear y;



save 'thetaData.mat';