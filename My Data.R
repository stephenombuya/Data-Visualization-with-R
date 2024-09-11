# Data provided
trees <- c(7, 8, 6, 4, 9, 11, 9, 9, 9, 10, 9, 8, 11, 5, 8, 5, 8, 8, 7, 8, 3, 5, 8, 7, 
           10, 7, 8, 9, 8, 11, 10, 8, 9, 8, 9, 9, 7, 8, 13, 8, 9, 6, 7, 9, 9, 7, 9, 5, 6, 
           5, 6, 9, 8, 8, 4, 4, 7, 7, 8, 9, 10, 2, 7, 10, 8, 10, 6, 7, 7, 8)

# a) Relative frequency histogram
hist(trees, prob = TRUE, breaks = 10, col = "yellowgreen", main = "Relative Frequency Histogram",
     xlab = "Number of Trees", ylab = "Relative Frequency")

# b) Calculate the sample mean, median, and mode
mean_trees <- mean(trees)
median_trees <- median(trees)
mode_trees <- as.numeric(names(sort(table(trees), decreasing = TRUE)[1]))  # Find the mode

# Output mean, median, and mode
cat("Sample Mean:", mean_trees, "\n")
cat("Median:", median_trees, "\n")
cat("Mode:", mode_trees, "\n")

# c) Calculate variance, standard deviation, and coefficient of variation
variance_trees <- var(trees)
sd_trees <- sd(trees)
cv_trees <- (sd_trees / mean_trees) * 100  # Coefficient of variation

# Output variance, standard deviation, and coefficient of variation
cat("Variance:", variance_trees, "\n")
cat("Standard Deviation:", sd_trees, "\n")
cat("Coefficient of Variation (%):", cv_trees, "\n")

# d) Construct intervals (mean ± s), (mean ± 2s), and (mean ± 3s)
mean_plus_minus_1s <- c(mean_trees - sd_trees, mean_trees + sd_trees)
mean_plus_minus_2s <- c(mean_trees - 2 * sd_trees, mean_trees + 2 * sd_trees)
mean_plus_minus_3s <- c(mean_trees - 3 * sd_trees, mean_trees + 3 * sd_trees)

# Count percentages falling within each interval
within_1s <- sum(trees >= mean_plus_minus_1s[1] & trees <= mean_plus_minus_1s[2]) / length(trees) * 100
within_2s <- sum(trees >= mean_plus_minus_2s[1] & trees <= mean_plus_minus_2s[2]) / length(trees) * 100
within_3s <- sum(trees >= mean_plus_minus_3s[1] & trees <= mean_plus_minus_3s[2]) / length(trees) * 100

# Output the intervals and percentages
cat("Mean ± 1 Standard Deviation Interval:", mean_plus_minus_1s, "\n")
cat("Percentage within ±1s:", within_1s, "%\n")

cat("Mean ± 2 Standard Deviation Interval:", mean_plus_minus_2s, "\n")
cat("Percentage within ±2s:", within_2s, "%\n")

cat("Mean ± 3 Standard Deviation Interval:", mean_plus_minus_3s, "\n")
cat("Percentage within ±3s:", within_3s, "%\n")


# Compare with empirical rule: 68%, 95%, 99%
cat("Empirical Rule (68%, 95%, 99%) comparison:\n")
cat("Percentage within ±1s:", within_1s, "% (Empirical: 68%)\n")
cat("Percentage within ±2s:", within_2s, "% (Empirical: 95%)\n")
cat("Percentage within ±3s:", within_3s, "% (Empirical: 99%)\n")

