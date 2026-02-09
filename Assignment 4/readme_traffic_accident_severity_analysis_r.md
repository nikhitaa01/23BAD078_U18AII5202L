# Traffic Accident Severity Analysis using R

**Roll No:** 23BAD078

---

## 📌 Overview
This project analyzes **traffic accident data** to study how accident severity, type, and vehicle involvement relate to the number of casualties across different locations. A **multivariate scatter plot** is used to represent multiple dimensions of accident data in a single visualization.

The analysis is performed using **ggplot2** in R.

---

## 🛠️ Requirements
To execute this program, ensure the following are available:

- R (version 4.0 or above)
- RStudio (recommended)
- Required package:
  - `ggplot2`

---

## 📦 Package Setup
Install the package if not already installed:

```r
install.packages("ggplot2")
```

Load the library:

```r
library(ggplot2)
```

---

## 📂 Dataset Information
- **Dataset Name:** `traffic_data`
- The dataset should already be loaded into the R environment

### Key Columns Used
- `Location` – Accident location
- `Casualties` – Number of people injured or killed
- `Severity` – Severity level of the accident
- `Vehicles_Involved` – Number of vehicles involved
- `Accident_Type` – Type of accident

---

## 🔍 Data Preprocessing
Categorical variables are converted into factors for proper visualization and grouping.

```r
traffic_data$Location <- as.factor(traffic_data$Location)
traffic_data$Accident_Type <- as.factor(traffic_data$Accident_Type)
traffic_data$Severity <- as.factor(traffic_data$Severity)
```

---

## 🔎 Steps Performed in the Analysis

### 1️⃣ Display Roll Number
```r
print("Roll No.23BAD078")
```

---

### 2️⃣ Multivariate Scatter Plot

```r
ggplot(traffic_data, aes(
  x = Location,
  y = Casualties,
  color = Severity,
  size = Vehicles_Involved,
  shape = Accident_Type
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
```

---

## 📊 Visualization Explanation
- **X-axis:** Accident location
- **Y-axis:** Number of casualties
- **Color:** Accident severity level
- **Size:** Number of vehicles involved
- **Shape:** Type of accident

This plot allows simultaneous analysis of multiple accident attributes.

---

## ✅ Conclusion
This visualization helps:
- Identify locations with high casualty accidents
- Understand how severity affects casualties
- Compare accident types and vehicle involvement

Multivariate scatter plots are effective for revealing complex relationships in traffic safety data.

---

## ✨ Author
**Roll No:** 23BAD078

---

> 📌 *Note:* Ensure numeric variables (like `Casualties` and `Vehicles_Involved`) are correctly formatted to avoid plotting errors.

