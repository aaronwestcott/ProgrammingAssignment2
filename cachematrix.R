## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function


makeCacheMatrix <- function(rawdata = matrix()) 
{
##creates a caching object for a matrix and its inverse with get and set functions.
        I<-NULL
        
        setrawdata function(y)
        {
                rawdata<<-y
                I<<-NULL
                
        }

        getrawdata<-function(){rawdata}

        setinverse<-function(inverse)
        {
                I<<-inverse
        }
        getinverse<-function()
        {
                I
        }

        list(set=setrawdata,get=getrawdata,setinverse=setinverse, getinverse=getinverse)

}


cacheSolve <- function(x, ...) {        
## Return a matrix that is the inverse of 'x'
        
        
        
        
        I<-x$getinverse()               #try to pull the inverse
        if(!is.null(I))                 #Check to see if the inverse exists already
        {
                message("getting cached matrix")
                return(I)
        
        }
        else                            #getting to this point indicates that there is no inverse to cached to retrieve
        {
                data<-x$getrawdata()    #get the raw data
                I<-solve(data,...)      #calculate the inverse
                x$setinverse(I)         #set the inverse
                I                       #return the inverse
        }
}        
