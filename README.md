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

The slope is not zero since the p-value is 5.35e-11. The null hypothesis is rejected as the p-value demonstrates more
than random chance. While the r-squared indicates there is randomness or other unaccounted for factors, it is a
moderately accurate model to predict mpg.
