
#vectors in R

#integer
x<-1:4
y<-c(1:4)

#number
x<-c(1,2,3,4)
typeof(x)
print(x)

#character

x<-c("a","b","c")
print(x)

#bool
x<-y>=2
print(x)

#vectors of zeros
x<-vector("integer",2)
x

as.logical(x)
x

#Matrices

x<-matrix(1:4,nrow = 2,ncol = 2)
print(x)


#list in R
x<-list(c(1:3),2:4)
x

#factors
x<-factor(c(1:4))
x

#DataFrame

x<-data.frame(x=c(1,2,3,4),y=1:4)
x

#dput and dget
y<-data.frame(a=1,b="a")
dput(y)

dput(y,file = "y.R")

new.y<-dget("y.R")
new.y

#subsetting
x<-matrix(1:6,2,3)
x
x[1,]
x[,1]
x[1,3,drop=FALSE]

x <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
x
x[[1]][[3]]
x[[2]][[1]]
x[[c(2,1)]]
