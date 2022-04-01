library(tidyverse)
library(haven)

ACSraw <- read_dta("usa_00001.dta")
ACSsmaller <- ACSraw %>% select(region, stateicp, strata, sex, race, hispan, 
                                bpl, citizen, hcovany, educ, labforce, ftotinc, poverty)
