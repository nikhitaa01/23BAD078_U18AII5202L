# Health Data Correlation Analysis using R

**Roll No:** 23BAD078

---

## 📌 Overview
This project performs **exploratory data analysis and correlation analysis** on health-related data using R. It visualizes relationships between key health indicators and computes their correlation matrix to understand how variables are related.

The analysis uses:
- **ggplot2** for visualization
- **GGally** for pairwise plots

---

## 🛠️ Requirements
To run this program, you need:

- R (version 4.0 or above)
- RStudio (recommended)
- Required packages:
  - `ggplot2`
  - `GGally`

---

## 📦 Package Installation
Run once if not already installed:

```r
install.packages("ggplot2")
install.packages("GGally")
```

Load the libraries:

```r
library(ggplot2)
library(GGally)
```

---

## 📂 Dataset Information
- **Dataset Name:** `health_data`
- The dataset should already be loaded into the R environment

### Expected Columns Used
- `Age`
- `BMI`
- `Glucose_Level`
- `Blood_Pressure`
- `AgeGroup` (categorical variable for coloring plots)

---

## 🔍 Steps Performed in the Analysis

### 1️⃣ Display Roll Number
```r
print("Roll No. 23BAD078")
```

---

### 2️⃣ Preview the Dataset
```r
head(health_data)
```

This displays the first few records to understand the structure of the data.

---

### 3️⃣ Pairwise Relationship Visualization (Scatterplot Matrix)

```r
ggpairs(
  health_data,
  columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"),
  aes(color = AgeGroup)
)
```

📊 **Purpose:**
- Shows pairwise scatter plots, distributions, and correlations
- Colors indicate different age groups
- Helps detect patterns, trends, and outliers

---

### 4️⃣ Correlation Matrix Calculation

```r
cor(
  health_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")]
)
```

📈 **Purpose:**
- Computes Pearson correlation coefficients
- Values range from **-1 to +1**
- Indicates strength and direction of relationships between health variables

---

## 📊 Output Summary
- **Scatterplot matrix** showing relationships between age, BMI, glucose level, and blood pressure
- **Correlation matrix** indicating how strongly variables are related

---

## ✅ Conclusion
This analysis helps:
- Understand relationships between important health indicators
- Identify positive or negative correlations
- Support medical or health-related data interpretation

Pairwise plots combined with correlation values provide both visual and numerical insights.

---

## ✨ Author
**Roll No:** 23BAD078

---

> 📌 *Note:* Ensure all selected columns are numeric before computing correlations to avoid errors.