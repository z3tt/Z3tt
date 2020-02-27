########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################


#### FUNCTIONS & DATA TYPES ############################################
#-----------------------------------------------------------------------

## Examples of built-in operators & functions
`+`
`-`
sqrt
mean

## To look how the function looks like, run just the function
citation

## To return its value, run it with brackets:
citation()

## Sometimes an imput is neeeded:
sqrt()
sqrt(9)

mean(5, 1, 3)

#?? Why is the results incorrect?
#!! Use the help to find out by running `?mean()`

## Examples of classes
class(1)
class("a")
class(TRUE) ## T is short for 'TRUE', F is short for 'FALSE'
class(1L)
class(1 + 0i)

## Examples of vectors
v <- c(5, 1)
v
class(v)

v2 <- c(TRUE, FALSE)
v2
class(v2)

v3 <- c(1L, 2L)
v3
class(v3)

v4 <- c("Physalia", "DataViz")
v4
class(v4)

v5 <- c("ggplot", 2020, TRUE)
v5
class(v5)

v6 <- c(1L, 0.2, 3 + 0i)
v6
class(v6)

as.numeric(v5)
as.character(v6)
as.logical(v6)

#!! Fix our calculation of the mean of 5, 1, and 3.
mean(5, 1, 3)

#!! Guess what the following vectors look like without running them first:
#!!   `a <- c(1.7, "Physalia")`
#!!   `b <- c(TRUE, 2020, 1 + 0i)`
#!!   `c <- c(TRUE, "TRUE", "T", FALSE, "False", "f")`
#!!   `as.numeric(a)`
#!!   `as.complex(b)`
#!!   `as.logical(c)`
#!!   `as.integer(c(45L, 0.237, 4.9))`

#?? What does `as.factor()` do?




