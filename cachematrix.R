## Put comments here that give an overall description of what your
## functions do

## This will store a function in the variable and initialize the matrix

makeCacheMatrix <- function(x = matrix()) {
# Initialize 
  init<-NULL
  set<-function(y){
  x<<-y
  init<<-NULL
}
get<-function() x
#used generic function solve to return inverse
setmatrix<-function(solve) init<<- solve
getmatrix<-function() init
# Provide values
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}


## This will inverse the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   
    init<-x$getmatrix()
    if(!is.null(init)){
      message("getting cached data")
      return(init)
    }
    matrix<-x$get()
# used solve to get the inverse of cached matrix
    init<-solve(matrix, ...)
    x$setmatrix(init)
    init
}
