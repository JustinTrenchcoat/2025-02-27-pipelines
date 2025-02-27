# we only need tidyverse and janitor for this portion to work
library(tidyverse)
library(janitor)

# load data 

data <- read.csv("data/titanic.csv")

data

# clean data
data <- janitor::clean_names(data)

data

write_csv(data, "data/titanic_clean.csv")
