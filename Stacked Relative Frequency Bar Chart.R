# Create the data
treatment <- c('Oyster Chips', 'Smooth Plastic', 'One Oyster Chip')
right_crusher_left_cutter <- c(8, 2, 7)
right_cutter_left_crusher <- c(9, 4, 9)
right_and_left_cutter_no_crusher <- c(1, 20, 7)

# Combine into a data frame
data <- data.frame(treatment, right_crusher_left_cutter, 
                   right_cutter_left_crusher, right_and_left_cutter_no_crusher)

# Convert to relative frequencies
data_rel <- data
data_rel[,-1] <- data_rel[,-1] / rowSums(data_rel[,-1])

# Reshape the data for plotting
data_melt_rel <- melt(data_rel, id="treatment")

# Plot the stacked relative frequency bar chart
ggplot(data_melt_rel, aes(x=treatment, y=value, fill=variable)) +
  geom_bar(stat="identity") +
  scale_y_continuous(labels=scales::percent)
