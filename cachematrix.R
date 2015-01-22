## The logic of these functions is similar to the one of the examples:
## makeCachMatrix makes a matrix to cache its inverse, and
## cacheSolve checks if the inverse is already cached, and if not,
## it computes the inverse and caches it.

## makeCacheMatrix creates a special matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    iM <- NULL
    set <- function(y){
      x <<- y
      iM <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) iM <<- inverse
    getinverse <- function() iM
    list(set = set, get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)
}

## cacheSolve first checks to see if the inverse has already been calculated. If so, 
##it gets the inverse matrix from the cache and skips the computation. Otherwise, 
##it calculates the inverse of the data and sets the value of the inverse matrix in the cache.

cacheSolve <- function(x, ...) {
  iM <- x$getinverse()
  if(!is.null(iM)){
    message("getting cached data")
    return(iM)
  }
  data <- x$get()
  iM <- solve(data, ...)
  x$setinverse(iM)
  iM
}


