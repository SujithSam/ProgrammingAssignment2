## Put comments here that give an overall description of what your
## functions do

## Week 3 Assignment
## makeCacheMatrix:This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	
    inv <- NULL                             
    set <- function(y) {                   
        x <<- y                             
        inv <<- NULL                       
    }
    get <- function() x              ## define the get fucntion - returns value of the matrix argument       

    setinverse <- function(inverse) inv <<- inverse  
    getinverse <- function() inv                     
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)   ## you need this in order to refer to the functions with the $ operator
                                                                                  
                                                                                  
}

}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
	inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
}
