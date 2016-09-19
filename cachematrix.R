## The programming assignment is to cache the invertible matrix for later use without computed repeatedly (if not necessary). 
## This feature is inherited from the 'Scoping rule' of R.
## The first function is to create a 

makeCacheMatrix <- function(x = matrix()) {
  ## This function creates a special "matrix" object that can cache its inverse.
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inv <<- solveMatrix
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


##the cacheSove will retrieve the inverted matrix in the cache and skips
## computation. Otherwise, it solve the inverted matrix of the data and 
## set to the inv in the cache via the setinv function
cacheSolve <- function(x, ...) {
  ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
  inv <- x$getInverse()
  ## Return a matrix that is the inverse of 'x'
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  