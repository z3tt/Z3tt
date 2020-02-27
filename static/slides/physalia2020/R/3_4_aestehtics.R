########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################


#### THE STRUCTURE OF GGPLOT2 (continued) ##############################
#-----------------------------------------------------------------------

## Aesthetics: aes() ---------------------------------------------------

## aes() define the appearance of the geometric and statistical objects:
##   * position via `x`, `y`, `xmin`, `xmax`, `ymin`, `ymax`, ...
##   * color via `color` and `fill`
##   * transparency via `alpha`
##   * size via `size` and `width`
##   * shape via `shape` and `linetype`

## In general, everything which maps to the data needs to be wrapped in 
## `aes()` (such as `x` and `y` in our previous examples) while static 
## arguments are placed outside the `aes()` (such as `color` and `alpha` 
## in our previous examples).

## e.g.
## `geom_point(color = "red")`
## -> colors all points in the same color

ggplot(chic, aes(date, temp)) +
  geom_point(size = 4, 
             alpha = 0.2)

## `geom_point(aes(color = season))`
## -> colors points based on the variable `season`

ggplot(chic, aes(date, temp)) +
  geom_point(aes(color = season, 
                 shape = year))

## both together:
ggplot(chic, aes(date, temp)) +
  geom_point(aes(color = season, 
                 shape = year),
             size = 4,
             alpha = .2)

## Alternatively, all aesthetics can be grouped together 
## (and are then applied to all `geom_*()` and `stat_*()`):
ggplot(chic, 
       aes(date, 
           temp,
           color = season,
           shape = year)) +
  geom_line() + 
  geom_point(size = 4,
             alpha = .2) 

ggplot(chic, aes(temp)) +
  stat_ecdf(aes(group = year))
  
#!! Run the same code without the grouping. 
##  Guess first what's going to happen.

#!! Replace the `stat_ecdf(aes(grouop = year))` by 
#   `geom_boxplot(aes(group = year))` and run the code.

#?? How does this plot differ from previous ones?

#!! Replace the `group` argument by `color`, `size`, `shape`,
#   `linetype`, `fill` and `alpha`. What happens?
