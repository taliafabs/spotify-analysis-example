#### Preamble ####
# Purpose: Simulates coldplay song and danceability data since 2004
# Author: Talia Fabregas, Lexi Knight, Fatimah Yunusa, Aliza Mithwani
# Date: 21 November 2024
# Contact: lexi.knight@mail.utoronto.ca
# License: MIT
# Pre-requisites: The `tidyverse` package must be installed
# Any other information needed? Make sure you are in the `spotify-analysis-example` rproj


#### Workspace setup ####
library(tidyverse)
set.seed(853)


#### Simulate data ####
set.seed(304) # For reproducibility

coldplay_songs <- c(
  "Yellow", "Fix You", "The Scientist", "Clocks", "Viva La Vida", 
  "Paradise", "A Sky Full of Stars", "Something Just Like This", 
  "Hymn for the Weekend", "Adventure of a Lifetime", "Shiver", 
  "Every Teardrop Is a Waterfall", "Speed of Sound", "Magic", 
  "Higher Power"
)

songs_national <- c(
  "Bloodbuzz Ohio", "Fake Empire", "I Need My Girl", "Sea of Love", 
  "Terrible Love", "Mr. November", "About Today", "Light Years", 
  "Mistaken for Strangers", "Conversation 16", "Pink Rabbits", 
  "England", "Slow Show", "Don't Swallow the Cap", "Graceless"
)

simulated_coldplay <- tibble(
  song = coldplay_songs,
  duration = round(runif(length(coldplay_songs), min = 180, max = 300)), # Random durations between 3 and 5 minutes
  danceability = round(runif(length(coldplay_songs), min = 1, max = 10), 1), # Danceability scores (1 to 10)
  year = sample(2000:2024, size = length(coldplay_songs), replace = TRUE) # Random release year between 2000 and 2024
)

simulated_national <- tibble(
  song = songs_national,
  duration = round(runif(length(songs_national), min = 180, max = 360)), # Random durations between 3 and 6 minutes
  danceability = round(runif(length(songs_national), min = 1, max = 10), 1), # Danceability scores (1 to 10)
  year = sample(2000:2024, size = length(songs_national), replace = TRUE) # Random release year between 2000 and 2024
)


#### Save data ####
write_csv(simulated_coldplay, "data/00-simulated_data/simulated_coldplay.csv")
write_csv(simulated_national, "data/00-simulated_data/simulated_national.csv")
