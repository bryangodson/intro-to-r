# Predict mpg based on wt
model <- lm(mpg ~ wt, data = mtcars)
summary(model)

# Plot with regression line
plot(mtcars$wt, mtcars$mpg, main = "MPG vs Weight")
abline(model, col = "blue")

# Get fitted values and residuals
head(fitted(model))
head(residuals(model))
