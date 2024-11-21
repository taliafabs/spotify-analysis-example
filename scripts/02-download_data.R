#### Preamble ####
# Purpose: Downloads and saves the data from spotify
# Author: Talia, Lexi, Fatimah, Aliza
# Date: 10 Oct 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: NA
# Any other information needed? NA


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(spotifyr)


#### Download data ####
nationals <- get_artist_audio_features("the nationals")
coldplay <- get_artist_audio_features("coldplay")



#### Save data ####
saveRDS(nationals, "data/01-raw_data/nationals_raw.rds")
saveRDS(coldplay, "data/01-raw_data/coldplay_raw.rds")


         
