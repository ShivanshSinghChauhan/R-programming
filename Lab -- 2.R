# Name:Shivansh Singh Chauhan
# Date:01/25/18
# ISTA 116 Section  C || SECTION LEADER: Jorge Barrios
# Lab Assignment 
# Collaborator(s): Michael Fong

#1
dim(present)
#63  3

#2
#year, boy, girls

#3
#from 1940 to 2002

#4
# No they are not in the similar scale
# in the present, there are 63 observations
# in arbuthnot, there are 82 observations

#5
x <- arbuthnot$boys
y <- arbuthnot$girls
plot(x/y)
# By the ploting we can say that,
# Boys are born more than girls since the ratio is greater than 1
# Since, boys were x and girls were y.

#6
x <- present$boys
y <- present$girls
plot(x/y)
#boys are propotionally more than girls in arbuthnot compare to present.

#7
present[1, "year"]
present[2, "year"]
present[1, "boys"]
# as we change the numeric value we get the value of the word we enter.
# like we enter [1, "year"] we will get 1940
# the first year of the "year colunm"

#8
# bracket iniates the indexing
# first thing inside the brackets gives the rows
# second thing inside the brackets columns

#9
?which.max
# This fuction brings up the help for the which.max fuction where 
# it describes the use of the fuction and how its used.

#10
present[which.max(x + y), "year"]
# the year is 1961 for the most number of births.