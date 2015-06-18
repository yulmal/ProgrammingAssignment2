## Caching the inverse of a Matrix

## This function can cache the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	y<-matrix()
	set <- function(y) {
		x <<- y
		m <<- NULL
		}
		get <- function () x
		setmatrix <- function (matrix) m <<- matrix
		getmatrix <- function() m
		list(set=set, get=get, setmatrix = setmatrix, getmatrix = getmatrix)
		}

## This function that takes the output of the function makeCacheMatrix and computes the inverse matrix or gets from the cache if it has already been calculated (and the matrix has not changed)

cacheSolve <- function(x, ...) {
	m<-x$getmatrix()
	if(!is.null(m)){
		message("getting cashe data")
		return(m)
		}
		data <- x$get()
		m <- solve(data)
		x$setmatrix(m)
		m
		}
