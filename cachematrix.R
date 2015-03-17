## Put comments here that give an overall description of what your
## functions do

## This function can set and save the inverse matrix of x,
## also can get the x matrix.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<-NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
        
}


## If the inverse matix of x already exists,
## this function will get the cathed inverse matrix and return it.
## Otherwise, this funcion will calculate the inverse matrix and return the answer.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached inverse matrix")
                return(i)
        }
        matrix_i <- x$get
        i <- solve(matrix_i,...)
        x$setinverse(i)
        i
}
