# Load required libraries
library(ggplot2)
library(dplyr)

sample <- read.csv(file = "C:\\Users\\M326777\\Downloads\\Mispriced-Diamonds.csv")
sample1 <- read.csv(file = "C:/Users/M326777/Downloads/Mispriced-Diamonds.csv")
test <- read.csv(file="C:/Users/M326777/Documents/r-shiny-demo/Mispriced-Diamonds.csv")

# Filter the data for carat < 2.5
filtered_data <- sample %>% 
  filter(carat < 2.5)

# Create the plot
ggplot(filtered_data, aes(x = carat, y = price, color = clarity)) +
  geom_point(alpha = 0.1) +        # Scatter plot with 10% transparency
  geom_smooth(se = FALSE) +        # Smoothed lines, no confidence interval
  labs(title = "Diamond Price vs Carat by Clarity (Carat < 2.5)",
       x = "Carat", 
       y = "Price",
       color = "Clarity") +
  theme_minimal()