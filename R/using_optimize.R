# This script demonstrates the usage of optimize function
# It also demonstrates how to pass parameters to the function being optimized.

rm(list=ls());
quadratic <- function(x, a, b, c)
{
  a*x^2 + b*x + c;
}

min1 = optimize(quadratic, c(-5,5), a=1,b=3,c=2);
max1 = optimize(quadratic, c(-5,5), a=-1,b=1,c=2, maximum=TRUE);
cat("Evaluating min of x^2 + 3*x + 2\n");
print(min1);
cat("Evaluating max of -x^2 + x + 2\n");
print(max1);

# sample usage:-
# > source('~/sampleusage/R/using_optimize.R')
# Evaluating min of x^2 + 3*x + 2
# $minimum
# [1] -1.5
# 
# $objective
# [1] -0.25
# 
# Evaluating max of -x^2 + x + 2
# $maximum
# [1] 0.5
# 
# $objective
# [1] 2.25