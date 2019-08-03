#Name- Shivansh Singh Chauhan
#Date- 12 Feb
#ISTA 116 Section C || Section Leader - Jorge Barrios
# Collaborator: Michael Fong

library(openintro)
View(heartTr)

#1
boxplot(heartTr$survtime)
# 10 outliers can be seen.

#2
boxplot(log(heartTr$survtime))

#3
#The number of outliers changes because using the log fuction, sqishis down the numbers.
# When the number is squished you get rid of possible outliers. The first plot is better because the graph is more accurate
# and doesnt involve change in number with the logs

#4
table(heartTr$survived, heartTr$transplant)
# 4 people survivd in the control control

#5
prop.table(table(heartTr$survived, heartTr$transplant), margin = 2)
# Control's value is 0.1176471 and treatment's value is 0.3478261. 
# Hence treatment is more likely to survive.

#6
prop.table(table(heartTr$survived, heartTr$transplant), margin = 1)
# The previous question it says that there were 0.1176471 chances that were alive in the control group
# whereas, in 6 question it says that there were 0.1428571 chances that you were in control group after you are alive

#7
barplot(table(heartTr$survived,heartTr$acceptyear))
# Over time, by looking at the graph we could conclude that as the time passed the chances of death increased.

#8
barplot(table(heartTr$survived, heartTr$acceptyear),legend.text = TRUE)

#9
barplot(prop.table(table(heartTr$transplant, heartTr$acceptyear), margin = 2), legend.text = TRUE)
# The trend abfter looking at the graph can be said as is going down with the years passing by.
# But we can also see that there is a sudden growth in the last year, ie, 74

#10
mosaicplot(table(heartTr$acceptyear,heartTr$transplant))
# By comparing both the graph we can see that mosaic plot also provides the information about the quatity 
# The width tells the quantity that can not be seen in the bar plot.