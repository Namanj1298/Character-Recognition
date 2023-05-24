trainerror = ones(50,1);
crosserror = ones(50,1);
a = 1;
for lambda = 1:1:50
    acc = looptraintheta(lambda);
    trainerror(a) = acc;
    loopcrossvalidation();
    crosserror(a) = acc;
    a= a+1;
end

lambda = 1:1:50;

plot(lambda,trainerror');
title('Accuracy Plots');

hold on

plot(lambda,crosserror');
legend('Train Accuracy', 'Cross Validation Accuracy');
xlabel('Value of Lambda');
ylabel('Accuracy of Algorithm');
axis([0 50 0 105])

    