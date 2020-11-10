#3.1
x14 <- c(28000, 84000, 4200)
y14 <- c(70, 252, 21)
proportions <- income_2014/donations
print(proportions)

#3.2
mean(proportions)
mean(proportions) -> betahat

#3.3  (compare betahat with b=0,5%)
print(betahat)

#3.4
yhat<- 5000*betahat
yhat

#3.5
x12<- c(30000, 84000, 40000)
y12<- c(90, 252, 120)
x13<- c(34000, 88000, 41000)
y13<- c(50, 252, 100)

donations <- cbind(x12, y12, x13, y13, x14, y14)
print(donations)

rownames(donations) <- c("Meier", "Schmidt", "Huber")
print(donations)
