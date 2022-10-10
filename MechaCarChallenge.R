#Deliverable 1
library(dplyr)
Mecha_data <- read.csv('MechaCar_mpg.csv') #import data
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data))

#Deliverable 2
suspension_data <- read.csv('Suspension_Coil.csv') #import data
total_summary <- suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable 3
t.test(suspension_data$PSI,mu=1500)
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot=="Lot1"),mu=1500)
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot=="Lot2"),mu=1500)
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot=="Lot3"),mu=1500)
