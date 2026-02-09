print("Roll No. 23BAD078")
library(ggplot2)
library(dplyr)
data <- read.csv("ecommerce_transactions.csv")
head(data)
library(dplyr)

data <- data %>%
  mutate(Month = format(Transaction_Date, "%b"))

monthly_sales <- data %>%
  group_by(Month, Region) %>%
  summarise(Count = n(), .groups = "drop")

ggplot(monthly_sales, aes(x = Month, y = Region, fill = Count)) +
  geom_tile() +
  labs(title = "Monthly Sales Intensity Heatmap",
       x = "Month",
       y = "Region") +
  theme_minimal()
