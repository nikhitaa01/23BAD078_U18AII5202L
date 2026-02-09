print(“Roll No.23BAD078”)
library(ggplot2)
traffic_data$Location <- as.factor(traffic_data$Location)
traffic_data$Accident_Type <- as.factor(traffic_data$Accident_Type)
traffic_data$Severity <- as.factor(traffic_data$Severity)
ggplot(traffic_data, aes(
  x = Location,
  y = Casualties,
  color = Severity,          # color → severity
  size = Vehicles_Involved, # size → accident frequency/impact
  shape = Accident_Type     # shape → accident type
)) +
  geom_point(alpha = 0.8) +
  scale_color_brewer(palette = "Reds") +
  labs(
    title = "Traffic Accident Severity Analysis",
    x = "Accident Location",
    y = "Number of Casualties",
    color = "Severity",
    size = "Vehicles Involved",
    shape = "Accident Type"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))