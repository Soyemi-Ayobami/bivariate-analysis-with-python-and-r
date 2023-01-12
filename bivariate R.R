data <- read.csv("HR_comma_sep.csv")

head(data)

x <- data$number_project
y <- data$average_montly_hours

r <- cor(x,y)


# Deduce the value of the correlation coefficient
if (r > 0) {
  print("The variables are positively correlated.")
} else if (r < 0) {
  print("The variables are negatively correlated.")
} else {
  print("The variables are not correlated.")
}

linear_regression <- lm(y ~ x)
lm(y~x)