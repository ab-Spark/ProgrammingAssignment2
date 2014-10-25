## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix function takes a matrix as an input and outputs the list of functions to set & get the input matrix and to set and get the inverse of
## the input matrix

makeCacheMatrix <- function(x = matrix()) {

	i <- matrix()

	setmatrix <- function(y) {
		x <<- y
		inverse <<- matrix()
	}

	getmatrix <- function() x

	setinverse <- function(inverse) i <<- inverse

	getinverse <- function() i	

	list(setmatrix = setmatrix,getmatrix = getmatrix,setinverse = setinverse,getinverse = getinverse)
}


## Write a short comment describing this function
## cacheSolve function checks if the inverse of the matrix exists in the cache. If yes then it returns the cached value else it computes the inverse and 
## returns that value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	inverse <- x$getinverse()
	if(!is.na(inverse)) {
		message("getting cached data")
		return(inverse)
	}
	
	data <- x$getmatrix()
	inverse <- solve(data)
	x$setinverse(inverse)
	inverse
}
