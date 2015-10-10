# sample usage:
# source('squiggles_by_years.R')

# The original code is by Jim Lemon. See
# http://r.789695.n4.nabble.com/To-plot-and-to-extract-info-from-a-plot-tt4712507.html#a4712515
# for more info.

plot( runif(101)+1, seq(10000,0,length.out=101), xlim=c(1,6), type="l",
      main="Squiggles by Years", xlab="Squiggles", ylab="Years", xaxt="n")
lines(runif(101)+2,seq(10000,0,length.out=101))
lines(runif(101)+3,seq(10000,0,length.out=101))
lines(runif(101)+4,seq(10000,0,length.out=101))
lines(runif(101)+5,seq(10000,0,length.out=101))
axis(1,at=1:5+0.5,labels=1:5)
