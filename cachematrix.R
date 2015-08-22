## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  # The object holds the initial matrix.
  # It also contains the methods (functions) for storing and 
  # retrieving the initial matrix.
  
makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
   
   get <- function() x
   setInv <-function(inv) m <<- inv
   getInv <- function() m
   list(set = set, get=get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function
   # The inverted matrix info is retrieved.
    # If it is not already stored.  The initial matrix is retrieved
    # from the incoming parameter and the inverted matrix is calculated.
    # The calculated matrix is then cached.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          m <- x$getInv()
     if(!is.null(m)) {
       message("getting cached data")
       return(m)
     }
    data <- x$get()
    m <- solve(data,...)
    x$setInv(m)
    m
}
