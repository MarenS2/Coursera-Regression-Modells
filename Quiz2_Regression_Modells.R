## Quiz 2
# Question 1
x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)

f <- lm(y ~ x)
summary(f) 

# Question 2
summary(f) 

# Question 3
data(mtcars)
x<-mtcars$wt
y<-mtcars$mpg

fit<-lm(y ~ x)
predict(fit,data.frame(x=mean(x)), interval="confidence")


# Question 5
data(mtcars)

predict(fit, data.frame(x=mean(3)), interval="prediction")


# Question 6
fit2 <- lm(y ~ I(x / 2))
tbl2 <- summary(fit2)$coefficients
mean <- tbl2[2,1]      
se <- tbl2[2,2] 
df <- fit2$df

mean + c(-1,1) * qt(0.975, df=df) * se

# Question 8
# Y = beta_0 + beta_1 * X + eps = beta_1 * (X + c) + (beta_0 - beta_1 * c)

# New intercept: beta_0 - c*beta_1

# Question 9
fitRes <- fit$residuals ^ 2
fitIntercept <- lm(mpg ~ 1, mtcars)
fitInterceptRes <- fitIntercept$residuals ^ 2

sum(fitRes) /sum(fitInterceptRes)

