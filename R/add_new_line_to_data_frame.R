# By default, rbind() adds the new row to the end of a data frame.
# This script shows how to add it in between

# originally obtained from
# Ref:- http://stackoverflow.com/questions/11561856/add-new-row-to-dataframe


existingDF <- as.data.frame(matrix(seq(20),nrow=5,ncol=4))
r <- 3
newrow <- seq(4)

insertRow2 <- function(existingDF, newrow, r) {
  existingDF <- rbind(existingDF,newrow)
  existingDF <- existingDF[ order( c(1:(nrow(existingDF)-1),r-0.5) ),]
  row.names(existingDF) <- 1:nrow(existingDF)
  return(existingDF)  
}

newDF <- insertRow2(existingDF,newrow,r)

# sample output
# > rm(list=ls())
# > source('add_new_line_to_data_frame.R')
# > existingDF
#   V1 V2 V3 V4
# 1  1  6 11 16
# 2  2  7 12 17
# 3  3  8 13 18
# 4  4  9 14 19
# 5  5 10 15 20
# > newDF
#   V1 V2 V3 V4
# 1  1  6 11 16
# 2  2  7 12 17
# 3  1  2  3  4
# 4  3  8 13 18
# 5  4  9 14 19
# 6  5 10 15 20

