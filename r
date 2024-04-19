# R Project: Random Dataset Generation and Linear Regression

# 1. Generate random dataset
set.seed(123)
n <- 100
x <- runif(n, 0, 10)
y <- 2 * x + rnorm(n, 0, 1)

# 2. Perform linear regression
model <- lm(y ~ x)

# 3. Summary of regression
summary(model)

# 4. Plot the data and regression line
plot(x, y, main = "Random Data with Regression Line")
abline(model, col = "red")

# 5. Save plot
png("plot.png")
plot(x, y, main = "Random Data with Regression Line")
abline(model, col = "red")
dev.off()
