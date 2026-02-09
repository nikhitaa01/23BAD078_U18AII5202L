print("Roll No: 23BAD078")

library(ggplot2)
library(dplyr)

data <- read.csv("7.social_media_interactions.csv")
ggplot(data, aes(x = Likes, y = Comments)) +
  geom_point(alpha = 0.3) +
  labs(title = "Alpha Blending to Reduce Over-Plotting",
       x = "Likes",
       y = "Comments")
ggplot(data, aes(x = Likes, y = Shares)) +
  geom_jitter(alpha = 0.4, width = 0.3, height = 0.3) +
  labs(title = "Jittering to Separate Overlapping Points",
       x = "Likes",
       y = "Shares")
ggplot(data, aes(x = Likes, y = Comments)) +
  geom_bin2d() +
  labs(title = "2D Binning of Engagement Data",
       x = "Likes",
       y = "Comments")

agg_platform <- data %>%
  group_by(Platform) %>%
  summarise(
    avg_likes = mean(Likes, na.rm = TRUE),
    avg_comments = mean(Comments, na.rm = TRUE),
    avg_shares = mean(Shares, na.rm = TRUE)
  )

ggplot(agg_platform, aes(x = Platform, y = avg_likes)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Likes by Platform",
       x = "Platform",
       y = "Average Likes")




