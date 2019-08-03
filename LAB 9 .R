# Name: Shivansh Singh Chauhan
# Date: 3/22/18
# ISTA 116 Section C || Section Leader: Jorge Barrios
# Lab 9
# Collaborators: Hayden and Annelise

download.file("http://www.openintro.org/stat/data/ames.RData", destfile = "ames.RData")
load("ames.RData")

#1
living = ames$Gr.Liv.Area
m = mean(living)
#1499.69

#2
ames.gr.liv.area.sample = sample(living, size = 50, replace = FALSE)
samMe = mean(ames.gr.liv.area.sample)
#1586.2
# It is different because mean streches out. And since we are taking random sampling it doesnt show entire population but almost close to it.


#3
cut = par(mfrow = c(2,1))
area.xlim = range(living)
# lowest = 334, highest = 5642

#4
hist(living, xlim = area.xlim)
abline(v = m, col = "red", lwd = 2 )

#5
hist(ames.gr.liv.area.sample, xlim = area.xlim )
abline(v = samMe, col = "red", lwd = 2)
# The mean is shifted left side in this one as compared to the whole population. 
# The frequecy is quite low in this one as compared to the entire population
# This one doesn't has bar before 500 whereas, the entire population plot does also include that

#6
new_sam = sample(living, size = 10, replace = FALSE)
new_mean = mean(new_sam)
area.means.10 = replicate(5000, {new_sam = sample(living, size = 10, replace = FALSE);new_mean = mean(new_sam) })
hist(area.means.10)
# unimodal symtry which is normaly distributed.

#7 
new_sam2 = sample(living, size = 50, replace = FALSE)
area.means.50 = replicate(5000, {new_sam2 = sample(living, size = 50, replace = FALSE);new_mean2 = mean(new_sam2) })
new_sam3 = sample(living, size = 1000, replace = FALSE)
area.means.100 = replicate(5000, {new_sam3 = sample(living, size = 100, replace = FALSE);new_mean3 = mean(new_sam3) })

#8
par(mfrow = c(3,1))
area.means.10.xlim = range(area.means.10)
# 994.1 2164.2

#9
hist(area.means.10, breaks = 20, xlim = area.means.10.xlim)
hist(area.means.50, breaks = 20, xlim = area.means.10.xlim )
hist(area.means.100, breaks = 20, xlim = area.means.10.xlim)
# The area.means.100 will be the one that I'll choose because it has more population 
# The the better the sample size the better the prediction.

#10
area.means.1 = replicate(5000, {new_sam01 = sample(living, size = 1, replace = FALSE);new_mean01 = mean(new_sam01) })
area.means.2930 = replicate(5000, {new_sam2930 = sample(living, size = 2930, replace = FALSE);new_mean2930 = mean(new_sam2930) })
hist(area.means.1, breaks = 20, xlim = area.means.10.xlim)
hist(area.means.2930, breaks = 20, xlim = area.means.10.xlim)
# The sample of the 1 gives us multiple means since sample size 1 is repeating itself again and again. 
# Whereas, since 2930 is the entire population its gives just one mean no matter how many time it's being replicated.




