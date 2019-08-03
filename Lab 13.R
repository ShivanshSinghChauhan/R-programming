# Name: Shivansh Singh Chauhan
# Date: 3/29/18
# ISTA 116 Section C || Section Leader: Jorge Barrios
# Lab 13
# Collaborators: Michael , Annelise and Hayden
download.file("http://www.openintro.org/stat/data/atheism.RData", destfile = "atheism.RData")
load("atheism.RData")

#1
#According to the paragraph the statistics seem to be Population paramater because the data is said to be from the entire population.

#2
subset(atheism, nationality == "United States")
table(subset(atheism, nationality == "United States"))
atheism.us.df = subset(atheism, nationality == "United States")
atheism.us = table(atheism.us.df$year, atheism.us.df$response)


#3
prop.table(atheism.us, margin = 1)["2012", "atheist"]
#                                                 atheist   
#  United States                                0.0499002  
#There were only 50 people from the United States who claimed to be atheists
#Whereas, there were 952 people who claimed to not be atheists. 
#Which certainly does not debunk our claim in number 1.

#4
prop.table(atheism.us, margin = 1)
d = prop.table(atheism.us, margin = 1)
d1 = d["2012", "atheist"]
d2 = d["2012", "non-atheist"]
mean(atheism.us)-qnorm(1-(1- .95)/2)
#499.04

#5
newn = table(atheism)
prop.test(as.table(atheism.us))

'
2-sample test for equality of proportions with continuity correction

data:  as.table(atheism.us)
X-squared = 26.132, df = 1, p-value = 3.188e-07
alternative hypothesis: two.sided
95 percent confidence interval:
-0.05573843 -0.02410189
sample estimates:
prop 1     prop 2 
0.00998004 0.04990020  '

#6
atheism.us.2012 = prop.table(atheism.us, margin = 1)["2012", "atheist"]
atheism.us.2005 = prop.table(atheism.us, margin = 1)["2005", "atheist"]
#The amount of atheists in 2012 is higher. however the sample is slightly smaller overall from 2005 compared to 2012.

#7
n1 = 1000
p1 = seq(0,1,0.01)
sqrt(p1 * (1-p1)/(n1))

#8
plot(p1)

#9
atheism.spain.df = subset(atheism, nationality == "Spain")
atheism.spain = table(atheism.spain.df$year, atheism.spain.df$response)
atheism.spain
'      atheist non-atheist
2005     115        1031
2012     103        1042'
#The table shows that the amount of atheists have actually decreased from 2005 to 2012 in spain.

#10
atheism.col = subset(atheism, nationality == 'Colombia')
atheism.col
atheism.colu = table(atheism.colombia$year, atheism.colombia$response)
atheism.colu
atheism.col2012 = atheism.colu['2012',]
# At least 10 in each so sample is sufficiently large.
atheism.braz = subset(atheism, nationality == 'Brazil')
atheism.braz
atheism.bra = table(atheism.brazil$year, atheism.brazil$response)
atheism.bra
# At least 10 in each so sample is sufficiently large.
prop.test(as.table(atheism.col2012))
# p-value: 0.02970297
prop.test(as.table(atheism.br))
# p-value: 0.00999001
# I believe there is not enough convincing evidence to say that there were more atheists in Colombia than Brazil in 2012 or vice versa due to the amount calculated being only 2 more in Brazil than in Colombia.

