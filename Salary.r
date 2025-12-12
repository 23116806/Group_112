
install.packages("tidyverse")
data <- read.csv("engineering_graduate_salary.csv")


head(data)




p_hist <- hist(
  data$Salary,
  main = "Distribution of Engineering Graduate Salaries",
  xlab = "Annual Salary (INR)",
  col = "skyblue",
  border = "black"
)


png("hist_salary.png", width = 800, height = 600)
hist(
  data$Salary,
  main = "Distribution of Engineering Graduate Salaries",
  xlab = "Annual Salary (INR)",
  col = "skyblue",
  border = "black"
)
dev.off()




plot(
  data$CollegeGPA, data$Salary,
  main = "Scatterplot of Salary vs College GPA",
  xlab = "College GPA",
  ylab = "Annual Salary (INR)",
  col = "blue",
  pch = 19
)



png("scatter_salary_gpa.png", width = 800, height = 600)
plot(
  data$CollegeGPA, data$Salary,
  main = "Scatterplot of Salary vs College GPA",
  xlab = "College GPA",
  ylab = "Annual Salary (INR)",
  col = "blue",
  pch = 19
)
dev.off()


getwd()  

