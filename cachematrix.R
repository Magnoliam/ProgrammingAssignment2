
R version 3.3.1 (2016-06-21) -- "Bug in Your Hair"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: i386-w64-mingw32/i386 (32-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> getwd
function () 
.Internal(getwd())
<bytecode: 0x09406560>
<environment: namespace:base>
> getwd()
[1] "C:/Users/Rudolph/Documents"
> setwd("ProgrammingAssignment2")
> getwd
function () 
.Internal(getwd())
<bytecode: 0x09406560>
<environment: namespace:base>
> getwd()
[1] "C:/Users/Rudolph/Documents/ProgrammingAssignment2"
> source("cachematrix.R")
> getwd()
[1] "C:/Users/Rudolph/Documents/ProgrammingAssignment2"
> cachematrix.R
Error: object 'cachematrix.R' not found
> read.csv("cachematrix.R)

+ > read.R("cachematrix.R")
Error: could not find function "read.R"
> read.csv("cachematrix.R")
  X...Put.comments.here.that.give.an.overall.description.of.what.your
1                                                     ## functions do
2                   ## Write a short comment describing this function
3                         makeCacheMatrix <- function(x = matrix()) {
4                                                                   }
5                   ## Write a short comment describing this function
6                                            cacheSolve <- function(x
7                                                              ...) {
8                       ## Return a matrix that is the inverse of 'x'
9                                                                   }
> makeCacheMatrix <- function(x = matrix()) {
+     inv <- NULL
+     set <- function(y) {
+         x <<- y
+         inv <<- NULL
+     }
+     get <- function() x
+     setinverse <- function(inverse) inv <<- inverse
+     getinverse <- function() inv
+     list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
+ }
> cacheSolve <- function(x, ...) {
+     inv <- x$getinverse()
+     if(!is.null(inv)) {
+         message("getting cached data.")
+         return(inv)
+     }
+     data <- x$get()
+     inv <- solve(data)
+     x$setinverse(inv)
+     inv
+ }
> 
