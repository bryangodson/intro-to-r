# Accuracy
conf_matrix <- table(Predicted = pred_class, Actual = mtcars$high_mpg)
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
accuracy

# AIC comparison
AIC(model, multi_model, log_model)

# ROC Curve
library(pROC)
roc_obj <- roc(mtcars$high_mpg, pred_probs)
plot(roc_obj, col = "darkgreen", main = "ROC Curve")
auc(roc_obj)
