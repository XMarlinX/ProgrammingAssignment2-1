## MakeCacheMatrix() and CacheMean() work together to initialize a vector, store it in a cache, and determine the inverse of a vector if it has not already been determined. 
## 

## makeVector instantiates a vector that stores two assessor functions and two mutator functions.

makeCacheMatrix <- function(x = matrix())
{
                {mean <- NULL
                set <- function(y)
                   {x<<y}
                x <<- y
                m <<- NULL
                }
                get <- function () x
                setmean <- function(mean) m <<- mean
                getmean <- function () m
                return (function_list <- c( set = set(),
                        get = get,
                        setmean = setmean,
                        getmean = getmean
                        )  )
}


## cacheMean determines the inverse of a matrix

cacheMean <- function(x)
{   m <<- x$getmean()
    if (!is.null(m))
         {
         print("getting cached data")
         return m
         }
         data <- x$get()
         m <- mean(data)
         x$setmean(m)
         inverse_x <- solve(x)
         print (inverse_x)
        
}
