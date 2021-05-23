# load libraries
library(tidyverse)

# list contents of folders in our project
# list contents of current (.) directory
list.files(path = ".")

# list contents of raw_data
list.files(path = "raw_data")

# read data in
book_data <- read_csv("raw_data/books.csv",
                      quote = "")

# parse publication date so it's an actual date
book_data <- book_data %>% # pipe, read it as "and then", ctrl/cmd+shift+m
  mutate(publication_date = parse_date(publication_date,
                                         format = "%m/%d/%Y"))


