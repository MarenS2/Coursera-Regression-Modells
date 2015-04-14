## Quiz 4
# Question 1
library(MASS)
dim(shuttle)
head(shuttle)
shuttle$newUse <- as.numeric(shuttle$use == "auto")
fit <- glm(newUse ~ as.factor(wind) - 1, data=shuttle, family="binomial")

odds <- exp(summary(fit)$coef)
odds[1] / odds[2] 

# Question 2.
fit <- glm(newUse ~ as.factor(wind) + factor(magn) - 1, family="binomial", data=shuttle)

summary(fit)$coef
exp(coef(fit))
rate <- exp(cbind(OddsRatio = coef(fit), confint(fit)))
rate[1] /rate[2] 

# Question 3
fit3 <- glm(I(1 - newUse) ~ as.factor(wind) - 1, data=shuttle, family="binomial")

summary(fit3)$coef 
 

# Question 4
fit <- glm(count ~ spray - 1, data=InsectSprays, family="poisson")

summary(fit)$coef
rate <- exp(coef(fit))
rate[1] / rate[2]

# Question 5
fit <- glm(count ~ as.factor(spray) + offset(log(count+1)), 
           family="poisson", data=InsectSprays)
fit2 <- glm(count ~ as.factor(spray) + offset(log(10)+log(count+1)), 
            family="poisson", data=InsectSprays)

summary(fit)$coef
summary(fit2)$coef  

