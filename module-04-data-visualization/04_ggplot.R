##load packages
library(ggplot2)
library(dplyr)
head(mtcars)
str(mtcars)
summary(mtcars)
##visualize mtcars dataset using various chart types
#scatter plot -horsepower vs MPG
ggplot(mtcars,aes(x=hp,y=mpg))+
geom_point()+
labs(title="Horsepower vs MPD",x="Horsepower",y="Miles per Gallon")+
theme_minimal()

#histogram-distribution of MPG
ggplot(mtcars,aes(x=mpg))+
  geom_histogram(bins=10,fill="steelblue",color="white")+
  labs(title="Distribution of MPG",x="Miles per Gallon",y="Frequency")+
  theme_light()

#box plot MPG by number of Cylinders
ggplot(mtcars,aes(x=factor(cyl),y=mpg))+
  geom_boxplot(fill="tomato")+
  labs(title="MPG by Cylinder Count",x="Cylinders",y="Miles per Gallon")+
  theme_classic()

##bar plot -count of cars by gear type
ggplot(mtcars, aes(x = factor(gear))) +
  geom_bar(fill = "darkcyan") +
  labs(title = "Car Count by Gear Type", x = "Gear", y = "Count") +
  theme_minimal()
#line chart-sorted MPG Over Cars
ggplot(mtcars %>% arrange(mpg),aes(x=seq_along(mpg),y=mpg))+
  geom_line(color="purple")+
  labs(title="MPG Accross Cars",x="Car Index(Sorted by MPG)",y="MPG")+
  theme_bw()
