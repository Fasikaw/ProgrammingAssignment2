## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL   #set the value of m to NULL
 set <- function(y) { #set the value of the matrix
    x <<- y    #cache the input matrix 
    m <<- NULL #set the value of m to NULL
  }
  get<-function() x #get the value of the matrix
  setmatrix<-function(solve) m<<- solve #set the value of matrix
  getmatrix<-function() m  #get the value of the inversematrix
  list(set=set, get=get,  # create a list to put the functions
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Write a short comment describing this function

cacheSolve <- function(x=matrix(),...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()
  if(!is.null(m)){ #check that m is not empty
    message("Getting cached matrix") #Show  a message of caching the matrix
    return(m) # Get the output of the cached matrix
  }
  matrix<-x$getmatrix() # Get the value of the input matrix
  m<-solve(matrix) # Solve the inverse of the matrix
  x$setinverse(m) # run the setinverse and cache the inverse
  m # return the inverse matrix
}
