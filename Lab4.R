#at only extreme pointswe canc alculate the vallue using pbinom!!!
#dpois(a,lambda)
#ppois(50,50)-ppois(47,50) because of the given range if 48-50 toh use 47 in ppois
#dhyper(a,m,n,k)
#a=3
#k=5
#m=total defective
#n=total non defective
#in binomial
#d/p binom
#d/p 
#seq(0,31)
#pmf<-dbinom(x,31,.447) range pe
#plot(x,pmf)
#cdf<-pbinom(x,31,.447) point pe
#diff()
pbinom(9, 12,1/6)-pbinom(6, 12,1/6)
#there are 2 functions p functions for continuous points, d functions for single point
#Q1
#P(7<=x<=9) = P(9)-P(6)
#binomial distribution parameters - n and probability of success
#prob of success direct jinn cases mai nikal jaaye
#binomial distribution question mai nahi diya hoga
# pbinom(9, size=12, prob=1/6)-pbinom(6, size=12, prob=1/6) #binomial distribution 

#Q2
#normal distribution parameters- mean, sd
#normal distribution question mai diya hoga
# pnorm(84, mean = 72, sd=15.2)#prob of x<=84 but we want porb of x>=84
# pnorm(84, mean = 72, sd=15.2, lower.tail = FALSE) #prob of x>=84

#Q3
#poisson distribution -  recurring events in a particular time frame
#poisson distribution parameters - avg of event in a particular time frame, here 5 cars arrive therefore average is 5
# X - number of cars between 10 and 11
# prob of no cars arriving therefore, x=0
# dpois(0, lambda = 5)

# lambda = 5*10(no of hours)
# ppois(50, lambda = 50)-ppois(47, lambda = 50)
#or
# dpois(48, 50)+dpois(49, 50)+dpois(50, 50)

#Q4
#use hypergeometric when the problem is a sub problem of another
#hypergeometric distribution parameters - jinki probab nikaalni uske total pieces(total defective), jitne bache pieces hai(total non defectives), jitne pieces uthaaye hai(5)  
# dhyper(3, m = 17, n = 233, k = 5)

#Q5
# (a) 
# success failure case hai, toh binom distribution hai
# pmf values - d functions
# cdf values - p functions
# n = 31, p =0.447, x - no of students who uses wikipedia

# (b)
# x=seq(0, 31)
# pmf<-c()
# for (i in 1:length(x)) {
#    pmf[i] = dbinom(x[i], size=31, prob=0.447)
# }
# pmf
# plot(x,pmf)
x <- seq(0, 31)
cdf <- c()

# Calculate the cumulative probabilities
for (i in 1:length(x)) {
  cdf[i] <- pbinom(x[i], size = 31, prob = 0.447)
}

# Adjust the plot margins
par(mar = c(5, 5, 4, 2))

# Create a PDF file for the plot
pdf("my_plot.pdf", width = 8, height = 6)

# Create the plot
plot(x, cdf, type = "s", ylim = c(0, 1), xlab = "Number of Students Using Wikipedia", ylab = "CDF", main = "CDF of Students Using Wikipedia")

# Close the PDF file
dev.off()


# (d)
# n=31
# p=0.447
# mean = n*p
# variance = n*p*(1-p)
# std = sqrt(variance)
# print(mean)
# print(variance)
# print(std)