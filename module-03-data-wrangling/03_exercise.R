library(dplyr)
head(mtcars)
# Q1: Select 'mpg', 'cyl', and 'hp' from mtcars
mtcars %>% 
select(mpg,cyl,hp)

# Q2: Filter only cars with more than 6 cylinders
mtcars %>% 
filter(cyl > 6)

# Q3: Add a new column 'mpg_rank' = rank of mpg (higher = better)
mtcars %>% 
mutate(mpg_rank = rank(-mpg))

# Q4: Average weight (`wt`) of cars by gear type
mtcars %>% 
group_by(gear) %>% 
summarise(avg_weight = mean(wt))

# Q5: Cars with highest `hp` per `cyl` group
mtcars %>%
  group_by(cyl) %>%
  filter(hp == max(hp)) %>%
  select(cyl,hp)

# Q6: Arrange cars by mpg and wt
mtcars %>% arrange(desc(mpg), wt)
