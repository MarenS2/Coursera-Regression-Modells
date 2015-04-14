## Quiz 3.
# Question 1.
data(mtcars)

fit <- lm(mpg ~ as.factor(cyl) + wt, data=mtcars)
summary(fit)

# Question 2
fit2 <- lm(mpg ~ as.factor(cyl), data=mtcars)
summary(fit2)$coef[3] 
summary(fit)$coef[3] 

# Question 3
summary(fit)

fit3 <- lm(mpg ~ as.factor(cyl)*wt, data=mtcars)
summary(fit3)

result <- anova(fit, fit3, test="Chi")
result$Pr 

# Question 4
fit4 <- lm(mpg ~ I(wt * 0.5) + factor(cyl), data=mtcars)
summary(fit4)


# Question 5
fit5 <- lm(y ~ x)
lm.influence(fit5)$hat[5] 

# Question 6
dfbetas(fit5)[5, 2]

