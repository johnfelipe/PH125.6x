# #### Question 1
# # 1/1 point (graded)
# # You have created a tab1 and tab2 of state population and election data, similar to our module videos:
# # 
# # > tab1
# # state 	population
# # Alabama	4779736
# # Alaska     	710231
# # Arizona    	6392017
# # Delaware     	897934
# # District of Columbia     601723
# 
# # > tab2
# # state 	electoral_votes
# # Alabama      9
# # Alaska         3
# # Arizona        11
# # California     55
# # Colorado      9
# # Connecticut  7
# 
# > dim(tab1)
# [1] 5 2
# 
# > dim(tab2)
# [1] 6 2
# 
# What are the dimensions of the table dat, created by the following command?
#   
dat <- left_join(tab1, tab2, by = "state")
# 
# a 
# 3 rows by 3 columns
# 
# b
# 5 rows by 2 columns
# 
# c
# 5 rows by 3 columns correct
# 
# d
# 6 rows by 3 columns
# 
# #### Question 2
# 1/1 point (graded)
# We are still using the tab1 and tab2 tables shown in question 1. What join command would create a new table "dat" with three rows and two columns?
#   
# a 
dat <- right_join(tab1, tab2, by = "state")
#
# b
dat <- full_join(tab1, tab2, by = "state")
#
# c
dat <- inner_join(tab1, tab2, by = "state")
# 
# d
dat <- semi_join(tab1, tab2, by = "state")