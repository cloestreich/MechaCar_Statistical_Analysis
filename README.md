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

## Summary Statistics on Suspension Coils
![TotalSummaryDev2](https://user-images.githubusercontent.com/108380062/194726762-b65209ca-7f22-46cb-9519-d29e77a9b873.png)
![LotSummaryDev2](https://user-images.githubusercontent.com/108380062/194726768-0387ecc1-6f67-45c4-8fda-d1292ba3d58e.png)
1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

When reviewing the total summary data for our MechaCar suspension coils, it looks like the variance of the suspension coils of 62.29 is not exceeding the limit of 100 per square inch.  But when looking at the lot summary data, we see the data for Lot 3 indicating a variance of 170.27 pounds per square inch, which is much higher than the limit specific in the design. Lots 1 and 2 provide a variance of 0.98 and 7.47, which is within the limit.

## T-Tests on Suspension Coils
![Test and Lot 1](https://user-images.githubusercontent.com/108380062/194727390-58fe8104-9656-4aac-98cc-4abf3b4adb09.png)
![Lots 2 and 3](https://user-images.githubusercontent.com/108380062/194727399-7e780c89-fdee-4903-879d-aa29526c79f5.png)

Across all lots, the t-tests revealed a mean PSI of 1498.78, which was not statistically different from the population mean PSI of 1500 psi. Lot 1 (with a mean of 1500 PSI and a p-value of 1) and Lot 2 (with a mean of 1500.2 PSI and a p-value of 0.6072) were not statistically different from the population mean PSI of 1500. Lot 3 (with a mean of 1496.14 PSI and a p-value of 0.04168) however, was found to be significantly statistically different from the population mean PSI.

## Study Design: MechaCar vs Competition
We'd perform a statistical comparison of car brands based on performance, cost, and fuel efficiency metrics.  Because MechaCar is being marketed as a cost-effective sports luxury car, we propose to start by comparing cost to acceleration. The null hypothesis is that there is no correlation between cost and acceleration. The alternative hypothesis is that cost and acceleration do have a correlation.  For the statistical test, we'd run a linear regression to visualize any obvious and/or significant correlation between cost and acceleration for all cars on the market this year.  For this test, we'd need to have MSRP and 0-60mph mean acceleration data for the cars in our analysis.  To add to this analysis, we'd then calculate acceleration/cost ratios for all cars in the analysis and run a t-test to determine whether MechaCar's acceleration/cost ratio is significantly different from the mean acceleration/cost ratio for all cars in the study.  Beyond this initial analysis, we'd expect to perform some ANOVA testing of other performance metrics against vehicle class, transmission types, and cost categories.  ANOVA testing would be appropriate since it's suited to test the means of a single dependent variable across independent categorical variables with multiple groups.
