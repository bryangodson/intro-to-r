#Q1: Create a matrix with numbers 10-23 in 4 rows
my_matrix <- matrix(10:25,nrow=4)
print(my_matrix)

#Q2 Make a list that contains your name,age ,favorite languages
my_info <- list(name="Bryan",age=24,languages=c("JS","Typescript"))
print(my_info$languages)
print(my_info$languages[2])

#Q3 convert the vector below into a factor
status <- c("Single","Married","Single","Divorced")
status_factor <-factor(status)
print(levels(status_factor))

# Q4: Create a data frame of 3 movies, their ratings and if you recommend them
movies <- data.frame(
    title= c("Interceptor","Game of Thrones","Steller Transformation","I Robot"),
    rating = c(8.5,9.5,8.0,7.5),
    recommended = c(TRUE,TRUE,TRUE,TRUE)
)
print(movies)
# Q5: Select movies with rating > 9
print(movies[movies$rating>9,])