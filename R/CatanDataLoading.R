library(tidyverse) 
library(ggplot2)
library(dplyr)
library(goftest)

catanData <- read.csv('data/SettlersOfCatanStats.csv')
#head(catanData) %>% print()

game_winner_data <- catanData[catanData$points >= 10, ]
