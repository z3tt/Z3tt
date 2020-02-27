########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################


#### THE STRUCTURE OF GGPLOT2 (continued) ##############################
#-----------------------------------------------------------------------

## Statistical Layers: stat_*() ----------------------------------------

## stat_*() are  handful of layers with attention to the statistical 
## transformation rather than the visual appearance:

## calculate a summary variable
ggplot(chic, aes(year, temp)) +
  geom_boxplot() +
  stat_summary(fun = mean)  ## fun.y in the current CRAN version

## calculate a continuous or discrete function
ggplot(tibble(x = c(-8, 8)), aes(x)) +
  stat_function(fun = dnorm) +
  stat_function(fun = dcauchy,
                color = "red",
                n = 75) 

## draw an empiral cumulative distribution function:
ggplot(chic, aes(temp)) +
  stat_ecdf()

## draw smoothed conditional means:
ggplot(chic, aes(date, temp)) +
  geom_point() +
  stat_smooth()

ggplot(chic, aes(date, temp)) +
  geom_point() +
  stat_smooth(method = "lm",
              formula = y ~ x + I(x^2) + I(x^3) + I(x^4),
              se = F)


## A famous example datat set is `mtcars` which is loaded 
## when you call `library(ggplot2)`.

#!! Have look at the data set.

#!! Create the follwoing thee visualizations:
#!! a) Box plots + raw data of number of cylinders versus miles per gallon
ggplot()

#!! b) A violin plot of number of cylinders versus horsepower
ggplot()

#!! c) A scatter plot with linear fitting of weight versus displacement
#      Bonus task: transparent red dots with black outline or the raw data + 
#                  a red line for the fitting
ggplot()
