# Deliverable 1 - Load data and multiple linear regression with summary
library(dplyr)
setwd("F:/Berkeley/R_Analysis/Module_15_Challenge/")
mecha <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha))
# Deliverable 2 - Suspension coil and lot analysis
suspension <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
sus_sum <- suspension %>% summarize(Mean =mean(PSI), Median =median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
lot_sum <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups ='keep')
# Deliverable 3 - t-tests verifying statistical difference
t.test(suspension$PSI, mu=1500)
t.test(subset(suspension,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
