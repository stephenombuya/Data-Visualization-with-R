# Create the data
altitude <- c(90, 230, 240, 260, 330, 400, 410, 550, 590, 610, 700, 790)

respirationRate <- c(0.11, 0.2, 0.13, 0.15, 0.18, 0.16, 0.23, 
                     0.18, 0.23, 0.26, 0.32, 0.37)

# Create the scatterplot
plot(altitude, respirationRate, xlab="altitude", 
     ylab="respirationRate", main="Scatterplot of Altitude vs RespirationRate")


# Add a regression line
model <- lm(respirationRate ~ altitude)
abline(model, col="red")



# Load ggplot2
library(ggplot2)

# Create a data frame
data <- data.frame(altitude, respirationRate)

# Scatterplot with a loess smooth line (using ggplot2)
ggplot(data, aes(x=altitude, y=respirationRate)) +
  geom_point() +
  geom_smooth(method="loess", se=FALSE) +  # Use loess instead of lowess
  labs(title="Scatterplot with Loess Smooth Line", x="Altitude", y="Respiration Rate")

