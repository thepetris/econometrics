# Exercise 2 no.3
glimpse(cars)
summary(cars)

x<- data.cars$speed
y<- data.cars$dist
plot(x,y)



modelcar <- ols(y ~ x)
print(modelcar, details = T)
abline(modelcar)

#define objects for interval calculation
modelcar[["std.err"]][["x"]] -> stdbeta
modelcar[["coefficients"]][["x"]] -> betahat

#calculate the interval with the critical value t(0.0025, 50)
betahat + 2.009 * stdbeta -> upperbound
betahat - 2.009 * stdbeta -> lowerbound

#Exercise 3
*regname <- ols("dependent_v" ~ "independent_v")
print(regname)

