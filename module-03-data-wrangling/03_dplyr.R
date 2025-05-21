#load packages
library(dplyr)

#preview
head(mtcars)

#select:Pick specific columns
mtcars %>% select(mpg,hp,cyl)

#filter :only cars with mpg >20
mtcars %>% filter(mpg>20)

#arrange :sort bu horsepower
mtcars %>% arrange(desc(hp))

#mutate : add a new column
mtcars %>% mutate(kpl=mpg*0.4251)

#group by +summarise :average mpg by number of cylinders
mtcars %>%
  group_by(cyl) %>%
  summarise(avg_mpg = mean(mpg), .groups = 'drop')

##chaining all together
all <- mtcars %>%
 filter(mpg>20)%>%
 select(mpg,hp,wt)%>%
 mutate(power_to_weight=hp/wt)%>%
 arrange(desc(power_to_weight))
 print(all)