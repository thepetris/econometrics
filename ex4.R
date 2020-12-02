#EXERCISE 4

###2.1###
data.fertilizer
glimpse(data.fertilizer)
y<- data.fertilizer$barley
x1<- data.fertilizer$phos
x2<- data.fertilizer$nit

regression<- ols(y ~ x1 + x2, data = data.fertilizer)
print(regression)

#Use a t-test to determine if the phosphate coefficient 
#is not equal to zero at 5% significance level

"H0: beta1=0; H1=beta1 different than 0"

beta_hat_1<- regression[["coefficients"]][["x1"]] 
sd_beta_hat1<- regression[["std.err"]][["x1"]]

#t^ = (β hat − q)/sd(β hat)
t_hat<- (beta_hat_1-0)/sd_beta_hat1

#degrees of freedom: T-K-1 where T=no. of observations & K the number of variables
Df<-nrow(data.fertilizer) - 2 - 1

#t0,0025,27 = 2.052

#t_hat is larger than t critical, therefore we reject H0
#This means that phosphate is significantly different than 0

