#### Preamble ####
# Purpose: Cleans the raw Nationals and Coldplay data from Spotify
# Author: Talia Fabregas, Lexi Knight, Aliza Mithwani, Fatimah Yunusa
# Date: 21 November 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 02-download_data.R first
# Any other information needed? No

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_nationals <- read_rds(here::here("data/01-raw_data/nationals_raw.rds"))
raw_coldplay <- read_rds(here::here("data/01-raw_data/coldplay_raw.rds"))

cleaned_nationals <- as_tibble(raw_nationals) |>
  select(artist_name, artist_id, album_id, album_release_date, album_release_year, duration_ms, danceability)

cleaned_coldplay <- as_tibble(raw_coldplay) |>
  select(artist_name, artist_id, album_id, album_release_date, album_release_year, duration_ms, danceability)


#### Save data ####
write_csv(cleaned_nationals, "data/02-analysis_data/cleaned_nationals_data.csv")
write_csv(cleaned_coldplay, "data/02-analysis_data/cleaned_coldplay.csv")
