######Exercise 5#####

#Part1
glimpse(data.pharma)
summary(data.pharma)
?data.pharma

pharma1<- ols(sales ~ ads + price + adsprice, data = data.pharma)
print(pharma1, details = T)

pharma2<- ols(log(sales) ~ log(price), data = data.pharma)
print(pharma2, details = T)
##############

#Part 2

#to activate packages from script: library(package)
#example library(desk)

glimpse(data.wage)
summary(data.wage)
?data.wage

#Estimate the first regression
print("First model:")
model1<- ols(wage ~ educ, data = data.wage, details = T)
print(model1)

#Estimated variation:
wage<- data.wage$wage
Sxy(wage, wage)

ols.infocrit(model1)-> info1
print(info1)

#Estimate the second regression
print("Second model:")
model2<- ols(wage ~ educ + age, data = data.wage, details = T)
print(model2)

#Estimated variation:
wage<- data.wage$wage
Sxy(wage, wage)

ols.infocrit(model2)-> info2
print(info2)

#Estimate the third regression
print("Third model:")
model3<- ols(wage ~ educ + age + empl, data = data.wage, details = T)
print(model3)

#Estimated variation:
wage<- data.wage$wage
Sxy(wage, wage)

ols.infocrit(model3)-> info3
print(info3)

