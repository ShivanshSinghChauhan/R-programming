#Name- Shivansh Singh Chauhan
#Date- 7 Feb
#ISTA 116 Section C || Section Leader - Jorge Barrios
# Collaborator: Michael Fong


#1
weight = cdc$weight
desiredWeight = cdc$wtdesire
plot(weight, desiredWeight)
# After ploting we can say that relationship between these two is
# positive correlation

#2
wdiff = weight - desiredWeight
print(wdiff)
# When the difference is 0 that shows that the person is on the weight that he or she desired.
# When the difference is positive implies that the individual wants to loose his or her weight.
# When the difference is negative it implies that the individual wants to gain weight.

#3
summary(wdiff)
#The most common method for measuring the center is the mean, an average of the data.
# Mean = 14.59, which is also the centre

#4
hist(wdiff)
# The technique I used for for Shape was the histogram. 
# By looking at the histogram, it shows that the shpe is unimodal because there is one big peak.
boxplot(wdiff)
# The technique I used for the spead is bloxplot.
# By looking at the box plot it can easily be seent that it is not spread at all.
# also if we look at the histogram it can be easily seen that the graph is centralized and not at all spread.

#5
# By looking at the mean it can be said people want to loose wait since the mean is 14.59 which is positive.
# But by looking at the box plot it can be said that most of the people are happy since, it shows it is near 0.

#6
male = cdc[(cdc$gender == "m"),]
female = cdc[(cdc$gender == "f"),]

boxplot(wdiff~cdc$gender)
# By looking at the comparision between the box plot 
# It can be seen that men are more unsatisfied with there current weight compared to the women
# It also shows that there are more men compared to women who wants to gain weight.
# As men wants be big and heavy, whereas womens wants to stay slim.

#7
# If we look at the men box plot, it can be seen there are two outliers in the data.
# By looking at the values it definetly seems like a data error. 
# Because its practically impossible for men to loose 200 pounds of weight.

#8
meanw = mean(cdc$weight)
#169.683
sdw = sd(cdc$weight)
#40.08097
x = meanw - sdw
# 1 standard deviation below the mean (129.602)
y = sdw + meanw
# 1 standard deviation above the mean(209.7639)
q = meanw - sdw*2
# 2 standard deviations below the mean(89.52101)
a = meanw + sdw*2
# 2 standard deviations above the mean (249.8449)

#9
z = subset(cdc, cdc$weight <= y & cdc$weight >= x)
d = nrow(z)/nrow(cdc)
# 0.7076 
w = subset(cdc, cdc$weight <= a & cdc$weight >= q)
e = nrow(w)/nrow(cdc)
# 0.9563

#10
meanh = mean(cdc$height)
# 67.1829
sdh = sd(cdc$height)
# 4.125954
b = meanh - sdh
c = sdh + meanh
s = subset(cdc, cdc$height <= c & cdc$height>= b)
r = nrow(s)/nrow(cdc)
# 0.62125 is the 1 standard deviation of height
b2 = meanh - sdh*2
c2 = sdh + meanh*2
s2 = subset(cdc, cdc$height <= c2 & cdc$height>= b2)
r2 = nrow(s2)/nrow(cdc)
# 0.9945 is the 2 standard deviation of height.

meana = mean(cdc$age)
sda = sd(cdc$age)
p = meana - sda
o = sda + meana
l = subset(cdc, cdc$age <= o & cdc$age >= p)
k = nrow(l)/nrow(cdc)
print(k)
# 0.6403 is the 1 standard deviation of age
p2 = meana - sda*2
o2 = sda + meana*2
l2 = subset(cdc, cdc$age <= o2 & cdc$age>= p2)
k2 = nrow(l2)/nrow(cdc)
# 1 is the 2 standard deviation of age.

