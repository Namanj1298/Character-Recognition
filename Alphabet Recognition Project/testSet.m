clear ; close all; clc

input_features = 400;
output_labels = 10;

fprintf('Loading and Visualizing Data ...\n')
load('testData.mat'); 
m = size(X, 1);

rand_indices = randperm(m);
sel = X(rand_indices(1:20), :);

displayData(sel);


fprintf('\nLoading Saved Theta Parameters ...\n')

% Load the weights into variables Theta1 and Theta2
load('thetaData.mat');

X = [ones(m, 1) X];


rp = randperm(m);
random_x = X(rp, :);
[~,p]=max(sigmoid(random_x*all_theta'),[],2);


for i = 1:m
    % Display 
    subplot(2,1,1);
    fprintf('\nDisplaying Example Image\n');
    displayData(X(rp(i), 2:401));

    pred = p(i,1); 
    title(['Digit Prediction =  ',num2str(pred)])
    fprintf('\nLogistic Regression Prediction: %d (digit %d)\n', pred, mod(pred, 10));
    
    subplot(2,1,2);
    prob = sigmoid(random_x*all_theta');
    probval = prob(i,:);
    stem(probval);
    title("Probability Distribution for Above Digit");
    
    % Pause with quit option
    s = input('Paused - press enter to continue, q to exit:','s');
    if s == 'q'
      break
    end
end




