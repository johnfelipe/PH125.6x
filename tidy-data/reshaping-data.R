#### Question 1
# 1/1 point (graded)
# Your file called “times.csv” has age groups and average race finish times for three years of marathons.

# age_group,2015,2016,2017
# 20,3:46,3:22,3:50
# 30,3:50,3:43,4:43
# 40,4:39,3:49,4:51
# 50,4:48,4:59,5:01
# You read in the data file using the following command.
# d <- read_csv("times.csv")
# Which commands will help you “tidy” the data?

# a
tidy_data <- d %>%
gather(year, time, `2015`:`2017`)

# b
tidy_data <- d %>%
  spread(year, time, `2015`:`2017`)

# c
tidy_data <- d %>%
  gather(age_group, year, time, `2015`:`2017`)

# d
tidy_data <- d %>%
  gather(time, `2015`:`2017`)