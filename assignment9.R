Guns <- read.csv("Guns.csv")

plot(Guns$income, Guns$violent,
     main = "Income vs Violent Crime",
     xlab = "Income",
     ylab = "Violent Crime",
     col = "purple",
     pch = 19)

hist(Guns$violent,
     main = "Distribution of Violent Crime",
     xlab = "Violent Crime",
     col = "purple")

library(lattice)

xyplot(violent ~ income | law,
       data = Guns,
       main = "Violent Crime vs Income by Law",
       xlab = "Income",
       ylab = "Violent Crime")

bwplot(violent ~ law,
       data = Guns,
       main = "Violent Crime by Law",
       xlab = "Law",
       ylab = "Violent Crime")

library(ggplot2)

ggplot(Guns, aes(x = income, y = violent)) +
  geom_point(color = "purple") +
  labs(title = "Income vs Violent Crime",
       x = "Income",
       y = "Violent Crime")

ggplot(Guns, aes(x = factor(law), y = violent)) +
  geom_boxplot(fill = "gray") +
  labs(title = "Violent Crime by Law",
       x = "Law",
       y = "Violent Crime")