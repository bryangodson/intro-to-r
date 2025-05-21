# One sample t-test: Is the average mpg different from 20?
t.test(mtcars$mpg, mu = 20)

# Two sample t-test: Compare mpg between 4- and 6-cylinder cars
group_4 <- mtcars$mpg[mtcars$cyl == 4]
group_6 <- mtcars$mpg[mtcars$cyl == 6]
t.test(group_4, group_6)

# Paired t-test (example with synthetic data)
before <- c(200, 195, 198, 210, 202)
after <- c(190, 180, 185, 200, 193)
t.test(before, after, paired = TRUE)

# ANOVA: mpg ~ cyl
anova_result <- aov(mpg ~ factor(cyl), data = mtcars)
summary(anova_result)

# Tukey's HSD for post-hoc
TukeyHSD(anova_result)

# Correlation between mpg and wt
cor(mtcars$mpg, mtcars$wt)

# Covariance
cov(mtcars$mpg, mtcars$wt)

# Scatter plot with regression line
plot(x=mtcars$wt, y=mtcars$mpg)

abline(lm(mpg ~ wt, data = mtcars), col = "red")
