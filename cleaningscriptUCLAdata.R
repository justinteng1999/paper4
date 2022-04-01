library(tidyverse)
library(haven)

UCLAdirty <- read_dta("ns20201224.dta")
UCLAsmaller <- UCLAdirty %>% select(vote_2020_retro ,age, gender, census_region, hispanic, 
                                    race_ethnicity, household_income, education, state,
                                    congress_district, weight_2020)



UCLAsmaller <- na.omit(UCLAsmaller)
UCLAsmaller$vote_2020_retro <- as.numeric(UCLAsmaller$vote_2020_retro)
UCLAtrial <- UCLAsmaller %>% filter(vote_2020_retro < 3)
UCLAtrial <- UCLAtrial %>% mutate(vote_trump = ifelse(vote_2020_retro == 1, 1, 0))
