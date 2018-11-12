library(tidyverse)
library(lubridate)

## Question 1
# 1 point possible (graded)

# Which of the following is the standard ISO 8601 format for dates?
  
# MM-DD-YY
# YYYY-MM-DD
# YYYYMMDD
# YY-MM-DD


## Question 2
# 1 point possible (graded)
# Which of the following commands could convert this string into the correct date format?
  
dates <- c("09-01-02", "01-12-07", "02-03-04")

# a
ymd(dates)

#b
mdy(dates)

# c
dmy(dates)

# d
# It is impossible to know which format is correct without additional information.

