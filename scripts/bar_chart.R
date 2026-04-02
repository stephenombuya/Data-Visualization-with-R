library(ggplot2)
source("../utils/data_loader.R")
source("../utils/plot_theme.R")

data <- load_data("../data/sample_data.csv")

plot <- ggplot(data, aes(x = category, y = value)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Bar Chart",
    x = "Category",
    y = "Value"
  ) +
  custom_theme()

ggsave("../outputs/bar_chart.png", plot)
