library(ggplot2)
source("../utils/data_loader.R")
source("../utils/plot_theme.R")

data <- load_data("../data/sample_data.csv")

plot <- ggplot(data, aes(x = x_var, y = y_var)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Scatter Plot with Regression Line",
    x = "X Variable",
    y = "Y Variable"
  ) +
  custom_theme()

ggsave("../outputs/scatter_plot.png", plot)
