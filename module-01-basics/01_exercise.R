#Q1 : Create a vector of your top 5 tech intersects
intersects <- c("Web","Software","Mobile","Security","Data")
print(intersects)

#Q2 : What is the mean of these scores?
scores <- c(80,75,90,88,92)
result <- mean(scores)
print(result)

# Q3: Check if any score is greater than 90
isGreater <- scores > 90
print(isGreater)

# Q4: Combine your name and age using cat()
name <-"Bryan"
my_age <- 25

cat("Hi, I’m", name, "and I’m", my_age, "years old.\n")

#Q5 : check length of scores
print(length(scores))

#Q5 : check sum of scores
cat("sum of scores", sum(scores), "\n")
