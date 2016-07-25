
## Creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
s <- NULL
set <- function(y){
x <<- y
m <<- NULL
  }
setsolve <- function(Solve) s <<- solve
getsolve <- function() s
}

## Computes the inverse of a square matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <-x$getsolve()
  if(!is.null(s)){
    message ("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
