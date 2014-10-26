# create a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    myinverse <- NULL
    set <- function(m) {
        x <<- m
        myinverse <<- NULL
    }
    get <- function() x
    setinverse <- function(i) myinverse <<- i
    getinverse <- function() myinverse
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


# computes the inverse of the special "matrix" returned by makeCacheMatrix
# If the inverse has already been calculated then the inverse is retrieved
# from the cache.

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached inverse")
        return(i)
    }
    m <- x$get()
    i <- solve(m)
    x$setinverse(i)
    i
}
