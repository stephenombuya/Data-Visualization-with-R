# Data for U.S. Govt expenditure in 2004
categories <- c('National Defense', 'Social Security', 'Medicare & Medicaid', 
                'National Debt Interest', 'Major Social-Aid Programs', 'Other')


expenditure <- c(525, 500, 500, 300, 200, 475)  # in billion dollars

total_expenditure <- 2500  # total expenditure in billion dollars

# Load ggplot2 library
library(ggplot2)

# Convert the data to a data frame
df <- data.frame(categories, expenditure)

# Bar chart for dollar values
ggplot(df, aes(x = categories, y = expenditure)) +
  geom_bar(stat = "identity", fill = "brown") +
  ggtitle("U.S. Govt Expenditure in 2006 (in Billion Dollars)") +
  ylab("Expenditure (Billion Dollars)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Calculate percentages
df$percentages <- (expenditure / total_expenditure) * 100

# Bar chart for percentages
ggplot(df, aes(x = categories, y = percentages)) +
  geom_bar(stat = "identity", fill = "darkblue") +
  ggtitle("U.S. Govt Expenditure in 2006 (in Percentages)") +
  ylab("Expenditure (Percentage of Total)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
