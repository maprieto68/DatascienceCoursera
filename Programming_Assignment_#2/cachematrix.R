## These functions are aplications of how to save computational power
#in cases where it is required to execute the same process more than once in a loop. 
# Both of the functions look to cache the inverse of a matrix and can be introduced
#in any other processes. 

## Assignment 1: This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  #set a value for the matrix, initially null
    inv <- NULL
    set <- function(y) {
      x <<- y
      inv <<- NULL
    }
  #get the matrix
    get <- function() x
  #calculta the inverse
    setInverse <- function() inv <<- solve(x) 
  #get the inverse 
    getInverse <- function() inv
  #Have all the set and get elements in a single list 
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
  }



## Assignment 2: This function computes the inverse of the special "matrix" returned
#by makeCacheMatrix above. If the inverse has already been calculated 
#(and the matrix has not changed), then the cachesolve should retrieve the 
#inverse from the cache.

cacheSolve <- function(x, ...) {
  #Check if the marix has been already calculated
  inv <- x$getinverse()
  #if it is the case, return the cached matrix
  if(!is.null(inv)) {
    message("Returning already cached matrix")
    return(inv)
  }
  #if not calculated before, calculate it and set an object
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  #return the final result
  inv    
}

