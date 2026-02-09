# Ecommerce Transactions Analysis using R

**Roll No:** 23BAD078

---

## 📌 Overview
This project analyzes **ecommerce transaction data** to study monthly sales intensity across different regions. Using R, the data is processed and visualized as a **heatmap**, which helps identify high- and low-activity periods region-wise.

The analysis uses **dplyr** for data manipulation and **ggplot2** for visualization.

---

## 🛠️ Requirements
Before running the script, ensure you have:

- R (version 4.0 or above)
- RStudio (recommended)
- Required packages:
  - `ggplot2`
  - `dplyr`

---

## 📦 Package Setup
Install packages (run once):

```r
install.packages("ggplot2")
install.packages("dplyr")
```

Load the libraries:

```r
library(ggplot2)
library(dplyr)
```

---

## 📂 Dataset Information
- **File Name:** `ecommerce_transactions.csv`
- **Location:** Must be present in the working directory

Preview the dataset:

```r
head(data)
```

---

## 🔍 Steps Performed in the Analysis

### 1️⃣ Display Roll Number
```r
print("Roll No. 23BAD078")
```

---

### 2️⃣ Load the Dataset
```r
data <- read.csv("ecommerce_transactions.csv")
```

---

### 3️⃣ Extract Month from Transaction Date
A new column **Month** is created from the `Transaction_Date` column to enable month-wise analysis.

```r
data <- data %>%
  mutate(Month = format(Transaction_Date, "%b"))
```

---

### 4️⃣ Compute Monthly Sales Count by Region
The total number of transactions is calculated for each **Month–Region** combination.

```r
monthly_sales <- data %>%
  group_by(Month, Region) %>%
  summarise(Count = n(), .groups = "drop")
```

---

### 5️⃣ Monthly Sales Intensity Heatmap
A heatmap is used to visualize transaction intensity:

- X-axis → Month
- Y-axis → Region
- Color intensity → Number of transactions

```r
ggplot(monthly_sales, aes(x = Month, y = Region, fill = Count)) +
  geom_tile() +
  labs(title = "Monthly Sales Intensity Heatmap",
       x = "Month",
       y = "Region") +
  theme_minimal()
```

---

## 📊 Visualization Output
- **Heatmap** showing sales intensity across months and regions
- Darker shades indicate higher transaction volume

---

## ✅ Conclusion
This analysis helps:
- Identify peak sales months
- Compare regional transaction activity
- Understand seasonal and regional sales patterns

Heatmaps provide an intuitive and effective way to visualize large transactional datasets.

---

## ✨ Author
**Roll No:** 23BAD078

---

> 📌 *Note:* Ensure `Transaction_Date` is in proper Date format for accurate month extraction.

