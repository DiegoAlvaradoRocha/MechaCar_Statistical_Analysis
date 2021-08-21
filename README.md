# MechaCar_Statistical_Analysis
## objetive:
In this project we focus on MechaCar a prototype of AutoRUs' to support the analytics team of this company.

## Challenge:

## D1. Linear Regression to Predict MPG 
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Intercept, Vehicle_length and ground_clearance are variables unlikely to provide a random amount in the linear regression because their P_value or Pr(>|t|) are really smalls to have significance. 
### Is the slope of the linear model considered to be zero? Why or why not?
yes, because there is an intercept with statically significant.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
No, because it looks that significant features of vehicle Length and Ground Clearence may need to betransformed to help the predictions of the model. 

## D2. Summary statistics on Suspension Coils
### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The current data doesn’t show to meet the data at all, the “Lot3” Exceed the specifications with around 170 PSI of variance. While “Lot1” and “Lot2” looks to achieve the requirements of Pounds per Square Inches. 

## D.3 T-Test on Suspension Coils
### summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
In this T test we evaluate 4 different metrics. first one were all_lots and then with their respective subset Lot_1, Lot_2 and Lot_3. We got that all_lots (p-value=0,904), Lot_1(p-value=0,3057) and Lot_2(p-value=0,2256) is above of our significance level, so we don’t have sufficient evidence to reject Null hypothesis and therefore the 2 means are statically similar. On the other hand Lot_3(p-value=0,9515) is in our significant level, so we have to reject H0.

## D4 Study Design: MechaCar vs Competition.
### What metric or metrics are you going to test?
In our different analysis we used P-value Metrics to identify if there were staticall similituds and find evidence to reject H0. Also statical metrics like mean, median, Varianza and  standard deviation to identify different staticall results of our data.
### What is the null hypothesis or alternative hypothesis?
The null hypothesis help us to identify the correlation between 2 variables. The first thing is to make sure if what we want to taste aren’t in the significant level. According to this result we could reject our Null hypothesis if it is below 5% or above 95%. Also this depend on our level of significance but normally is 95.
### What statistical test would you use to test the hypothesis? And why?
In this case we use Ttest, to measure the correlation between 2 variables. And by this way identify if there are statistical difference or not.
### What data is needed to run the statistical test?
For the t test we need: 
1.	The numeric vector of the sample. 
2.	Mean metric to calculate that from the population data.
3.	Define if is one or two tailed.

