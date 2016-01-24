## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function reads a matrix and cashes the result. 
## The cashed matrix can be retrieved by other functions. 

makeCacheMatrix <- function(x = matrix()) {
  I <- NULL
  
  set <- function(y) {
    x <<- y
    I <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) I <<- inverse
  getinverse <- function() I
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

## This function reads a cashed matrix. If the inverse is already 
## calculated, the cashed result is returned, else the inverse is
## written to the cashed list variable.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  I <- x$getinverse()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- solve(data, ...)
  x$setinverse(I)
  I

}
