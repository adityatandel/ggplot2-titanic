Springboard

# This code is for the Titanic Exercise. The goal is to finding the chances of surviving when the ship sank.

# Structure of the titanic dataset
str(titanic)

# First just did a simple bar plot by mapping Pclass and filling it with Sex
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge")


# Next, added a facet_grid function to differentiate between those who survived in each class
ggplot(titanic, aes(x = factor(Pclass), fill = factor(Sex))) +
  geom_bar(position = "dodge") +
  facet_grid(". ~ Survived")

# Used jitter to make sense of the over populated data
posn.j <- position_jitter(0.5, 0)


# Plotted Age on y axis and added extra aesthetics to the geom_jitter function. Looks like females between 20-40 yrs old survived more than men
ggplot(titanic, aes(x = factor(Pclass), y = Age, col = factor(Sex))) +
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) +
  facet_grid(". ~ Survived")


