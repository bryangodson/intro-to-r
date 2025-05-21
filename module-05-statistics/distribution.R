# Histogram
hist(mtcars$mpg, breaks = 10, col = "skyblue", main = "MPG Distribution")

# Density plot
plot(density(mtcars$mpg), main = "Density of MPG")

# Normal Q-Q plot
qqnorm(mtcars$mpg)
qqline(mtcars$mpg)
