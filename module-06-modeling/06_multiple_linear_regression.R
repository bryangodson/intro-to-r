# Predict mpg using weight, hp, and cyl
multi_model <- lm(mpg ~ wt + hp + cyl, data = mtcars)
summary(multi_model)

# Check for multicollinearity
vif(multi_model)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(multi_model)
