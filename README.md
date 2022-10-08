# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![LinearRegression](https://user-images.githubusercontent.com/108380062/194725957-000cbc90-f960-40a7-b26f-76c3a363b3f3.png)
![LinearRegressionSummary](https://user-images.githubusercontent.com/108380062/194726215-b7eed466-09ce-45b4-b0bd-f9ea8980d5ba.png)
1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

For the variables tested: only vehicle length (p= 2.60e-12) and ground clearance (p= 5.21e-08) showed a statistically significant correlation with MPG, in this dataset.

2. Is the slope of the linear model considered to be zero? Why or why not?

The p-value of our multiple linear regression analysis is 5.35e-11, which is very small and statistically significant (at the .001% level). Therefore, we can reject the null hypothesis, which means that the slope of our linear model is not zero. A significant linear relationship exists.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared value is 0.7149, which means that roughly 71% of the variablilty of our dependent variable (MPG) is explained using this linear model. While this is fairly predictive, our Intercept is also statistically significant (p= 5.08e-08), so 1) the significant features (vehicle length and ground clearance) may need scaling or transforming to help improve the power of the model, and/or 2) there may be other variables that can help explain the variability of MPG that have not been included in our model.
