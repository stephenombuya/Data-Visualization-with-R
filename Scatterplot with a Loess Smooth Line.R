

# Add a lowess smooth line
library(ggplot2)


data <- data.frame(altitude, respirationRate)
ggplot(data, aes(x=altitude, y=respirationRate)) +
  geom_point() +
  geom_smooth(method="lowess", se=FALSE) +
  labs(title="Scatterplot with Lowess Smooth Line", x="Altitude", y="respirationRate")
