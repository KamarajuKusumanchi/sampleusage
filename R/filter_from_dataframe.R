# originally obtained from
# https://stat.ethz.ch/pipermail/r-help/2015-February/425917.html

orig_df <- data.frame(age=sample(0:100,50), income=sample(8000:12000,50))
flt_df <- subset( orig_df, age >= 36 & income > 10000)
