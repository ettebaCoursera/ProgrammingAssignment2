## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function describes the creation of a special cache Matrix which is used to set the functions matrix, get the matrix , set the inverse of the matrix and get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {

m<-NULL
set<-function(y){
    x<<-y
    m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
setmatrix=setmatrix,
getmatrix=getmatrix)
}


## Write a short comment describing this function
## This function is used to calculate the inverse of a Matrix from the special matrix created above. The function first checks to see if the Inverse of the matrix has been calculated. If it has been calculated it skips the computation else it calculates the inverse of the matrix in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getmatrix()
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m

}
