library(tidyverse)
library(ggplot2)

starting_resources <- non_game_winner_data[, seq(17, 27, by = 2)]
starting_resources_winners <- game_winner_data[, seq(17, 27, by = 2)]

starting_resources_vector <- do.call(c, starting_resources)
starting_resources_winners_vector <- do.call(c, starting_resources_winners)

starting_resources_table <- prop.table(table(starting_resources_vector)) * 100
starting_resources_winners_table <- prop.table(table(starting_resources_winners_vector)) * 100

ggplot() +
  geom_col(aes(x = names(starting_resources_table), y = starting_resources_table),
           fill = "#0827F5", color = "#0827F5", alpha = 0.5, position = "dodge") +
  geom_col(aes(x = names(starting_resources_winners_table), y = starting_resources_winners_table),
           fill = "#AB2328", color = "#AB2328", alpha = 0.5, position = "dodge") +
  labs(title = "Starting resources occurances", x = "Resource", y = "Percantage")