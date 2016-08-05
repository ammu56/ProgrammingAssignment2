## The functions below cache the inverse of a matrix and also compute the same if required


## The first function below can cache the inverse of a matrix. 
##The output is a list of four functions that can
##assign/return a matrix and assign/return an inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
    set <- function(y) {
      X <<- y
        inv <<- NULL
  }
  get <- function() X
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The second function calls on the first function above to check if 
##the inverse of a matrix is available.  If so, it returns
##the same, else, it computes the inverse, makes a call on the first function
##again to assign the inverse and then prints the same.

cacheSolve <- function(x, ...) {
  inv<- X$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- X$get()
  inv <- solve(mat,...)
  X$setinverse(inv)
  inv          ## Return a matrix that is the inverse of 'x
        
}
