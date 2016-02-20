# Create two data frames and merge them.

set.seed(123)
mydata <- data.frame(myid = 1001:1020,
                     version = sample(1:10, 20, replace = T))
head(mydata)
table(mydata$version)

set.seed(12)
myinfo <- data.frame(version = sort(rep(1:10, 5)), a = rnorm(50),
                     b = rnorm(50), c = rnorm(50), d = rnorm(50))
head(myinfo, 40)
table(myinfo$version)

my.merge <- merge(myinfo, mydata, by="version")
names(my.merge)
result2 <- my.merge[,c("myid", "version", "a", "b", "c", "d")]
names(result2)

