source("cachematrix.R")

m1 <- matrix(c(1,2,3,4),nrow=2)
m2 <- matrix(c(1,2,3,4),nrow=2,byrow=TRUE)

mcm1 <- makeCacheMatrix(m1)
cacheSolve(mcm1)

mcm2 <- makeCacheMatrix(m2)
cacheSolve(mcm2)
