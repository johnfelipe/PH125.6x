# Question 1
# 1/1 point (graded)
# Rather than using the pattern_with_groups vector from the video, you accidentally write in the following code
# 
problems <- c("5.3", "5,5", "6 1", "5 .11", "5, 12")
pattern_with_groups <- "^([4-7])[,\\.](\\d*)$"
str_replace(problems, pattern_with_groups, "\\1'\\2")
# 
# What is your result?
#   
#   
# [1] "5'3" "5'5" "6 1" "5 .11" "5, 12" 
# [1] "5.3" "5,5" "6 1" "5 .11" "5, 12"
# [1] "5'3" "5'5" "6'1" "5 .11" "5, 12"
# [1] "5'3" "5'5" "6'1" "5’11" "5’12"
# 
# 
# Question 2
# 1/1 point (graded)
# You notice your mistake and correct your pattern regex to the following
# 
problems <- c("5.3", "5,5", "6 1", "5 .11", "5, 12")
pattern_with_groups <- "^([4-7])[,\\.\\s](\\d*)$"
str_replace(problems, pattern_with_groups, "\\1'\\2")
#
# What is your result?
#   
#
# a
# # [1] "5'3" "5'5" "6 1" "5 .11" "5, 12"
# 
# b
# # [1] "5.3" "5,5" "6 1" "5 .11" "5, 12"
# 
# c
# # [1] "5'3" "5'5" "6'1" "5 .11" "5, 12" 
# 
# d
# # [1] "5'3" "5'5" "6'1" "5’11" "5’12"