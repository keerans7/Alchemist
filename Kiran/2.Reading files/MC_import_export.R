


# Goal: All manner of import and export of datasets.

# Invent a dataset -------------------------------------
A <- data.frame(
  name=c("a","b","c"),
  ownership=c("Case 1","Case 1","Case 2"),
  x=c(2.2,3.3,4.4),
  date=as.Date(c("2004-04-04","2005-05-05","2006-06-06"))
  )



# To a spreadsheet through a CSV file ---------------------------------------
write.table(A,file="demo.csv",sep = ",",col.names = NA,qmethod = "double")
B <- read.table("demo.csv", header = TRUE, sep = ",", row.names = 1)



# To R as a binary file ---------------------------------
save(A, file="demo.rda")
load("demo.rda")


# To Stata ---------------------------------------------
library(foreign)
write.dta(D, "demo3.dta")
C <- read.dta("demo3.dta")

# foreign::write.foreign() also has a pathway to SAS and SPSS.



