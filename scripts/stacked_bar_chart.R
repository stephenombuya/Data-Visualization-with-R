library(ggplot2)
source("../utils/data_loader.R")
source("../utils/plot_theme.R")

data <- load_data("../data/sample_data.csv")

plot <- ggplot(data, aes(x = category, fill = group)) +
  geom_bar(position = "stack") +
  labs(
    title = "Stacked Frequency Bar Chart",
    x = "Category",
    y = "Count"
  ) +
  custom_theme()

ggsave("../outputs/stacked_bar_chart.png", plot)
