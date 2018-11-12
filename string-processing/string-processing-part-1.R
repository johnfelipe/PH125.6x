# Question 1
# 1/1 point (graded)
# You have a dataframe of monthly sales and profits in R
# 
# > head(dat)
# # A tibble: 5 x 3
# Month    Sales    Profit 
# <chr>    <chr>   	<chr>  
# January  	$128,568 	$16,234
# February 	$109,523 	$12,876
# March    	$115,468 	$17,920
# April    	$122,274 	$15,825
# May      	$117,921 	$15,437
#
# Which of the following commands could convert the sales and profits columns to numeric? Select all that apply.
# 
# a 
dat %>% mutate_at(2:3, parse_number)
#
# b
dat %>% mutate_at(2:3, as.numeric)
#
# c
dat %>% mutate_all(parse_number)
#
# d
dat %>% mutate_at(2:3, funs(str_replace_all(., c("\\$|,"), ""))) %>%
  mutate_at(2:3, as.numeric)