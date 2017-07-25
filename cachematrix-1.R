

makeCacheMatrix <- function(x = matrix()) {
  
}

## asigning a value to makeCacheMatrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  makeVector <- function(x = numeric()) {
    +     m <- NULL
    +     set <- function(y) {
      +         x <<- y
      +         m <<- NULL
      +     }
    +     get <- function() x
    +     setmean <- function(mean) m <<- mean
    +     getmean <- function() m
    +     list(set = set, get = get,
               +          setmean = setmean,
               +          getmean = getmean)
    + }
  
  cachemean <- function(x, ...) {
    +     m <- x$getmean()
    +     if(!is.null(m)) {
      +         message("getting cached data")
      +         return(m)
      +     }
    +     data <- x$get()
    +     m <- mean(data, ...)
    +     x$setmean(m)
    +     m
    + }

  > A1<-makeCacheMatrix(A)
  > cacheSolve(A1)
  NULL
  > cacheSolve(A1)
  NULL