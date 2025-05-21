# VECTORS RECAP
names <- c("Bryan", "John", "Doe")
scores <- c(88, 75, 93)
passed <- c(TRUE, TRUE, FALSE)

# MATRICES
print("matrix")
matrix_data <- matrix(1:9, nrow = 3, byrow = TRUE)
print(matrix_data)

dim(matrix_data)   # dimensions
colnames(matrix_data) <- c("A", "B", "C")
rownames(matrix_data) <- c("Row1", "Row2", "Row3")

# LISTS
my_profile <- list(
  name = "Bryan",
  age = 24,
  skills = c("JavaScript", "R", "TypeScript"),
  scores = scores
)
my_profile$name
my_profile$skills[2]

# FACTORS (Categorical Data)
genders <- factor(c("Male", "Female", "Female", "Male"))
print(genders)
levels(genders)
table(genders)

# DATA FRAMES
students <- data.frame(
  name = c("Bryan", "Simpson", "David"),
  age = c(24, 22, 23),
  score = c(90, 85, 78),
  passed = c(TRUE, TRUE, FALSE)
)
print(students)
str(students)
students$score
students[students$passed == TRUE, ]
 #extra
 str(my_profile) #show structure
 summary(students) #quick stats on dataframe