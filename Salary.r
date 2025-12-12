
# 1. Load dataset (base R)
install.packages("tidyverse")
data <- read.csv("engineering_graduate_salary.csv")

# Check first rows
head(data)


# 2. Histogram of Salary

# Create histogram object
p_hist <- hist(
  data$Salary,
  main = "Distribution of Engineering Graduate Salaries",
  xlab = "Annual Salary (INR)",
  col = "skyblue",
  border = "black"
)

# 3. Save histogram as PNG

png("hist_salary.png", width = 800, height = 600)
hist(
  data$Salary,
  main = "Distribution of Engineering Graduate Salaries",
  xlab = "Annual Salary (INR)",
  col = "skyblue",
  border = "black"
)
dev.off()

# 4. Scatterplot: GPA vs Salary

# Create scatterplot object
plot(
  data$CollegeGPA, data$Salary,
  main = "Scatterplot of Salary vs College GPA",
  xlab = "College GPA",
  ylab = "Annual Salary (INR)",
  col = "blue",
  pch = 19
)
