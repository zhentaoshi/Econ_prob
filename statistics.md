# Statistics 



Probability theory talks about implications of probability models. For example, given a probability distribution, what are the mean and variance? What is the distribution of a transformation of a random variable? In computer simulation, we design the data generating process and probability theory tells us what will happen to the generated realizations, in particular when the experiment can be repeated as many times as the researcher wish. This is a real-world analogue of the frequentist's interpretation of probability.

Statistic theory goes the opposite way. In reality what we observe is a sample of data, but we don't know from what mechanism the data are generated. Statistics asks how can we infer the data generating process from the sample that we observe. For example, if we assume the data are generated from a normal distribution, what is the best way that we learn the population variance? Does the data provide evidence that two samples are drawn from population of the same means? How sure we are about tomorrow's stock price?

The beauty of statistics lies in their deep connection with philosophy. A realized sample is a set of given numbers. They are fixed, known, and invariant. But where is uncertainty? Bayesians argue that uncertainty comes from people's belief about what is interested to learn. The data is a set of information to help us refine or update our belief. In contrast, frequentists contend that uncertainty is present only before the numbers, or realizations, are revealed; once the realizations are revealed, uncertainty is gone. 

The two schools of philosophical thoughts, Bayesian and frequentist, have been contesting over centuries. Nowadays in academic research and in teaching, frequentist remains the mainstream so it is the one that we are more familiar with. However, frequentist interpretation of probability and the resulting implication for statistical inference are not completely natural. In particular, repeated experiments are more easily perceived in physics and other natural science, but may be unrealistic in many economic settings. On the other hand, the difficulty of Bayesian lies in the consensus about the prior distribution, or the belief. Either has pros and cons.



## Statistic

A statistic is a mapping from the sample space to a real number or a real vector. (There are complex-valued statistics but they will not be discussed in this course.) The most familiar statistics include the ample mean $\bar{X} = n^{-1} \sum_{i=1}^n x_i$ and the sample variance $\hat{\sigma}^2 =n^{-1} \sum_{i=1}^n (X_i - \bar{X})^2$. More generally, for $p>0$ the statistic $n^{-1} \sum_{i=1}^n x_i^p$ is called the $p$-th sample moment, and $n^{-1} \sum_{i=1}^n (X_i - \bar{X})^p$ is called the $p$-th centered moment. For bivariate random variable $(X_i,y_i)$, we call $n^{-1} \sum_{i=1}^n (X_i - \bar{X})(Y_i-\bar{Y})$ the sample covariance. All these terminologies can be extended to vector versions.

There are many other features of the distribution that can be conceived. For example, the density of the distribution at a particular point. 

## Hypothesis Space

Parametric model: the distribution can be completely described by a finite number of parameters. For example, the Gaussian distribution has two parameters, and the Poisson distribution only has one parameter. 

Nonparametric distribution. For example, only restrict the second moment to be finite.





## Estimation Methods

Sample analogue principle

Parametric methods: Maximum likelihood estimation. Looking for the value of the parameter that maximizes the value of the log-likelihood. Why is this a good strategy? Because by the concavity of logarithm, in population the true parameter is the value that maximize the population maximum likelihood. In reality, we maximize its empirical version. By the law of law of large numbers, we have convergence at each point. Uniform convergence at every point can also be established (ULLN for extreme estimator, which is necessary for consistent estimation.) We can also establish the Crame-Rao lower bound, which is the smallest variance for unbiased estimator. MLE in parameter model can often achieve the lower bound, so it is the efficient estimator in the class of all unbiased estimators (at least asymptotically).

## Sampling Distribution

bias and variance

## 



## Regression

Data fitting. Basic learning task. Get the prediction as close as possible. 

ANOVA. The decomposition of sample variance. 

Regression does a very simple task, which in principle has nothing to do with causality. It minimizes the SSR. In other words, it tries to use a linear combination of the X to reduce the variance of Y as much as possible. The any (X,Y), such an algorithm can be implemented. It is a numerical algorithm that has nothing to do with uncertainty.

Now we superimpose uncertainty on it. If X is still fixed but Y is uncertain, we have conditional inference (discriminative model. These terms are used in classification, not in regression.) If both (X,Y) are uncertain, we have unconditional inference (generative model). It matters only for interpretation. In reality, both (X,Y) are fixed. 从最庸俗到最抽象. The conditional model is not good for extrapolation out of the support of the observed X. 

Perhaps use the bivariate regression and elementary algebra to derive the formula. If both (y,x) have unit variance, then the regression coefficient is simply the correlation coefficient. 

$$\frac{\sigma_{xy}}{\sigma_x^2}=\frac{\rho \sigma_x \sigma_y}{\sigma_x^2} = \rho \frac{\sigma_y} {\sigma_x}$$

The matrix version is a more general analogue.



The unconditional model can be thought as if it is generated in two steps: 

First draw X, and then draw Y|X. We know P(X,Y) = P(Y|X)P(X) so that the discriminative model and the generative model are linked together.) However, in dynamic model such formulation is insufficient, for example the predictive model.

Unbiasedness: this is about the uncertainty in beta. At least one component of X and Y must be random. so beta is a random variable and we can discuss its mean and variance. Also the distribution of beta. 

Why OLS? It is also the MLE under the normal distribution. Normal distribution has a simple form that the mean and variance are sufficient statistic to describe the distribution.







## Hypothesis Testing

Simple form. 

Regression form.