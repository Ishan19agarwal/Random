2+3
X=2+3
X
X<-2+3
X=5->X
X
X=c(1,2,3,4,5)
X=2
1:12
seq(from=12,to=2,by=-0.5)
seq(12,1,-0.5)
rep(10,5)
rep(1:3,length.out=10)

X=c(1,3,5,7,9,11,13,15,17,19,21)
X[5:7]

X=c("Jan","Feb","Mar","Apr")
X[3]
matrix(c(1,3,5,7),nrow=2,ncol=2)
matrix(c(1,3,5,7),nrow=2,ncol=2,byrow=T)

diag(3)
diag(1:3)

outer(1:6,1:6,"+")

1:6%o%1:6

A<-matrix(c(1,4,5,7),nrow=2,ncol=2)
X<-c(3,4)
A%*%X
A*X
t(A)
det(A)
solve(A)
A[2,1]
A[,1]

variable<-function(x) {x^3+x^2+5*x}
variable(3)

