#Name- Shivansh Singh Chauhan
#Date- 1 March
#ISTA 116 Section C || Section Leader - Jorge Barrios
# Collaborator: Michael Fong, Hayden Jackson, Annelise Dutcher


#1
FourSuits = c("Spade", "Heart", "Dimond", "Club")
Deck = c("Ace", 2,3,4,5,6,7,8,9,10,"Jack", "Queen", "King")

#2
df = expand.grid(Deck = Deck,  FourSuits = FourSuits)
print(df)

#3
tab = prop.table(table(df))
colSums(tab)
# The probability of Spade is 0.25
index = tab["Ace", "Spade"]
# The probability of Ace and spade is 0.01923077
rowSums(tab)
# The probability of Ace is 0.07692308

#4
num = nrow(df)
without = sample(num, size = 10)
df[c(without),]

#5
df2 = df[c(- without),]
tab2 = prop.table(table(df2))
colSums(tab2)
# The probability of Spade is 0.3095238
index2 = tab2["Ace", "Spade"]
# The probability of Ace and spade is 0.02380952
rowSums(tab2)
# The probability of Ace is 0.07142857

# They are not the same as step three since there are 10 card less
# which effects the probability and the stats above as well are not the same
# as step 3

#6
dice = c(1,2,3,4,5,6)
dice2 = c(1,2,3,4,5,6)
dice3 = c(1,2,3,4,5,6)

dfDice = expand.grid(dice = dice, dice2 = dice2, dice3 = dice3)
print(dfDice)

#7
rwsum = rowSums(dfDice)
dfDice$total = c(rwsum)
print(dfDice)

#8
barplot(table(rwsum))
# 10 and 11 are the most likely outcomes 

#9
bar = replicate(1000, {sam = sample(1:6, size = 3, replace = TRUE); sum(sam)})
barplot(table(bar))
# If we compare this with the 8th step, we can say that,
# In 8th step it is hard core mathematics.
# Whereas, in this we are taking the sample.
# Which mean that in the 8th step that is probability and in this there are chances of different no. to show as well.
# This is why graph is not exactly the same.

#10
sor = replicate(1000, {samp = sample(1:6, size = 5, replace = TRUE); so = sort(samp, decreasing = TRUE); sum(so[1:3])})
barplot(table(sor))
# This graph is different from other two because we chose the hightest 3 sum values
# That is why we can see big towers at the end rather than equally distributed.


