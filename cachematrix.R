## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #initialize the inverse 
  invert <- NULL
  #function to set the matrix
  set <- function(y) {
    x <<- y
    invert <<- NULL
  }
  #function to get the matrix
  get <- function() {
    x
  }
  #function to set the inverse matrix
  setInverse <- function(inverse) {
    invert <<- inverse
  }
  #method to get the inverse matrix
  getInverse <- function() invert
  list(set = set,get = get,setInverse=setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

#comments in all the code dstribuited

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invert <- x$getInverse()
  if (!is.null(invert)) {
    message("getting cached data")
    return(invert)
  }
  mat <- x$get()
  invert <- solve(mat, ...)
  x$setInverse(invert)
  invert
}
