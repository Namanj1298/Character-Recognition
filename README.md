# Character-Recognition
Character Recognition on Custom Dataset using MATLAB (Log. Regression)


Character recognition of handwritten texts is one of the most crucial aspects of any pattern recognition
algorithm. The application of digit recognition is very vast, some examples but not limited to, include postal
mail sorting, digitizing any hand filled form, bank check processing, signature verification, etc. For the
purpose of this research, logistic regression was used to train a model to accurately identify the input
digits/alphabets.

Also, to improve accuracy of the model, parameter optimization was done on two major factors of logistic
regression. The two parameters, the regularization parameter (lambda) and the number of iterations (during
training) were closely studied and were optimized to eliminate any chance of Overfitting. Experimental
results show that an optimized set of parameters would provide maximum accuracy on the test set and on the
Training set if Regularization and Early Stopping were to be applied in a joint manner.

The simulation was done on MATLAB using a Gradient Descent based algorithm to minimize the Cost
Function. Gradient Descent was chosen as it is guaranteed to find the global minimum of a convex surface,
however it can incur a high computational cost. I concluded from the simulation results that machine
learning algorithms provide near to 100% accuracy in the training set, but face difficulties and significantly
reduced accuracy on the Cross-Validation Set.
