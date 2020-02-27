########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################

#### USEFUL THINGS #####################################################
#-----------------------------------------------------------------------

## Example Data
tbl_flights <- nycflights13::flights[1:100,]

#### Useful Functions ################################################
#---------------------------------------------------------------------

## Data Summaries
#### Complete data frame
class(tbl_flights)
names(tbl_flights)
dim(tbl_flights)
length(tbl_flights)
summary(tbl_flights)
str(tbl_flights)
#### Single variables
length(tbl_flights$origin)
unique(tbl_flights$origin)
is.na(tbl_flights$dep_time)
is.nan(tbl_flights$dep_time)

## Calculations
mean(tbl_flights$dep_time, na.rm = TRUE)
min(tbl_flights$dep_time, na.rm = TRUE)
max(tbl_flights$dep_time, na.rm = TRUE)
median(tbl_flights$dep_time, na.rm = TRUE)
range(tbl_flights$dep_delay, na.rm = T)
quantile(tbl_flights$dep_delay, na.rm = T)
var(tbl_flights$dep_delay, na.rm = T)
sd(tbl_flights$dep_delay, na.rm = T)

## R Related
sessionInfo()
version()
citation()
options()


#### Getting Help & Communities ######################################
#---------------------------------------------------------------------

# Homepages:
#     R Foundation Help Page: www.r-project.org/help.html
#     RStudio Community: www.community.rstudio.com
#     R For Data Science Online Learning Community: www.rfordatasci.com
#     Stack Overflow: www.stackoverflow.com
#     R User Groups (local): www.jumpingrivers.github.io/meetingsR/r-user-groups.html
#     R Ladies (global & local): www.rladies.org
# Twitter Hashtags: 
#     #rstats (https://twitter.com/hashtag/rstats?lang=en)
#     #tidyverse (https://twitter.com/hashtag/tidyverse?lang=en)
#     #ggplot2 (https://twitter.com/hashtag/ggplot2?lang=en)
# Twitter Profiles
#     @R4DScommunity (https://twitter.com/R4DScommunity)
#     @rweekly_org (https://twitter.com/rweekly_org)
#     @rOpenSci (https://twitter.com/rOpenSci)
#     @rfortherest (https://twitter.com/rfortherest)
#     @Rfunction_a_day (https://twitter.com/Rfunction_a_day)
#     @hadleywickham (https://twitter.com/hadleywickham)
#     @dataandme (https://twitter.com/dataandme)
#     @thomas_mock(https://twitter.com/thomas_mock) 
#     @tidypod (https://twitter.com/tidypod)
#     @thomasp85 (https://twitter.com/thomasp85)
