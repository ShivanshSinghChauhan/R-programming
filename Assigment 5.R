#Name- Shivansh Singh Chauhan
#Date- 15 Feb
#ISTA 116 Section C || Section Leader - Jorge Barrios
# Collaborator: Michael Fong

#1
kobe.baket.prob = table(kobe$basket)

#2
w = prop.table(kobe.baket.prob)
hVa = w[1]
# 0.4360902 is the probability of H

#3
basket = kobe$basket
x = basket[1:13]
y = calc_streak(x)
# It gave the output 1 0 2 0 0 0 3 0
# This means that there are those many streaks as the number shows above
# Like 3 represent the shots on the target continuesly.
# This fuction compares the Value with "H" if that is there
# It will count it untill there is a miss. 
# 0 represents the break in the hitting streak.

#4
barplot(table(calc_streak(basket)))

#5
size1 = length(kobe$basket)
s = sample(c("H", "M"), size = size1, prob = prop.table(kobe.baket.prob), replace = TRUE)

#6
prop.table(table(sample(c("H", "M"), size = size1, prob = prop.table(kobe.baket.prob), replace = TRUE)))
# probability of H = 0.4661654
# probability of M = 0.5338346
# Yes, it does differ from kobe's probability distribution in step 1
# because the value of H in step 1 is 0.4360902 
# Whereas in this one the probabilty of H is 0.4661654
# It is different because the probability works that way. 
# It will be close most of the time but not the same.

#7 
barplot(table(calc_streak(s)))
# In this one his streak was higher than the one with koeby's as it went upto 7
# Whereas, in kobey's it was only till 4. 
# The 0's were more in kobey's than this one.

#8
prop.table(table(calc_streak(s)))
# In this one the 0's and 2's value is higher than the kobey's 
prop.table(table(calc_streak(basket)))
# In kobey's 1's and 3's are higher it also have 4 in this

#9 
s = sample(c("H", "M"), size = size1, prob = prop.table(kobe.baket.prob), replace = TRUE)
a = calc_streak(s)
b = prop.table(table(a))
streak = b[1]
Sum = replicate(100,{s = sample(c("H", "M"), size = size1, prob = prop.table(kobe.baket.prob), replace = TRUE); a = calc_streak(s); b = prop.table(table(a)); streak = b[1] })  
summary(Sum)
# No, kobey's 0 streak is not typical since 1st Qu. is 0.5267 and 3rd Qu. is 0.6023
# the median is 0.5556 and Mean is 0.5518 so its shows that the value will never lie near 0

#10
c = prop.table(table(a))
streak3 = b[4]
summa = replicate(100,{s = sample(c("H", "M"), size = size1, prob = prop.table(kobe.baket.prob), replace = TRUE); a = calc_streak(s); b = prop.table(table(a)); streak3 = b[4] })
summary(summa)
# No, kobey's 3 streak is not typical since 1st Qu. is 0.02730 and 3rd Qu. is 0.05970
# the median is 0.5556 and Mean is 0.5518 so its shows that the value will never lie near 3
# Kobey's has more chance than the our player because our player's range is
# 1st Qu. 0.02817 median is 0.04938 and 3rd qu. is 0.05936
# whereas, kobey has 1st Qu. 0.5267 Median  0.5625 3rd Qu. 0.6023

