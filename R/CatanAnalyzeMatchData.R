library(tidyverse) 
library(ggplot2)
library(dplyr)
library(goftest)

#print(getwd())
source("R/CatanDataLoading.R")
#all_variables <- ls()
#print(all_variables)

dice_frequency <- game_winner_data[, c("X2", "X3", "X4","X5", "X6", "X7", "X8", "X9", "X10", "X11", "X12")]
#nrow(dice_frequency) %>% print()
#ncol(dice_frequency) %>% print()
