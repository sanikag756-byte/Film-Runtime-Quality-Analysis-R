# ==========================================================
# MAS8505 Resit
# 01 - Load and Merge Movie Data
# ==========================================================

library(dplyr)

# List all CSV files in the data folder
files <- list.files(
  path = "data",
  pattern = "*.csv",
  full.names = TRUE
)

# Read every CSV file
movie_list <- lapply(files, read.csv)

# Merge into one dataset
movies <- bind_rows(movie_list)

# Display information
head(movies)

dim(movies)

str(movies)

summary(movies)