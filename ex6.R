##### EXERCISE 6 ######


glimpse(data.milk)
summary(data.milk)
?data.milk

milk<- data.milk$milk
feed<- data.milk$feed

linear<- plot(milk, feed, main = "Milk output")
#The relationship appears to be non-linear#

#### Lin-Log ###
logfeed<- log(data.milk$feed)
linlog<- plot(milk, logfeed, main = "Lin-log")

####Log-lin###
logmilk<- log(data.milk$milk)
loglin<- plot(logmilk, feed, main = "Log-lin")

###Log-log###
loglog<- plot(logmilk,logfeed, main = "Log-log")

###RESET test###  #PROBLEMS with this one!#
reset.test(loglin, m=3, sig.level = 0.05)

#Ex. 3#
View(carbrand)
summary(carbrand)
speed<- carbrand$speed
brand<- carbrand$brand
dist<- carbrand$dist

plot(speed, dist)
plot(speed, dist, col=brand)
