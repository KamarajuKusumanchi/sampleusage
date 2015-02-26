# Originally from http://www.r-tutor.com/elementary-statistics/simple-linear-regression/normal-probability-plot-residuals
eruption.lm = lm(eruptions ~ waiting, data=faithful)
eruption.stdres = rstandard(eruption.lm)

res_mean = mean(eruptions.stdres)
res_std = sd(eruptions.stdres)

qqnorm(eruption.stdres,
       ylab="Standardized Residuals",
       xlab="Normal Scores",
       main="Old Faithful Eruptions")
qqline(eruption.stdres)
