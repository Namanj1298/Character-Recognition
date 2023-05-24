totalerror = ones(11,11);
l = ones(11,11);
j = ones(11,11);
a =1;

for i = 100:30:400

b = 1;
for lambda = 0:1:10
    acc = looptraintheta(lambda,i);
    q = acc;
    loopcrossvalidation();
    w = acc;
    totalerror(a,b) = w;
    l(a,b) = i;
    j(a,b) = lambda;
    
    b= b+1;
end
    a = a+1;
end

%iteration

y = l;
x = j;
z = totalerror;

figure;
surf(x,y,z)
axis tight; hold on;
plot3(x,y,z,'.','MarkerSize',15)
ylabel('Number of Iterations');
xlabel('Value of Lambda');
zlabel('Cross Validation Accuracy');
title("Parameter Optimazation");



    