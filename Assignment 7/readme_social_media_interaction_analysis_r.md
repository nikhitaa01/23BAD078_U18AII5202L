# Social Media Interaction Analysis using R

**Roll No:** 23BAD078

---

## 📌 Overview
This project analyzes **social media interaction data** to understand user engagement patterns and address the problem of **over-plotting** in data visualization. Different visualization techniques such as **alpha blending, jittering, and 2D binning** are applied. Additionally, platform-wise average engagement metrics are computed and visualized.

The analysis is carried out using **R**, with the help of `ggplot2` and `dplyr` libraries.

---

## 🛠️ Tools & Libraries Used
- **R Programming Language**
- **ggplot2** – for data visualization
- **dplyr** – for data manipulation

---

## 📦 Package Installation
(Install once if not already installed)

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
- **File Name:** `7.social_media_interactions.csv`
- The file should be available in the current working directory

### Key Columns Used
- `Likes` – Number of likes
- `Comments` – Number of comments
- `Shares` – Number of shares
- `Platform` – Social media platform name

---

## 🔍 Steps Performed in the Analysis

### 1️⃣ Display Roll Number
```r
print("Roll No: 23BAD078")
```

---

### 2️⃣ Load the Dataset
```r
data <- read.csv("7.social_media_interactions.csv")
```

---

### 3️⃣ Alpha Blending to Reduce Over-Plotting

```r
ggplot(data, aes(x = Likes, y = Comments)) +
  geom_point(alpha = 0.3) +
  labs(title = "Alpha Blending to Reduce Over-Plotting",
       x = "Likes",
       y = "Comments")
```

📊 **Purpose:**
- Reduces visual clutter when many points overlap
- Transparency highlights dense regions

---

### 4️⃣ Jittering to Separate Overlapping Points

```r
ggplot(data, aes(x = Likes, y = Shares)) +
  geom_jitter(alpha = 0.4, width = 0.3, height = 0.3) +
  labs(title = "Jittering to Separate Overlapping Points",
       x = "Likes",
       y = "Shares")
```

📊 **Purpose:**
- Adds small random noise to points
- Helps visualize overlapping observations clearly

---

### 5️⃣ 2D Binning of Engagement Data

```r
ggplot(data, aes(x = Likes, y = Comments)) +
  geom_bin2d() +
  labs(title = "2D Binning of Engagement Data",
       x = "Likes",
       y = "Comments")
```

📊 **Purpose:**
- Groups points into bins
- Shows density of interactions using color intensity

---

### 6️⃣ Platform-wise Average Engagement Analysis

```r
agg_platform <- data %>%
  group_by(Platform) %>%
  summarise(
    avg_likes = mean(Likes, na.rm = TRUE),
    avg_comments = mean(Comments, na.rm = TRUE),
    avg_shares = mean(Shares, na.rm = TRUE)
  )
```

---

### 7️⃣ Average Likes by Platform

```r
ggplot(agg_platform, aes(x = Platform, y = avg_likes)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Likes by Platform",
       x = "Platform",
       y = "Average Likes")
```

📊 **Purpose:**
- Compares engagement levels across platforms
- Identifies platforms with higher average likes

---

## 📈 Visualizations Included
- Scatter plot with alpha blending
- Scatter plot with jittering
- 2D binned heatmap
- Bar chart of average likes by platform

---

## ✅ Conclusion
This analysis demonstrates how different visualization techniques can effectively handle over-plotting in large datasets. Platform-wise aggregation further helps in comparing engagement performance across social media platforms.

---

## ✨ Author
**Roll No:** 23BAD078

---

> 📌 *Note:* Handling over-plotting improves clarity and leads to better interpretation of de