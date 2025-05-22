# Create a binary column: high_mpg = 1 if mpg > 20
mtcars$high_mpg <- ifelse(mtcars$mpg > 20, 1, 0)

# Logistic regression
log_model <- glm(high_mpg ~ wt + hp, data = mtcars, family = binomial)
summary(log_model)

# Predict probabilities
pred_probs <- predict(log_model, type = "response")
head(pred_probs)

# Convert to class labels
pred_class <- ifelse(pred_probs > 0.5, 1, 0)
table(Predicted = pred_class, Actual = mtcars$high_mpg)
