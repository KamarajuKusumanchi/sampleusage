rm(list=ls())
N=3
a = matrix(c(1), nrow=N, ncol=N)
b = matrix(c(0), nrow=2*N, ncol=2*N)
b[seq(1,2*N,2),seq(1,2*N,2)] = a

# sample usage:-
#
# > source("alternate_elements.R")
# > a
#      [,1] [,2] [,3]
# [1,]    1    1    1
# [2,]    1    1    1
# [3,]    1    1    1
# > b
#      [,1] [,2] [,3] [,4] [,5] [,6]
# [1,]    1    0    1    0    1    0
# [2,]    0    0    0    0    0    0
# [3,]    1    0    1    0    1    0
# [4,]    0    0    0    0    0    0
# [5,]    1    0    1    0    1    0
# [6,]    0    0    0    0    0    0

