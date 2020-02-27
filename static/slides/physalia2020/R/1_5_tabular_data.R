########################################################################
# Physalia Course "Introduction to DataVisualization in R with ggplot2 #
#   Cédric Scherer (cedricphilippscherer@gmail.com) | March 2-6 2020   #
########################################################################

#### TABULAR DATA ######################################################
#-----------------------------------------------------------------------

my_df <- data.frame(v, v2, v3, v4)
my_df
my_df <- data.frame(
  numeric = v, 
  logical = v2, 
  integer = v3, 
  character = v4
)
my_df

install.packages("tibble")
my_tbl <- tibble::tibble(
  numeric = v, 
  logical = v2, 
  integer = v3, 
  character = v4
)

library(tibble)
my_tbl <- tibble(
  numeric = v, 
  logical = v2, 
  integer = v3, 
  character = v4
)

install.packages("nycflights13")
tbl_flights <- nycflights13::flights[1:100,]

tbl_flights
as.data.frame(tbl_flights)
View(tbl_flights)

my_df$integer
my_tbl$integer

my_df$int
my_tbl$int

## Data Import
# my_data <- read.delim("./data/cool_data.txt", sep = "\t")
# my_data <- read.csv("./data/cool_data.csv")
# my_data <- readr::read_delim("./data/cool_data.txt", quote = "\t")
# my_data <- readr::read_csv("./data/cool_data.csv")
# my_data <- readr::read_csv("https://some_webpage.com/online_data.csv")
# my_data <- readr::read_csv2("./data/actually_not_a_csv_but_okay.csv") ## ';' as sep
# my_data <- readxl::read_xls("./data/oh_no_excel_data.xls", sheet = 1)
# my_data <- readxl::read_xlsx("./data/oh_no_excel_data.xlsx", sheet = 1)
# my_data <- readRDS("./data/one_of_Rs_data_formats.Rds")

#!! Download or create a data set with the software of your choice and import it into R
#!! Inspect the imported data using `summary()`, `str()`, `tibble::glimpse()`, and `View()`
#!! Also explore other functions such as `dim()`, `length()`, `unique`, and `range()`
#!! Save your data set as .Rds (use `saveRDS()` and `?saveRDS()` to get help)

## Data summaries:
dim(tbl_flights)
length(tbl_flights)

length(tbl_flights$origin)
unique(tbl_flights$origin)

range(tbl_flights$dep_delay, na.rm = T)
quantile(tbl_flights$dep_delay, na.rm = T)
var(tbl_flights$dep_delay, na.rm = T)
sd(tbl_flights$dep_delay, na.rm = T)

## Generate data in R:
name <- c("Brian", "Jason", "Tyler", "Sam")
age <- seq(23, 26, by = 1)  ## or: 23:26 or c(23, 24, 25, 26)
sex <- rep("male", length(name))

my_tbl <- tibble(name, age, sex)

my_tbl <- tibble(
  name = c("Brian", "Jason", "Tyler", "Sam"),
  age = seq(23, 26, by = 1),  ## or: 23:26 or c(23, 24, 25, 26)
  sex = rep("male", length(name))
)

my_tbl <- tribble(
  ~name,    ~age,  ~sex,
  "Brian",  23,    "male", 
  "Jason",  24,    "male", 
  "Tyler",  25,    "male", 
  "Sam",    26,    "male"
)