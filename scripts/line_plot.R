library(ggplot2)
source("../utils/data_loader.R")
source("../utils/plot_theme.R")

data <- load_data("../data/sample_data.csv")

plot <- ggplot(data, aes(x = time, y = value)) +
  geom_line() +
  geom_point() +
  labs(
    title = "Line Plot",
    x = "Time",
    y = "Value"
  ) +
  custom_theme()

ggsave("../outputs/line_plot.png", plot)
