#Name:  Shivansh Singh Chauhan
#Date: 3/22/18
#ISTA116 Section A || Section Leader: Jorge Barrios
#Assignment 7
#Collaborator(s): Annelise and Hayden

download.file("http://www.openintro.org/stat/data/nc.RData", destfile = "nc.RData")
load("nc.RData")

#1
nsh = nc$habit
nsw = nc$weight
by(nsw, nsh, mean)
"
nc$habit: nonsmoker
7.144273

nc$habit: smoker
6.82873
"


#2
by(nsw, nsh, hist)
by(nsw, nsh, length)
"
nch: nonsmoker
873

nch: smoker
126
"

#3
#Null: The weight of a newborn is not affected by the smoking status of the mother
 
#Alternative: The weight of a newborn is affected by the smoking status of the mother

#4
t.test(nsw~nsh)
"
Welch Two Sample t-test

data:  nsw by nsh
t = 2.359, df = 171.32, p-value = 0.01945
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
0.05151165 0.57957328
sample estimates:
mean in group nonsmoker    mean in group smoker 
               7.144273                6.828730 
"


#5
#the true difference would not be between the means .o8 pounds.
#It is because we are rejecting the null that there is no difference, and because it falls below the t-score

#6
nswk = nc$weeks
t.test(nswk)
"
One Sample t-test

data:  nswk
t = 413.1, df = 997, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
38.15257 38.51677
sample estimates:
mean of x 
38.33467 
"


#7
t.test(nswk, conf.level = .90)
"
One Sample t-test

data:  nswk
t = 413.1, df = 997, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
90 percent confidence interval:
 38.18189 38.48745
sample estimates:
mean of x 
 38.33467 
"


#8
ncma = nc$mature
ncga = nc$gained
t.test(ncga~ncma)
"
Welch Two Sample t-test

data:  ncga by ncma
t = -1.3765, df = 175.34, p-value = 0.1704
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -4.3071463  0.7676886
sample estimates:
  mean in group mature mom mean in group younger mom 
28.79070                  30.56043 
"
#

#9
ncmage = nc$mage
by(ncmage, ncma, max)
"
nsm: mature mom
 50

nsm: younger mom
 34
"
#The "by" method is used by me because it gives me the cutoff without any excess information. 
#It also separates the cutoff between both variables.

#10
#Catagorical Var: Marital Status | Numerical Var: Age
#Null: Age does not affect marital status
#Alternative: Age does affect marital status
ncmat = nc$marital
by(ncmage, ncmat, hist)
by(ncmage, ncmat, length)
"
ncmat: married
 386
 
ncmat: not married
 613
"
#The conditions for this test are not satisfied. 
#The distribution does not match a normal distribution. 
t.test(ncmage~ncmat)
"
Welch Two Sample t-test

data:  ncmg by ncmtl
t = -15.316, df = 803.71, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -6.294838 -4.864659
sample estimates:
  mean in group married mean in group not married 
23.56218                  29.14192 
"
#You can reject the null hypothesis because p is less than alpha which is (.05).
