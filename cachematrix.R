## makeCacheMatrix will cache the inverse of the input matrix

## It can set the matrix
## get the matrix
## set the inverse of the matrix
## get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
  }
  get <- function()x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function()m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## calculate the inverse if not available, recall the inverse if has been calculated

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
        data <-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
}
