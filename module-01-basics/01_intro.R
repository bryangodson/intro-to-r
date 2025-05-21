# 📌 VARIABLES AND DATA TYPES

# Numeric
x <- 42
pi_val <- 3.14

# Character (string)
name <- "Bryan"

# Logical (Boolean)
is_dev <- TRUE

# Vector (homogeneous type)
ages <- c(21, 23, 28, 30)

# Mixed vector becomes character vector
mixed <- c(1, "two", TRUE)

# 📌 BASIC FUNCTIONS

length(ages)     # number of elements
sum(ages)        # total sum
mean(ages)       # average
class(name)      # data type
typeof(is_dev)   # internal type

# 📌 OPERATORS
a <- 10
b <- 3

# Arithmetic
a + b; a - b; a * b; a / b; a %% b  # modulo
a ^ b                              # power

# Logical
a > b; a == b; a != b; a <= b

# Assignment: <- or =
score = 89
height <- 5.9

# 📌 R HELP SYSTEM
help(mean)
?sum
args(sd)

# 📌 COMMENTING
# This is a single-line comment

# 📌 Print Output
print("Welcome to R")
cat("Hello", name, "👋\n")
