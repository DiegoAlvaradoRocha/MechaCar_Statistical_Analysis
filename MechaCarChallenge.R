library(tidyverse)
mechacar1 <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
model_mechacar <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar1) #Create multiple linear model.
summary(model_mechacar) #generate a summary of statistic
library(tidyverse)
Susp_Coli <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- Susp_Coli%>%summarize(Mean=mean(PSI),Median=median(PSI),Varianza=var(PSI), SD=sd(PSI))
total_summary
lot_summary <- Susp_Coli%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Varianza=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary
sample_psi<-rnorm(Susp_Coli$PSI == 1500)
sample_ML<-rnorm(Susp_Coli$Manufacturing_Lot)
s_L1 <- subset(Susp_Coli, Manufacturing_Lot == "Lot1")
s_L2 <- subset(Susp_Coli, Manufacturing_Lot == "Lot2")
s_L3 <- subset(Susp_Coli, Manufacturing_Lot == "Lot3")
all_lots <- t.test(sample_ML, mu=mean(sample_psi))
all_lots
lot1 <- t.test(rnorm(s_L1), mu=mean(sample_psi))
lot1
lot2 <- t.test(rnorm(s_L2), mu=mean(sample_psi))
lot2
lot3 <- t.test(rnorm(s_L3), mu=mean(sample_psi))
lot3