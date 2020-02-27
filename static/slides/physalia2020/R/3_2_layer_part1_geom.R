########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################


#### THE STRUCTURE OF GGPLOT2 (continued) ##############################
#-----------------------------------------------------------------------

## Geometric Layers: geom_*() ------------------------------------------

## geom_*() are geometrical layers directly applied to the data:

## Our scatter plot as a line plot:
ggplot(chic, aes(date, temp)) +
  geom_line()

## ... or as a bar plot:
ggplot(chic, aes(date, temp)) +
  geom_col()

## ... or a box and whiskers plot:
ggplot(chic, aes(date, temp)) +
  geom_boxplot()

## We need to specify the variable as categorial, not as continuous:
ggplot(chic, aes(as.factor(date), temp))
  geom_boxplot() 

class(chic$year)
class(chic$season)
    
ggplot(chic, aes(year, temp)) +
    geom_boxplot() 

ggplot(chic, aes(season, temp)) +
  geom_boxplot() 

## Other layers can be added to an existing plot
## For example, we add a line and a rug representation:

ggplot(chic, aes(date, temp)) +
  geom_point() +
  geom_line()
  geom_rug(sides = "r")

## Side note: saving ggplot objects
g <- ggplot(chic, aes(date, temp)) +
  geom_point()

g + 
  geom_line() +
  geom_rug(sides = "r")
  
#!! Open Exercise_3_1.R
