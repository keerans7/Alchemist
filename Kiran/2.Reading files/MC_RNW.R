

###########################################################################
# This program (1) reads and writes files
# (2) Implements the functions to calculate: mean,standard deviation etc
# @R-discussion-class          Date: 2014-12-15
###########################################################################





  x = c(runif(100))
  y = c(runif(100))
  A = cbind(x,y)

# Method - 1
# Writing table------------------------
write.table(A,file="demo_table.csv")              
B <- read.table("demo_table.csv")                  
#-------------------------------------  
summary(A)
summary(B)

# Method - 2
# Writing csv -file ----------------------------
D = write.csv(A , file = "demo_table2.csv")
C =  read.csv("demo_table2.csv")
#=============================================
summary(C)
summary(D)

# function mean
mean_finder <-  function(idata){
  n = length(idata)
  sum = 0.0
  for (k in 1:n){
    sum = sum + idata[k]
  }
  mn = sum/n
  return(mn)
}
  
#---use mean function---------
t = mean_finder(x)
tt = mean(x)          #<------this is built in library function "mean"!
  
# function standard deviation 
dev_finder <- function(idata){
  n = length(idata)
  min = mean_finder(idata)
  sum = 0.0
  for(k in 1:n){
    sum =  sum + (idata[k] - min)**2
  }
  sdd = sqrt(sum)
  return(sdd)
}
#-----use deviation function------
xx = c(10,20)
td = dev_finder(xx)
tdd = sd(xx)   #<--------this is built in library function "sd"!


  
  
  
  
  
  
  
  

