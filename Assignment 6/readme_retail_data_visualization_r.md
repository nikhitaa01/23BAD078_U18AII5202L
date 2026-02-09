# Retail Data Visualization using R

**Roll Number:** 23BAD078

---

## 📌 Overview
This project demonstrates **advanced data visualization techniques** in R using a simulated retail dataset. Multiple visualization methods are applied to analyze **sales and profit patterns** across different customer segments and regions.

The project focuses on:
- Parallel Coordinate Plot
- Bubble Chart
- Trellis (Faceted) Display

---

## 🛠️ Tools & Libraries Used
The following R libraries are required:

- `ggplot2` – for data visualization
- `GGally` – for parallel coordinate plots
- `dplyr` – for data manipulation

---

## 📦 Package Installation
(Install once if not already installed)

```r
install.packages("ggplot2")
install.packages("GGally")
install.packages("dplyr")
```

Load the libraries:

```r
library(ggplot2)
library(GGally)
library(dplyr)
```

---

## 📂 Dataset Description
The dataset is **synthetically generated** using random values for demonstration purposes.

### Variables Used
- `Sales` – Sales amount (numeric)
- `Profit` – Profit or loss (numeric)
- `Customer_Segment` – Consumer category (factor)
- `Region` – Geographical region (factor)

Dataset generation:

```r
set.seed(123)
retail_data <- data.frame(
  Sales = runif(50, 1000, 10000),
  Profit = runif(50, -2000, 4000),
  Customer_Segment = sample(c("Consumer", "Corporate", "Home Office"), 50, replace = TRUE),
  Region = sample(c("North", "South", "East", "West"), 50, replace = TRUE)
)
```

---

## 🔍 Steps Performed in the Analysis

### 1️⃣ Display Roll Number
```r
print("Roll number:23BAD078")
```

---

### 2️⃣ Preview the Dataset
```r
head(retail_data)
```

---

### 3️⃣ Parallel Coordinate Plot

```r
ggparcoord(
  data = retail_data,
  columns = c(1, 2),
  groupColumn = "Customer_Segment",
  scale = "uniminmax"
) +
  theme_minimal() +
  labs(title = "Parallel Coordinate Plot of Sales and Profit")
```

📊 **Purpose:**
- Compares Sales and Profit simultaneously
- Lines are grouped by Customer Segment
- Helps detect patterns and variations across segments

---

### 4️⃣ Bubble Chart (Sales vs Profit)

```r
ggplot(retail_data, aes(x = Sales, y = Profit, size = Sales, color = Customer_Segment)) +
  geom_point(alpha = 0.6) +
  theme_minimal() +
  labs(title = "Bubble Chart: Sales vs Profit")
```

📊 **Purpose:**
- Shows relationship between sales and profit
- Bubble size represents sales volume
- Color distinguishes customer segments

---

### 5️⃣ Trellis Display (Facet by Region)

```r
ggplot(retail_data, aes(x = Sales, y = Profit, color = Customer_Segment)) +
  geom_point(size = 3) +
  facet_wrap(~ Region) +
  theme_minimal() +
  labs(title = "Trellis Display by Region")
```

📊 **Purpose:**
- Compares sales–profit relationships across regions
- Enables region-wise visual analysis

---

## 📈 Visualizations Included
- Parallel Coordinate Plot
- Bubble Chart
- Trellis (Faceted) Scatter Plot

---

## ✅ Conclusion
This project effectively demonstrates how different visualization techniques can reveal insights from retail data. Using multiple plots helps compare customer segments, identify regional trends, and understand the relationship between sales and profit.

---

## ✨ Author
**R