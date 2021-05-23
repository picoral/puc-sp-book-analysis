# load library
library(tidyverse)

# read data in
book_data <- read_csv("raw_data/books.csv",
                      quote = "")

# Question: which books have the highest rating?
book_data %>%
  arrange(-average_rating) %>%
  select(title, authors, average_rating, ratings_count)

# summary
summary(book_data)

# Question: which books have the highest rating for the most reviewed books (75th percentile)?
book_data %>%
  filter(ratings_count >= 5000) %>%
  arrange(-average_rating) %>%
  select(title, authors, average_rating, ratings_count)
