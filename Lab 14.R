# Name: Shivansh Singh Chauhan
# Date: 5/2/18
# ISTA 116 Section C || Section Leader: Jorge Barrios
# Lab 14
# Collaborators: Annelise and Hayden
download.file("http://www.openintro.org/stat/data/mlb11.RData", destfile = "mlb11.RData")
load("mlb11.RData")

#1
runs = mlb11$runs
abat = mlb11$at_bats
plot(run~atbat)
#There does appear to be some positive association in the data, however it is not strong and is too sporadic to appear linear.

#2
cor(abat, runs)
#0.610627
#This coeffiecient represents that the relationship is a medium strength linear relationship. It is closer to half than a strong relationship which would be around .8.

#3
plot_ss(x = mlb11$at_bats, y = mlb11$runs)
"
Call:
lm(formula = y ~ x, data = pts)

Coefficients:
(Intercept)            x  
-3006.7806       0.6705  

Sum of Squares:  124264.5
"
#The smallest I could get the sum of squares was to 124264.5

#4
lm1 = lm(run ~ atbat)
"
Call:
lm(formula = run ~ atbat)

Coefficients:
(Intercept)        atbat  
 -2789.2429       0.6305  
"
#y=0.6305x-2789.2429
#The slopes of the two equations do not differ jurastically and the incercepts vary by around 217.

#5
summary(lm1)
"
Call:
lm(formula = run ~ atbat)

Residuals:
    Min      1Q  Median      3Q     Max 
-125.58  -47.05  -16.59   54.40  176.87 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept) -2789.2429   853.6957  -3.267 0.002871 ** 
atbat           0.6305     0.1545   4.080 0.000339 ***
---
Signif. codes:  0 ???***??? 0.001 ???**??? 0.01 ???*??? 0.05 ???.??? 0.1 ??? ??? 1

Residual standard error: 66.47 on 28 degrees of freedom
Multiple R-squared:  0.3729,	Adjusted R-squared:  0.3505 
F-statistic: 16.65 on 1 and 28 DF,  p-value: 0.0003388
"
#

#6
plot(lm1)
#Constant variability: I used the residuals vs fitted plot for this. The plot shows that our data is fairly linear because it follows the horizontal line
#Normal Residuals: I used the Normal Q-Q plot to see if the plot had mornal residuals. Because the data closely follows the line, the distribution of residuals is fairly normal.
#After analyzing these plots, it appears that the data is fairly linear because there is constant variance and normal residuals.

#7
hrun = mlb11$homeruns
lm2 = lm(run~hrun)
#y= 1.835x+415.239

#8
summary(lm2)
"
Call:
  lm(formula = run ~ hruns)

Residuals:
  Min      1Q  Median      3Q     Max 
-91.615 -33.410   3.231  24.292 104.631 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 415.2389    41.6779   9.963 1.04e-10 ***
  hruns         1.8345     0.2677   6.854 1.90e-07 ***
  ---
  Signif. codes:  0 ???***??? 0.001 ???**??? 0.01 ???*??? 0.05 ???.??? 0.1 ??? ??? 1

Residual standard error: 51.29 on 28 degrees of freedom
Multiple R-squared:  0.6266,	Adjusted R-squared:  0.6132 
F-statistic: 46.98 on 1 and 28 DF,  p-value: 1.9e-07
"
#

#9
hit = mlb11$hits
bavg = mlb11$bat_avg
strkouts = mlb11$strikeouts
slnbase = mlb11$stolen_bases
win = mlb11$wins
lm3 = lm(run~hit)
summary(lm3)
#Rsqrd= 0.6419
lm4 =lm(run~bavg)
summary(lm4)
#Rsqrd= 0.6561
lm5 = lm(run~strkouts)
summary(lm5)
#Rsqrd= 0.1694
lm6 = lm(run~slnbase)
summary(lm6)
#Rsqrd= 0.002914
l7 = lm(run~win)
summary(l7)
#Rsqrd= 0.361
#Batting Average has the best predictor of runs because it has the highest R squared.

#10
model1 = lm(runs ~ at_bats + hits + homeruns + bat_avg + strikeouts + stolen_bases + wins, data = mlb11)
summary(model1)
"
Call:
lm(formula = runs ~ at_bats + hits + homeruns + bat_avg + strikeouts + 
stolen_bases + wins, data = mlb11)

Residuals:
Min      1Q  Median      3Q     Max 
-34.273 -17.965   2.141  20.011  40.257 

Coefficients:
Estimate Std. Error t value Pr(>|t|)    
(Intercept)   2.025e+03  3.750e+03   0.540 0.594549    
at_bats      -4.764e-01  6.679e-01  -0.713 0.483159    
hits          2.047e+00  2.599e+00   0.787 0.439522    
homeruns      1.030e+00  2.220e-01   4.639 0.000127 ***
bat_avg      -7.568e+03  1.458e+04  -0.519 0.608816    
strikeouts    4.780e-02  6.733e-02   0.710 0.485216    
stolen_bases  5.207e-01  1.705e-01   3.053 0.005825 ** 
wins          9.586e-01  6.783e-01   1.413 0.171559    
---
Signif. codes:  0 ???***??? 0.001 ???**??? 0.01 ???*??? 0.05 ???.??? 0.1 ??? ??? 1

Residual standard error: 27.08 on 22 degrees of freedom
Multiple R-squared:  0.9182,	Adjusted R-squared:  0.8922 
F-statistic:  35.3 on 7 and 22 DF,  p-value: 1.562e-10
"
#This model explains more than the single variable regression. The R squared is much closer to 1 (0.9182). I beleive this is because you would rather have more variables and data to create an accurate predication rather than less.
