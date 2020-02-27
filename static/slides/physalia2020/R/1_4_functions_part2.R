########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################

#### FUNCTIONS & DATA TYPES (continued) ################################
#-----------------------------------------------------------------------

## Function Arguments
mean(x = c(5, 1, 3))
max(x = 5)
max(x = c(5, 1, 3))
quantile(x = c(5, 1, 3), probs = 0.25)

mean(c(5, 1, 3))
max(5)
max(c(5, 1, 3))
quantile(c(5, 1, 3), 0.25)
quantile(0.25, c(5, 1, 3))
quantile(0.25, c(1, 0.345))

## Coercion
(a <- c(1.7, "Physalia"))
(b <- c(TRUE, 2020, 1.375))
(c <- c(TRUE, "TRUE", "T", FALSE, "False", "f"))

as.numeric(a)
as.complex(b)
as.logical(c)
as.integer(c(45L, 0.237, 4.9))

class(c(TRUE))
class(c(TRUE, 1L))
class(c(TRUE, 1L, 1.2))
class(c(TRUE, 1L, 1.2, 1 + 0i))
class(c(TRUE, 1L, 1.2, 1 + 0i, "a"))

## Factors
v4
as.factor(v4)
factor(v4, levels = c("Physalia", "DataViz"))

f <- factor(v4, levels = c("Physalia", "DataViz"),
            labels = c("Physalia Courses Berlin", "Data Visualization"))
class(f)
levels(f)

as.character(f)
as.numeric(f)

factor(c(0, 0, 1, 0, 1), levels = c("1", "0"), labels = c("no", "yes"))
factor(c(0, 0, 1, 0, 1, 2), levels = c("1", "0"), labels = c("no", "yes"))

## Missing Data
(my_experiment <- c(0.61, 0.43, NA, 0.96))
is.na(my_experiment)

0 / 0
is.nan(0 / 0)
is.na(0 / 0)

is.nan(my_experiment)

c(1L, 2L, NA_integer_)
c(1L, 2L, NA_real_)
c(1L, 2L, NA_character_)
c(0.2, 0.4, NA_real_)
c(0.2, 0.4, NA_integer_)

max(my_experiment)
mean(my_experiment)

max(my_experiment, na.rm = TRUE)
mean(my_experiment, na.rm = TRUE)

NA == 1
NA == NA
NA == NaN
