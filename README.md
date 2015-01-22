### Assignment: Caching the Inverse of a Matrix

The structure and logis of submitted functions are based on the provide examples: I changed the examples to make functions for caching the inverse of a matrix.

1.  `makeCacheMatrix`: This function creates a special "matrix" object that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

The result of testing fucntions here:

#### > testM = matrix(1:4, 2, 2)
# > mcM = makeCacheMatrix(testM)
# > mcM$get()
#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4
# > cacheSolve(mcM)
#     [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5
# > cacheSolve(mcM)
# getting cached data
#     [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5
