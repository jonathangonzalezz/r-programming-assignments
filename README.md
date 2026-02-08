# Jonathan Gonzalez Gonzalez

LIS4370

Repository for R Programming Assignments

# Assignment 2 myMean - Function

Originally, we were given the following function to run on R. 

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
}
myMean(assignment2)

After running that code, we are prompted with the following message. 

Error in myMean(assignment2): object 'assignment' not found

The reason is that the correct arguments were not passed through the function. Where it says return, it should be assignment2 instead of assignment and someData. 
This is how it should look once that's replaced.

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}
myMean(assignment2)

After running it, we get the correct output: 

> myMean(assignment2)
[1] 19.25

 Blog post link
 
https://rprogramingwithjonathan.blogspot.com/2026/01/evaluating-function-mymean-in-rstudio.html


# Module 4 - Programming structure assignment

Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)

BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)

First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)

Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)

FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

hospital.df <- data.frame(
  Frequency,
  BP,
  First,
  Second,
  FinalDecision
)

boxplot(hospital.df$BP ~ hospital.df$First,
        names = c("Good", "Bad"),
        main = "Blood Pressure by First Doctor Assessment",
        ylab = "Blood Pressure")

hist(hospital.df$BP,
     main = "Histogram of Patient Blood Pressure",
     xlab = "Blood Pressure")
