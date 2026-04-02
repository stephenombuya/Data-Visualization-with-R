library(ggplot2)

custom_theme <- function() {
  theme_minimal() +
    theme(
      plot.title = element_text(size = 16, face = "bold"),
      axis.title = element_text(size = 12),
      axis.text = element_text(size = 10),
      panel.grid.major = element_line(color = "gray80"),
      panel.grid.minor = element_blank()
    )
}
