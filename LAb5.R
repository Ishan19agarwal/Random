#first moment is mean
#is for discrete and continous 
#submission in discrete and integration in continous
#first moment (F)
#second moment(S)
#Variance -S-F^2
#sub(XP) first moment 
#sub(X^2P)second moment
#data compelted only when the sunm of probabilities is 1
#in first question mean is 
#mean=x1p1+x2p2+...xnpn <=>sum(x*p)
#weighted.mean(x,p). p is weight x is random variable
#c(a %*% b) 
#teeno same ke same 
x<-c(0,1,2,3,4)
p<-c(.41,.37,.16,.05,.01)
sum(x*p)
weighted.mean(x,p)
c(x %*% p) 
#in second question what happens is that ki lower limit is given ie 0 that is ki if 
#t<=0 it is 0 and upper limit is not given so we will take it as infinity
F<-function(t){t*.01*exp(-.1*t)}
I<-integrate(F,lower=0,upper=Inf)
I$value
#absolute error aa bhi gaya toh kya??
#what if x ke increment ke saath p(X) decrease ho
x<-c(0,1,2,3)
p<-c(.1,.2,.2,.5)
y<-12*x+2*(3-x)-18
sum(y*p)
F1<-function(t){t*.5*exp(-1*abs(t))}
I1<-integrate(F1,lower=1,upper=10)
mean=I1$value
F2<-function(t){t*t*.5*exp(-1*abs(t))}
I2<-integrate(F2,lower=1,upper=10)
variance=I2$value-mean*mean
print(mean)
print(I2$value)
print(variance)
Func(3)
X<-c(1,2,3,4,5)
y<-x^2
Func<-function(y){3/4*(1/4)^(ysqrt(y)-1)}
sum(y*f(y))
sum(y*y*f(y))
sum(y*y*f(y))-sum(y*f(y))
Func(9)







#ques1
x<-c(0,1,2,3,4);
px<-c(0.41,0.37,0.16,0.05,0.01)
n<-sum(x*px)
print(n)

##ques2
f<-function(t){
  t*0.1*exp(-0.1*t)
}

i=integrate(f,lower=0,upper=Inf)
print(i)

##ques3
x<-c(0,1,2,3)
px<-c(0.1,0.2,0.2,0.5)
y<-(10*x-12)
e<-sum(y*px)
print(e)

##ques4
f<-function(x){
  x*0.5*exp(-abs(x))
}
e1<-integrate(f,lower=1,upper=10)
print(e1)
f2<-function(x){
  x^2*0.5*exp(-abs(x))
}
e2<-integrate(f2,lower=1,upper=10)
print(e2)##
v=(e2$value)-((e1$value)^2)
print(v)
print(paste("Mean is :",e1$value))
print(paste("variance is :",v))
print(paste("Second moment is :",e2$value))

##ques5

f<-function(y){
  (3/4)*(1/4)^(sqrt(y)-1)
}
x<-c(1,2,3,4,5)
y<-x^2
y
print(f(y))
print(py)
ey1<-sum(y*py)
ey2<-sum((y^2)*py)
v<-ey2-(ey1^2)
print(paste("Mean is :",ey1))
print(paste("variance is :",v))



