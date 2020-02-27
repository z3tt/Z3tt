########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################

#### YOUR FIRST GGPLOT #################################################
#-----------------------------------------------------------------------

  
## The package ---------------------------------------------------------

## ggplot2` is a data visualization package for the 
## programming language R created by Hadley Wickham in 2005
  
## ggplot2` is part of the tidyverse, a set of packages
## that work in harmony to manipulate and explore data.
## (https://blog.rstudio.org/2016/09/15/tidyverse-1-0-0/)
  
install.packages("tidyverse")

## We are going to use the development versin of `ggplot2`.
## You can install the most recent version on GitHub using the 
## package `devtools`:

install.packages("devtool")
devtools::install_github("tidyverse/ggplot2")


## The data ------------------------------------------------------------

## We use data from the National Morbidity and Mortality Air Pollution 
## Study (NMMAPS), filtered for the city of Chicago and the timespan from 
## January 1997 to December 2000.

chic <- 
  readr::read_csv(
    "https://raw.githubusercontent.com/Z3tt/ggplot-courses/master/data/chicago-nmmaps.csv",
    col_types = cols(season = col_factor(), year = col_factor())
  )

## Inspect data
tibble::glimpse(chic)


## The Structure of ggplot2 --------------------------------------------

## 1. Data: `ggplot(data)`
## The raw data that you want to visualise.

## 2. Aesthetics: `aes()``
## Aesthetic mappings of the geometric and statistical objects.

## 3. Layers: `geom_*()` and `stat_*()`
##The geometric shapes and statistical summaries representing the data.

## 4. Scales: `scale_*()`
## Maps between the data and the aesthetic dimensions.

## 5. Coordinate System: `coord_*()`
## Maps data into the plane of the data rectangle.

## 6. Facets: `facet_*()`
## The arrangement of the data into a grid of plots.

## 7. Visual Themes: `theme()` and `theme_*()`
## The overall visual defaults of a plot.

## 8. Annotations: `annotate()`
## Add additional labels, geometries or images to a plot.


## Data ----------------------------------------------------------------

## Load the tidyverse packages
library(tidyverse)

## `ggplot()` function
ggplot

## add data
ggplot(data = chic)

## add x and y
ggplot(data = chic,
       mapping = 
         aes(
           x = date,
           y = temp
         )
) 

## or: 
ggplot(data = chic,
       mapping = aes(x = date,
                     y = temp)) 

## or via implicit matching:
ggplot(chic, aes(date, temp))

## or aestehtics as own layer:
ggplot(chic) +
  aes(date, temp)

## Layers --------------------------------------------------------------

## By adding one or multiple layers we can tell ggplot2 how to 
## represent the data.

## There are lots of build-in geometric elements (`geom_*()`) and 
## statistical transformations (`stat_*()`).

## We can represent the data for example as a scatter plot:
ggplot(chic, aes(date, temp)) +
  geom_point()

## ... or turn it for example into an area plot:
ggplot(chic, aes(date, temp)) +
  geom_area()

#!! Turn our scatter plot/area chart into a line chart and 
#!! into a bar chart!
  
#!! Create a boxplot of temperature per date.

#??  What is the problem? How could you find out why this is happening?
  
#!! Try to create box plots as you would expect them.
