makeCacheMatrix <- function(x = matrix()){
  i <<- NULL
  set <- function(y) {
    x <<- y  
    i <<- NULL
  }
  
  get <- function () x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}

cacheSolve <- function(m,...){
  i <- m$getinverse()
  if(!is.null(i)){
    message("geeting from cache")
    return (i)
  }
  
  data <- m$get()
  i <- solve(data)
  m$setinverse(i)
  i
}