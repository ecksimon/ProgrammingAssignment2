## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix creates a matrix and caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
    get <- function() x
    setinv <- function(solve) inv <<- solve
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
  }

## Write a short comment describing this function
## cacheSolve checks first if the inverse of the matrix is cached. 
## If it is not, it computes the inverse.

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)){
          message("getting cached data")
          return(inv)
        }   
        data <- x$get()
        inv <- solve(data,...)
        x$setinv(inv)
        inv
}










