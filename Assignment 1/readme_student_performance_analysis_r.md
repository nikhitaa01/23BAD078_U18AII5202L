# Student Performance Analysis using R

**Roll No:** 23BAD078

## 📌 Overview
This project performs an exploratory data analysis (EDA) and visualization of student performance data using **R**. It calculates internal assessment averages, analyzes subject-wise performance, tracks assessment trends, and visualizes final grade distribution.

The analysis uses popular R libraries such as **ggplot2** and **dplyr** for data manipulation and visualization.

---

## 🛠️ Requirements
Ensure the following are installed before running the script:

- R (version 4.0 or above recommended)
- RStudio (optional but preferred)
- Required R packages:
  - `ggplot2`
  - `dplyr`

---

## 📦 Package Installation
Run the following commands in R (only once):

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

## 📂 Dataset
- **File Name:** `1.student_performance.csv`
- **Location:** Must be placed in the current working directory

Check or set your working directory using:

```r
getwd()
```

---

## 🔍 Steps Performed in the Analysis

### 1️⃣ Display Roll Number
```r
print("Roll No. 23BAD078")
```

---

### 2️⃣ Load Dataset and Inspect
```r
data <- read.csv("1.student_performance.csv")
head(data)
```

---

### 3️⃣ Check for Missing Values
```r
sum(is.na(data))
```

---

### 4️⃣ Calculate Internal Average Marks
The internal average is calculated using:
- Internal Test 1
- Internal Test 2
- Assignment Marks

```r
data <- data %>%
  mutate(Internal_Avg = (Internal_Test1 + Internal_Test2 + Assignment_Marks) / 3)
```

---

### 5️⃣ Subject-wise Average Internal Marks

```r
subject_avg <- data %>%
  group_by(Subject) %>%
  summarise(Average_Marks = mean(Internal_Avg))
```

📊 **Visualization:** Bar chart showing average marks per subject

---

### 6️⃣ Performance Trend Across Assessments

```r
test_trend <- data %>%
  summarise(
    Test1 = mean(Internal_Test1),
    Test2 = mean(Internal_Test2),
    Assignment = mean(Assignment_Marks)
  )
```

Converted to trend-friendly format and plotted as a line graph.

📈 **Visualization:** Line chart showing average performance trend

---

### 7️⃣ Final Grade Distribution

```r
grade_dist <- data %>%
  count(Final_Grade)
```

📊 **Visualization:** Pie chart representing grade distribution

---

## 📊 Visualizations Included
- Bar Chart: Subject-wise Average Internal Marks
- Line Chart: Performance Trend Across Assessments
- Pie Chart: Final Grade Distribution

---

## ✅ Conclusion
This analysis provides clear insights into:
- Student performance across subjects
- Trends across internal assessments
- Distribution of final grades

It helps identify strengths, weaknesses, and overall academic patterns effectively.

---

## ✨ Author
**Roll No:** 23BAD078

---

> 📌 *Note:* Ensure the CSV file columns match the variable names used in the script for error-free execution.

