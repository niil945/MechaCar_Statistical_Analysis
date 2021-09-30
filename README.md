# MechaCar_Statistical_Analysis

## Overview

AutosRUs' prototype, the MechaCar, has production issues that are delaying the manufacturing teams progress. A
statistical analysis of the production data has been requested utilizing R to assist the manufacturing team with
any insights that may resolve the challenge.

## Linear Regression to Predict MPG

Reviewing the summary output of the multiple linear regression demonstrates a non-random amount of variance from
several variables. The r-squared shows ~71.5% correlation between the variables. The intercept(mpg), vehicle length, 
and ground clearance all have strong correlation, or low random variance. No other factors demonstrate a strong
correlation.
  - Intercept (MPG) has a p-value of 5.08e-08
  - Vehicle Length has a p-value of 2.60e-12
  - Ground Clearance has a p-value of 5.21e-08

![Linear Regression Summary Results](/Resources/linear_regression_summary.png)

The slope is not zero since the p-value is 5.35e-11. The null hypothesis is rejected. While the r-squared indicates 
there is randomness or other unaccounted for factors, it is a moderately accurate model to predict mpg.

## T-Tests on Suspension Coils

![All Lots PSI](/Resources/all_lots_PSI.png)

The null hypothesis cannot be rejected as the p-value is too high (0.06028). The results are not statistically different
from the population mean.

![Lot 1 PSI](/Resources/lot1_PSI.png)

The results of the same when analyzing lot 1. The null hypothesis cannot be rejected witha p-value of 1. These results are also not
statistically different from the population mean.

![Lot 2 PSI](/Resources/lot2_PSI.png)

The results of the same when analyzing lot 2. The null hypothesis cannot be rejected witha p-value of 0.6072. These results are also not
statistically different from the population mean.

![Lot 3 PSI](/Resources/lot3_PSI.png)

With lot 3 we see a statistically different result. The null hypothesis can be rejected with a p-value of 0.04168. The results are
indicative that the manufacturing team can narrow their assessment to the production methodology of lot 3 to determine points of
failure in the process.

## Study Design: MechaCar vs Competition

At this time, with the push towards electric vehicles and the prevalence of rideshare options, the biggest factor to consider is the cost
effectiveness of the MechaCar in relation to competitors in the same vehicle class that are also gas powered.

### Metrics to Test

As a primary analysis the fuel efficiency should be compared. Additional comparisons can be conducted with the results to assess cost 
efficiency when also calculating in price of the vehicle utilizing average yearly mileage to give a prediction of long term cost
relative to other options.

### Null Hypothesis

There is no statistical difference between the average mpg of the MechaCar and the competitor's vehicles of the same class.

### Alternate Hypothesis

The average mpg of the MechaCar underperforms or overperforms competitor's vehicles.

### Statistical Tests to Conduct

The best methodology to conduct the mpg analysis is the two-sample t-test.

### Data Necessary for Additional Analysis

The intial analysis requires data of competitor's vehicles, specifically comparable statistical data such as the highway and non-highway
fuel efficiency. Further analysis requires data on the national averages of mileage driven, the percentage breakdown of average highway 
and non-highway driving, current fuel costs and projections of cost within the next decade. Utilizing such data can result in a cost
efficiency rating of vehicles that could be utilized as a marketing tool.
