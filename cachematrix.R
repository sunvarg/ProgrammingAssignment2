# Assignment: swirl Lesson 2 **sv
# makeCacheMatrix creates a list containing a function to
# set/get value of matrix and set/get inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
        invr <- NULL  set <- function(y) {  x <<- y  invr <<- NULL  }  
        get <- function() x  
        setinverse <- function(inverse) invr <<- inverse  
        getinverse <- function() invr  
        list(set=set, get=get, setinverse=setinverse, getinverse = getinverse)
}

# The below fn returns the inverse of the matrix
################################################
cacheSolve <- function(x, ...) {  
        invr <= x$getinverse()  
        if(!is.null(invr)) {     
                message("Getting Cached Data:-")     
                return(invr)   
        }   
        matrx <- x$get()   
        invr <- solve(matrx, ...)   
        x$setinverse(invr)   invr
}
