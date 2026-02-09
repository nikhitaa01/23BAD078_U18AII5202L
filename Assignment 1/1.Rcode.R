getwd()
install.packages("ggplot2")
install.packages("dplyr")
library(ggplot2)
library(dplyr)
data <- read.csv("1.student_performance.csv")
head(data)
sum(is.na(data))
data <- data %>%
  mutate(Internal_Avg = (Internal_Test1 + Internal_Test2 + Assignment_Marks) / 3)

subject_avg <- data %>%
  group_by(Subject) %>%
  summarise(Average_Marks = mean(Internal_Avg))

ggplot(subject_avg, aes(x = Subject, y = Average_Marks, fill = Subject)) +
  geom_bar(stat = "identity") +
  labs(title = "Subject-wise Average Internal Marks",
       x = "Subject",
       y = "Average Marks") +
  theme_minimal()

test_trend <- data %>%
  summarise(
    Test1 = mean(Internal_Test1),
    Test2 = mean(Internal_Test2),
    Assignment = mean(Assignment_Marks)
  )

trend_data <- data.frame(
  Assessment = c("Internal Test 1", "Internal Test 2", "Assignment"),
  Average = as.numeric(test_trend)
)

ggplot(trend_data, aes(x = Assessment, y = Average, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = "Performance Trend Across Assessments",
       x = "Assessment",
       y = "Average Marks") +
  theme_minimal()

grade_dist <- data %>%
  count(Final_Grade)

ggplot(grade_dist, aes(x = "", y = n, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Final Grade Distribution") +
  theme_void()
