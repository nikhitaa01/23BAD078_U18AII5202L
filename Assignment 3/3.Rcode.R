print("Roll No. 23BAD078")
library(ggplot2)
library(GGally)
head(health_data)
ggpairs(
  health_data,
  columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
  aes(color = AgeGroup)
)
cor(
  health_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")]
)
