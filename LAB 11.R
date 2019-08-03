# Name: Shivansh Singh Chauhan
# Date: 3/29/18
# ISTA 116 Section C || Section Leader: Jorge Barrios
# Lab 10
# Collaborators: Hayden and Annelise

download.file("http://www.openintro.org/stat/data/nc.RData", destfile = "nc.RData")
load("nc.RData")

nc <- na.omit(nc)

#1


#2
hist(nc$weeks)
# No it does not looks normal
# No, because it is left skewed. So we wont be able to get the hypothis

#3
me = mean(nc$weeks)
#38.4675
stand = sd(nc$weeks)
# 2.753802 
row = nrow(nc)
# 800

sderror = stand / sqrt(row)
# 0.09736159

#4 and #5
lower = me - qnorm(1-(1-0.99)/2) * sderror
# 38.21671
upper = me + qnorm(1-(1-0.99)/2) * sderror
# 38.71829

#6
z = (me - 40) / sderror
# -15.74029

#7
p = pnorm(z, 0, 1)
# It is two sided since we are not restricting it with any specific value.
# As we have our p-value 4.003551e-56 with is way less than alpha that is 0.05 so we can reject out null hypothesis
# Because there is such a big difference there are very rare chances that our rejection will be wrong.

#8
rej = qnorm(0.05, 40, sderror)
#39.83985 

#9
m = 39 + (6/7)
prob = pnorm(rej, m, sderror  ) 
# 0.4295307
# No I wont be sastifitied since the probility is less than even half the time. 

#10
m1 = 39
prob1 = pnorm(rej, m1, sderror  ) 
# 1
# Yes, I am satisfied since the probability is 100%



