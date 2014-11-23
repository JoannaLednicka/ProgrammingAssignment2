## Function makeCacheMatrix and cacheSolve are designed to generate inversed matrix for a given one, create an object to store this inversed matrix and apply the stored inversed matrix if it was calculated before.

## The following function creates an object to store the inverse of the given matrix and stores it when generated for the first time.

makeCacheMatrix <- function(x = matrix()) {
inverse<-NULL
get<-function(){
			x
		   }
setInverse<-function(solve) {
			inverse<<-solve
				    }
getInverse<-function(){
				inverse
			    }
list(get=get, setInverse=setInverse, getInverse=getInverse)
}


## The following function returns an inverse matrix (stored) in cache or, if a matrix was not inversed before, it generates inverse matrix.

cacheSolve <- function(x, ...) {
inverse<-x$getInverse()
if(!is.null(inverse)){
	message("getting cached data")
	return(inverse)
		  }
data<-x$get()
inverse<-solve(data,...)
x$setInverse(inverse)
inverse
}

## 


  
