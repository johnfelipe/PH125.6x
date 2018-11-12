#### Question 1
# 1/1 point (graded)
# Assume the following is the full path to the directory that a student wants to use as their working directory in R: "/Users/student/Documents/projects/"

# Which of the following lines of code CANNOT set the working directory to the desired "projects" directory?

#a 
setwd("~/Documents/projects/")

#b
setwd("/Users/student/Documents/projects/")

# c
setwd(/Users/student/Documents/projects/)

# d
dir <- "/Users/student/Documents/projects" 
setwd(dir)


#### Question 2
# 1/1 point (graded)
W# e want to copy the "murders.csv" file from the dslabs package into an existing folder "data", which is located in our HarvardX-Wrangling projects folder. We first enter the code below into our RStudio console.

# > getwd()
# [1] "C:/Users/UNIVERSITY/Documents/Analyses/HarvardX-Wrangling"
# > filename <- "murders.csv"
# > path <- system.file("extdata", package = "dslabs")
# Which of the following commands would NOT successfully copy "murders.csv" into the folder "data"?

# a
file.copy(file.path(path, "murders.csv"), getwd())

# b
setwd("data")
file.copy(file.path(path, filename), getwd())

# c
file.copy(file.path(path, "murders.csv"), file.path(getwd(), "data"))

# d
file.location <- file.path(system.file("extdata", package = "dslabs"), "murders.csv")
file.destination <- file.path(getwd(), "data")
file.copy(file.location, file.destination)