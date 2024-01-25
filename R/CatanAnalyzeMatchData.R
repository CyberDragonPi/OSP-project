library(tidyverse) 
library(ggplot2)
library(dplyr)
library(goftest)

#print(getwd())
source("R/CatanDataLoading.R")
#all_variables <- ls()
#print(all_variables)

columns_to_extract <- c("X2", "X3", "X4","X5", "X6", "X7", "X8", "X9", "X10", "X11", "X12")
possible_sums <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
dice_frequency <- game_winner_data[, columns_to_extract]
#nrow(dice_frequency) %>% print()
#ncol(dice_frequency) %>% print()

frequency_df <- data.frame(number = possible_sums, frequency = colSums(dice_frequency, na.rm = TRUE))
#colnames(frequency_df) <- c("sum", "frequency")
#ncol(frequency_df) %>% print()
#head(frequency_df) %>% print()

dice_frequency_plot <- ggplot(frequency_df, aes(x = number, y = frequency)) + geom_col(color = "blue")
ggsave("figures/dice_frequency.png", type = "png")