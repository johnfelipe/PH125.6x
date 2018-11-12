#### Question 1
# 1/1 point (graded)
# You have the following table
#
# >schedule
# day		staff
# Monday		Mandy, Chris and Laura
# Tuesday		Steve, Ruth and Frank
# You want to turn this into a more useful data frame.
#
# Which two commands would properly split the text in the “staff” column into each individual name? Select ALL that apply.

getwd()
list.files()
library(tidyverse)
library(stringr)
schedule <- read_csv("schedule.csv")
schedule

# a
str_split(schedule$staff, ",|and")

# b
str_split(schedule$staff, ", | and ")

# c
str_split(schedule$staff, ",\\s|\\sand\\s")

# d
str_split(schedule$staff, "\\s?(,|and)\\s?")


#### Question 2
# 1 point possible (graded)
#
# You have the following table
#
# > schedule
#   day           staff
#   Monday 	Mandy, Chris and Laura
#   Tuesday 	Steve, Ruth and Frank
#
# What code would successfully turn your “Schedule” table into the following tidy table
#
# < tidy
#   day     staff
#   <chr>   <chr>
#   Monday  Mandy
#   Monday  Chris
#   Monday  Laura
#   Tuesday Steve
#   Tuesday Ruth 
#   Tuesday Frank

getwd()
list.files()
library(tidyverse)
library(stringr)
schedule <- read_csv("schedule.csv")
schedule

# a 
tidy_a <- schedule %>% 
  mutate(staff = str_split(staff, ", | and ")) %>% 
  unnest()
tidy_a

# b 
tidy_b <- separate(schedule, staff, into = c("s1","s2","s3"), sep = ",") %>% 
  gather(key = s, value = staff, s1:s3)
tidy_b

# c 
tidy_c <- schedule %>% 
  mutate(staff = str_split(staff, ", | and ", simplify = TRUE)) %>% 
  unnest()
tidy_c