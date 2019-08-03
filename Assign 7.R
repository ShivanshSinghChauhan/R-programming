# Name: Shivansh Singh Chauhan
# Date: 3/1/18
# ISTA 116 Section C || Section Leader: Jorge Barrios
# Lab 7
# Collaborators: Joshua Mantell , Michael Fong

#1
game = data.frame(score = c(100, 0, 0, 0, 50, 0), prob = rep(1/6, 6))

#2
roll = sample(game$score, size = 10000, prob = game$prob, replace = TRUE)
roll
hist(roll)
# The possible scores are 0, 50, and 100. Out of the scores, 0 is the most likely outcomes with 50 and 100 having similar probabilities, but much lower than 0.

#3
ave = mean(roll)
ave
# 24.54
randave = weighted.mean(game$score, game$prob)
randave
# 25
# The values are very close as the mean of the data is skewed due to experimentation while the weighted mean is a theoretical value.

#4
standev = sd(roll)
standev
# 38.2335
randstandev = sqrt(sum((game$score - randave)^2 * (game$prob)))
# 38.18813
# The values do not match but are very similar due to approximating the sd from theoretical values.

#5
game2 = data.frame(score = c(100, 0, 0, 0, 50, 0), prob = c(1/10, 1/10, 1/10, 1/10, 1/2, 1/10))
game2

#6
roll2 = sample(game2$score, size = 10000, prob = game2$prob, replace = TRUE)
roll2
hist(roll2)
# The possible scores did not match the occurence, but the occurence of 50 points went up by a lot and now outweighs the 0 score outcome which can be scores by 4 other outcomes. The 100 point outcome is at a lower probability than in the previous game.

#7
ave2 = mean(roll2)
ave2
# 35.42
randave2 = weighted.mean(game2$score, game2$prob)
randave2
# 35
# I would expect 10 points using the loaded die on average.

#8
bothroll = replicate(10000, {s = sample(game$score, size = 1, prob = game$prob, replace = TRUE) + sample(game2$score, size = 1, prob = game2$prob, replace = TRUE)})
bothroll
hist(bothroll)
# It does not have the same modes as in the previous 2 games as the number point outcomes have increased to 5 but still follow the same skew trending left.

#9
ave3 = mean(bothroll)
ave3
# 59.615
randave3 = weighted.mean(game$score + game2$score, game$prob + game2$prob)
randave3
# 60
# The means are much higher due to the addition of two new results being higher than the previous highest value at  100.

#10
fiveroll = replicate(10000, {s = sample(game$score, size = 1, prob = game$prob, replace = TRUE) + sample(game$score, size = 1, prob = game$prob, replace = TRUE) + sample(game2$score, size = 1, prob = game2$prob, replace = TRUE) + sample(game2$score, size = 1, prob = game2$prob, replace = TRUE) + sample(game2$score, size = 1, prob = game2$prob, replace = TRUE)})
fiveroll
fiverolltotal = fiveroll / 5
fiverolltotal
ave4 = mean(fiverolltotal)
ave4
# 30.733
randave4 = 2/ 5 * weighted.mean(game$score, game$prob)
randave5 = 3/5 * weighted.mean(game2$score , game2$prob )
add_all = randave4 + randave5
print(add_all)
# 31
# I would play with a single loaded die as the difference of points to play to average out being 60 - 15 = 45 is the largest return on playing with the other being in the 20s.