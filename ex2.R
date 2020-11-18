# Exercise 2 no.3
glimpse(cars)
summary(cars)

y<- data.cars$speed
x<- data.cars$dist
plot(x,y)

#no.4
x<- c(10, 30, 50)
y<- c(2, 3, 7)
plot(x,y)

xbar<- mean(x) #sum(x)/length(x)
xbar

ybar<- mean(y) #sum(y)/length(y)
ybar

Sxx<- sum((x-xbar)^2)
Sxy <- sum((x-xbar)*(y-ybar))

betahat<- Sxy/Sxx
betahat

alphahat<- ybar-betahat*xbar
alphahat

"OLS = yhat=alphahat+betahat*xt"
"yhat=0,25+0,125*xt"
    