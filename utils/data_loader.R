library(readr)
library(dplyr)

load_data <- function(file_path) {
  data <- read_csv(file_path)
  
  # Basic cleaning
  data <- data %>%
    na.omit()
  
  return(data)
}
