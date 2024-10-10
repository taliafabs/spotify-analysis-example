#### Preamble ####
# Purpose: Downloads and saves the data from spotify
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)
library(usethis)
library(spotifyr)


#### Download data ####
radiohead <- get_artist_audio_features("radiohead")



#### Save data ####
saveRDS(radiohead, "radiohead.rds")

         
