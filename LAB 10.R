# Name: Shivansh Singh Chauhan
# Date: 3/29/18
# ISTA 116 Section C || Section Leader: Jorge Barrios
# Lab 10
# Collaborators: Hayden and Annelise

download.file("http://www.openintro.org/stat/data/ames.RData", destfile = "ames.RData")
load("ames.RData")

# 1
sam = sample(ames$Gr.Liv.Area, size = 60, replace = FALSE)
mean1 = mean(sam)
# 1485.6

# 2 
sd1 = sd(sam)
se = sd1/sqrt(60)
# 60.93487  

# 3
lower = mean1-qnorm(1-(1-0.95)/2)*se
upper = mean1+qnorm(1-(1-0.95)/2)*se
set = c(lower, upper)

# 4
sam1 = mean(ames$Gr.Liv.Area)
# Yes it does fall since the true population mean is 1499.69 and the upper is 1577.563 and the lower is 1338.703 

#5
samrep = replicate(50, {sam = sample(ames$Gr.Liv.Area, size = 60, replace = FALSE); mean3 = mean(sam); lower = mean3-qnorm(1-(1-0.95)/2)*se; upper = mean3+qnorm(1-(1-0.95)/2)*se; c(lower,upper) } )
dim(samrep)

#6 
lower.bounds = samrep[1,]
upper.bounds = samrep[2,]
length(upper.bounds)
length(lower.bounds)

#7
plot_ci(lower.bounds, upper.bounds, sam1)
# There are 8 confidence intervals that do not contain the population mean.
# This does not match to our expectation because its 87% in the interval this is not even close to the 95%

#8
# I have chosen 99% of the confidence intevral
confi = qnorm(1-(1-0.99)/2)
# 2.575829

#9
samrep = replicate(50, {sam = sample(ames$Gr.Liv.Area, size = 60, replace = FALSE); mean4 = mean(sam); lower = mean4-qnorm(1-(1-0.99)/2)*se; upper = mean4+qnorm(1-(1-0.99)/2)*se; c(lower,upper) } )
dim(samrep)

lower.bounds = samrep[1,]
upper.bounds = samrep[2,]
length(upper.bounds)
length(lower.bounds)

plot_ci(lower.bounds, upper.bounds, sam1)

#10 

# Every single one of the intervals contains, this does not compare to step 7 because step 7 had 8 of them removed
# Yes it does match the expectations since the confidence inteval is 99% and there 0 interval removed therefore it matches up



