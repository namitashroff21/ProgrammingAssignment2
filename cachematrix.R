## Caching the Inverse of a Matrix
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## This function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv = NULL
set = function(y){
x <<- y
inv <<- NULL
}
get = function () x
setinv = function(inverse) inv <<- inverse
getinv = function()inv
list(set=set, get=get, setinv=setinv, getinv=getinv)
}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above
cacheSolve <- function(x, ...) {
 inv = x$getinv()
 if(!is.null(inv)){
 message ("getting cached data")
 return(inv)
}
mat.data = x$get()
inv = solve(mat.data, ...)
x$setinv(inv)
return(inv)
}
