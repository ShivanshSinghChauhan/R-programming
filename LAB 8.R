# Name: Shivansh Singh Chauhan
# Date: 3/19/18
# ISTA 116 Section C || Section Leader: Jorge Barrios
# Lab 8
# Collaborators: Hayden and Annelise

download.file("http://www.openintro.org/stat/data/bdims.RData", destfile = "bdims.RData")
load("bdims.RData")

# 1
fdims = subset(bdims, sex == 0 )
hist(fdims$hgt, probability = TRUE)
# Yes the data apperars to be normally distributed because it follows a symitric unimodal form

#2
x = seq(min(fdims$hgt), max(fdims$hgt), 0.1)
print(x)

#3 
y = dnorm(x, mean(fdims$hgt),sd(fdims$hgt))
print(y)

#4
lines(x,y,col="red")
# It shows that the data has a normal distribution and the line shows the symitric unimodal form
# YEs, the female height data looks like that.

#5
qqnorm(fdims$hgt)
qqline(fdims$hgt)
# It does follow the line. Almost all the dots follow the line 
# Yes, the Q-Q normality plot for the female height data look like that

#6
sam = rnorm(nrow(fdims), mean(fdims$hgt), sd(fdims$hgt))
# It should show normal because we are sampling from normal distribution 
qqnorm(sam)
qqline(sam)
#Yes the dots follow the line, therefore represents the normal distribution as expected

#7
qqnormsim(fdims$hgt)
#We can use these plots to be more confident becasue through comparing them, they are pretty much identical. The "Sim" graphs all represent normally distributed random data, so comparing the "data" chart to these you can be confident your data is normal as long as it closely follows the "Sim" graphs. It is more evidence to support your data.

#8
qqnormsim(fdims$age)
qqnormsim(fdims$wgt)
#Age is not normally distributed because the dots do not follow the line. They stray from the line at the top and bottom of the graph and the graph does not look like the "Sims". Weight, however, is normally distributed. The dots follow the line and the graph appears to mimic the "Sims".


#9
p = pnorm(182, mean(fdims$hgt), sd(fdims$hgt), lower.tail = FALSE )
#0.004434387
nrow(subset(fdims, fdims$hgt > 182))/nrow(fdims)
'
[1] 0.003846154
'
#This does not match the estimated probabilty. This is because the first value using pnorm is a perfect prediction, but the actual data is not perfectly distributed.




#10
q = qnorm(.9, mean(fdims$hgt), sd(fdims$hgt))
#  173.2596

nrow(subset(fdims, fdims$hgt < q))/nrow(fdims)
'
[1] 0.8884615
'
#This does not match the expected percentile. This is because the first value using qnorm is a perfect prediction, but the actual data is not perfectly distributed.











