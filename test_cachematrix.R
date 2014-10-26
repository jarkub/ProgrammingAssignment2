source("cachematrix.R")

m1 <- matrix(c(1,2,3,4),nrow=2)
m2 <- matrix(c(123,789,456,321),nrow=2,byrow=TRUE)

mcm1 <- makeCacheMatrix(m1)
mcm1$get()
cacheSolve(mcm1)
cacheSolve(mcm1)
mcm1$get()
mcm1$set(m2)
mcm1$get()
cacheSolve(mcm1)
cacheSolve(mcm1)

# time to make sure cache is working
m3 <- matrix(rnorm(1000000,123456,9999),nrow=1000,byrow=TRUE)
mcm2 <- makeCacheMatrix(m3)
system.time(cacheSolve(mcm2))
system.time(cacheSolve(mcm2))
