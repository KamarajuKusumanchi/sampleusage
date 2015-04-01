# Original version of the code is from
# http://www.biostat.jhsph.edu/~rpeng/docs/R-debug-tools.pdf

rm(list=ls());

f <- function(x) {
	r <- x - g(x);
	r
}

g <- function(x) {
	r <- x * h(x);
	r
}

h <- function(x) {
	r <- log(x)
	if (r < 10)
		r^2
	else
		r^3
}

# sample usage
# % R -q
# > version
#                _                           
# platform       x86_64-pc-linux-gnu         
# arch           x86_64                      
# os             linux-gnu                   
# system         x86_64, linux-gnu           
# status                                     
# major          3                           
# minor          1.1                         
# year           2014                        
# month          07                          
# day            10                          
# svn rev        66115                       
# language       R                           
# version.string R version 3.1.1 (2014-07-10)
# nickname       Sock it to Me               
# > source('using_traceback.R')
# > f(10)
# [1] -43.01898
# > f(-1)
# Error in if (r < 10) r^2 else r^3 : missing value where TRUE/FALSE needed
# In addition: Warning message:
# In log(x) : NaNs produced
# > traceback()
# 3: h(x) at using_traceback.R#9
# 2: g(x) at using_traceback.R#4
# 1: f(-1)

