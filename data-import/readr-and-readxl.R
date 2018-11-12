##### Question 3
# 1/1 point (graded)
# You have a file called "times.txt" that contains race finish times for a marathon. The first four lines of the file look like this:
  
# initials,state,age,time
# vib,MA,61,6:01
# adc,TX,45,5:45
# kme,CT,50,4:19
#
# Which line of code will NOT produce a tibble with column names "initials", "state", "age", and "time"?
  
# a
race_times <- read_csv("times.txt")

# b
race_times <- read.csv("times.txt") correct

# c
race_times <- read_csv("times.txt", col_names = TRUE)

# d
race_times <- read_delim("times.txt", delim = ",")


#### Question 4
# 1/1 point (graded)
# You also have access to marathon finish times in the form of an Excel document named "times.xlsx". In the Excel document, different sheets contain race information for different years. The first sheet is named "2015", the second is named "2016", and the third is named "2017".
#
# Which line of code will NOT import the data contained in the "2016" tab of this Excel sheet?
  

# a  
times_2016 <- read_excel("times.xlsx", sheet = 2)

# b
times_2016 <- read_xlsx("times.xlsx", sheet = "2")

# c
times_2016 <- read_excel("times.xlsx", sheet = "2016")

# d 
times_2016 <- read_xlsx("times.xlsx", sheet = 2)