# Question 1
# 1/1 point (graded)
# We have two simple tables, shown below:
#   
#   > df1
# x     y    
# a     a    
# b     a    
# 
# > df2
# x     y    
# a     a    
# a     b  
# 
# Which command would result in the following table?
#   
#   > final
# x     y    
# b     a   
# 
# a 
final <- union(df1, df2)
# 
# b
final <- setdiff(df1, df2) correct
# 
# c
final <- setdiff(df2, df1)
# 
# d
final <- intersect(df1, df2)