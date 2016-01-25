## this function is to create a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverseMatrix <- NULL
  get <- function() {
    x
  }
  set <- function(newMatrix) {
    x <<- newMatrix
    inverseMatrix <<- NULL
  }
  getInverse <- function() {
    inverseMatrix
  }
  setInverse <- function(solvedMatrix) {
    inverseMatrix <<- solvedMatrix
  }
  list(get = get, set = set, getInverse = getInverse, setInverse = setInverse)
}
}


## this function is to compute the inverse of the matrix

cacheSolve <- function(x, ...) {
      inverseMatrix <- x$getInverse()
  data <- x$get()
  inverseMatrix <- solve(data, ...)
  x$setInverse(inverseMatrix)
  return(inverseMatrix)
}
