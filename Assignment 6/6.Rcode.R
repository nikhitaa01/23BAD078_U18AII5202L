print("Roll number:23BAD078")


library(ggplot2)

library(GGally)

library(dplyr)


set.seed(123)


retail_data <- data.frame(
  
  Sales = runif(50, 1000, 10000),
  
  Profit = runif(50, -2000, 4000),
  
  Customer_Segment = sample(c("Consumer", "Corporate", "Home Office"), 50, replace = TRUE),
  
  Region = sample(c("North", "South", "East", "West"), 50, replace = TRUE)
  
)

head(retail_data)


ggparcoord(
  
  data = retail_data,
  
  columns = c(1, 2),
  
  groupColumn = "Customer_Segment",
  
  scale = "uniminmax"
  
) +
  
  theme_minimal() +
  
  labs(title = "Parallel Coordinate Plot of Sales and Profit")

ggplot(retail_data, aes(x = Sales, y = Profit, size = Sales, color = Customer_Segment)) +
  
  geom_point(alpha = 0.6) +
  
  theme_minimal() +
  
  labs(title = "Bubble Chart: Sales vs Profit")


ggplot(retail_data, aes(x = Sales, y = Profit, color = Customer_Segment)) +
  
  geom_point(size = 3) +
  
  facet_wrap(~ Region) +
  
  theme_minimal() +
  
  labs(title = "Trellis Display by Region")
