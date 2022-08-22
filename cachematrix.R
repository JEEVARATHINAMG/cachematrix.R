#This is week3 assignment
makeCacheMatrix<-function(x=matrix()){

makCacheMatrix<-function (x=matrix()){
inv<=null

set <-function(y)
{
      x<<-y
      inv <<- NULL
}
    get <-function() x
    setinverse<-function(inverse) inv <<-inverse
    getinver<-sefunction() inv
    list(set = set,get = get,setinverse=setinverse,getinverse=getinverse)
}

# cacheSolve will retrieve the inversefrom the cache
cacheSolve <-function(x,...)
 {
    # return the inverse of 'x'
    inv<-x$getinverse()
   if (!is.null(inv))
   {
       message("getting cached data")
       return(inv)
   }
       data<-x$get() 
       inv<-solve(data,...)
       x$setinverse(inv)
       inv
 }
       
