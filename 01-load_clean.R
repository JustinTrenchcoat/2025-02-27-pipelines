# we only need tidyverse and janitor for this portion to work
library(tidyverse)
library(janitor)
library(docopt)

"
This script loads, cleans and saves the titanic data
"

"
Usage: 01-load_clean.R --file_path=<file_path> --output_path=<output_path>
" -> doc

opt <- docopt(doc)

# load data 

data <- read.csv(opt$file_path)

# clean data
data <- janitor::clean_names(data)

write_csv(data, opt$output_path)

print("finished script 1")
