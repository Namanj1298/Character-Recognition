# Character-Recognition
Character Recognition on Custom Dataset using MATLAB (Log. Regression)


Character recognition of handwritten texts is one of the most crucial aspects of any pattern recognition algorithm. The application of digit recognition is very vast, some examples but not limited to, include postal mail sorting, digitizing any hand filled form, bank check processing, signature verification, etc. For the purpose of this research, logistic regression was used to train a model to accurately identify the input digits/alphabets.

Also, to improve accuracy of the model, parameter optimization was done on two major factors of logistic regression. The two parameters, the regularization parameter (lambda) and the number of iterations (during training) were closely studied and were optimized to eliminate any chance of Overfitting. Experimental results show that an optimized set of parameters would provide maximum accuracy on the test set and on the Training set if Regularization and Early Stopping were to be applied in a joint manner.

The simulation was done on MATLAB using a Gradient Descent based algorithm to minimize the Cost Function. Gradient Descent was chosen as it is guaranteed to find the global minimum of a convex surface, however it can incur a high computational cost. I concluded from the simulation results that machine learning algorithms provide near to 100% accuracy in the training set, but face difficulties and significantly reduced accuracy on the Cross-Validation Set.


Sample Dataset:

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/bb9b4b85-0f45-408f-8d6f-d1ba43415972)

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/bf4a5256-d2b3-4062-bfc5-9d82520bfe78)

The current form of the data is very bland, and can’t be directly fed into a Logistic Regression algorithm. For simplicity, and a massive reduction in computational cost, the images (data) is converted from an RGB 721X1130 format to a grayscale 20X20 image. Hence, the number of pixels per image (data) to be processed is reduced from 824900 to just 400.

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/f5ee347b-3774-4a70-a6e1-f5f73880b55e)



Logistic Regression is a probabilistic classification technique which is used to predict outcomes by analysing the relationship between one or more existing independent variables. Unlike linear regression, Logistic regression applies a sigmoid function to the equation, allowing the output to be a probabilistic value, which could then be mapped to several discrete classes.  
Sigmoid Function,    f(x)   =    1/(1+e^(-x) )                                                            

In this case, the independent variables are the pixel Intensities, and the dependent or unknown variables have to be optimized to train the classifier. The predicated hypothesis equation is:

Hypothesis=Sigmoid ( θ_0+x_1 θ_1+x_2 θ_2+x_3 θ_3+x_4 θ_5+⋯+ x_m θ_m)   


To find the minimum point of the cost function J(θ), several algorithms such as Gradient Descent, conjugate Gradient, BFGS, L-BFGS, etc are available. For the purpose of this experiment, a function developed by Carl Edward Rasmussen “fmincg” is utilized, which is similar to the in-built function of MATLAB “fminunc()”. 


To prevent overfitting from occurring, Regularization is used. Regularization is a technique which is used to reduce the coefficients of higher order polynomials in the hypothesis function to reduce their impact, hence improving results on a general case basis. Regularization implemented with Logistic Regression can be written as:

Cost Function:

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/71718f8e-693d-4f23-bfae-b48d22b0f099)

Taking Partial Derivative, the Vectorized Gradient is:

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/103bdb2e-3981-439d-8f19-ef761e3e2e99)                                                                                          

Where, λ is the regularization factor and is usually set to a high value, to reduce the impact of higher order θ terms. Although, selecting the most apt value of λ can be a tough and very computational task.

Early stopping refers to running the iterative algorithm only to the point where it provides maximum training set accuracy, as further iterative steps would only result in overfitting the dataset. The Early stop point will be adjusted with respect to the Training time also, to reduce computational cost.



For best results, the model should perform well on the training set and on the test set. Although we have two unknown parameters to optimize, 
	Number of Iterations to run fmincg()
	Value of Regularization factor λ
After some unsuccessful hit and trial approaches, it was decided to administer a nested loop function, which would vaguely work such as:

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/8c4fd978-fd64-40ed-a65d-b0076e619086)


The parameter optimization code was run for the dataset of handwritten digits, to determine the best suitable value of the unknown parameters. The following are the obtained 3D surface plots, 


![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/9d18b0ce-5b80-4de8-98f7-4595c141f42f)

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/39090371-c1e1-4548-b33d-8d87fccd8efd)

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/f548c817-c492-419a-a72e-7e48b98e7e69)


Next, the parameter optimization code was run for the model to recognize handwritten alphabets. Since, for alphabet recognition, the number of output labels are 26, hence the number of iterations could not be increased above a certain extent, otherwise a lot of computer memory would be required.

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/d1215e5d-985c-4923-a386-b6deb9539a28)

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/bc5ff6f6-c97b-437b-b692-95819ed60704)

![image](https://github.com/Namanj1298/Character-Recognition/assets/70903104/ee569b39-2f43-47b8-b557-21a32de9b53e)


Conclusion

In this project parameter optimization of Regularized Logistic Regression was done for recognition of handwritten digits and alphabets. The performance of the models with varying the regularization factor λ and the number of iterations of the model have been observed on the basis of their training accuracy, test accuracy and the training time. 

From the plots for digit recognition, it is also noted that for a regularization factor equal to ‘0’, the model had a lower accuracy at any number of iterations, when compared a regularized model (λ >0) with the same number of iterations. 

Hence without regularization, a logistic regression-based model is bound to over-fit for digit recognition with a relatively smaller dataset. 

Also, it was determined that a probability-based model would be ideal, as even if an output has a low probability (low confidence), accurate predictions can still be made due to the relatively higher probability to the other output labels. Alternatively, if a discrete threshold-based model was to be selected, a lot of effort in optimizing the threshold value would be required. 

It can also be established that handwritten character recognition is very prone to overfitting, and they most appropriate methods to train a model to avoid overfitting are to implement regularization and early stopping (limit number of iterations to optimum).  

This project has optimized both mentioned techniques that solve the problem of overfitting, (outside of alterations in the dataset) through a parameter optimization method for best results.




