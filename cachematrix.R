## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  Inverse <- NULL
  set <- function(y) {
    x <<- y
    Inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) Inverse <<- solve
  getInverse <- function() Inverse
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  Inverse_Matrix <- x$getInverse()
  if(!is.null(Inverse_Matrix)) {
    message("
            getting cached inverse matrix...
            ")
    return(Inverse_Matrix)
  }else{
    get_data <- x$get()
    Inverse_Matrix <- solve(get_data)
    x$setInverse(Inverse_Matrix)
    Inverse_Matrix
  }
}
        ## Return a matrix that is the inverse of 'x'

