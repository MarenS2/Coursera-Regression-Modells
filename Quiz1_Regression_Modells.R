## Quiz 1.
# Question 1.
x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)

sum(x*w)/7 # 0.1471

# Question 2.
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)

fit<- lm(y ~ x - 1)
summary(fit) # 0.8263

# Question 3.
data(mtcars)

fit <- lm(mpg ~ wt, mtcars)
summary(fit) # -5.3445

# Question 4.
CorYX <- 0.5
sdYoX <- 2 # sd(Y) = 2*sd(X)

beta1 <- CorYX*sdYoX
beta1 # 1

# Question 5.
CorYX <- 0.4
score1 <- 1.5

score2 <- score1*CorYX*1 + 0  # 0.6

# Question 6.
x <- c(8.58, 10.46, 9.01, 9.64, 8.86)

mean <- mean(x)
sd <- sd(x)
(x[1] - mean)/sd # -0.9718658

# Question 7.
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)

fit <- lm(y ~ x)
summary(fit) # 1.567

# Question 8.
# You know that both the predictor and response have mean 0. 
# What can be said about the intercept when you fit a linear 
# regression?
# It must be identically 0.

# Question 9.
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)

mean(x) # 0.573

