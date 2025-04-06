library(tidyverse)
library(sf)

block_precinct = st_read("~/Documents/Professional/Projects/Redistricting/data/PA 2021 Certified Redistricting Data/Data Set 2 with prisoner reallocation/WP_Blocks.shp")
block_precinct = block_precinct |>
  st_drop_geometry() |>
  mutate(
    block_id = paste0("42", FIPS, TRACT, BLOCK), 
    precinct_id = paste0("42", FIPS, VTD), 
    population = P0010001, 
    .keep = "none"
  )

# Iterate over plans. Turn into function?
baf = read_csv("pa-citizen-redistricting-plans-2020/original/pa-senate-baf/allentown_map_by_as_jan-4-2022.csv")
baf = baf |>
  mutate(GEOID20 = as.character(GEOID20)) |>
  inner_join(block_precinct, by = join_by(GEOID20 == block_id))

paf = baf |>
  summarise(population = sum(population), .by = c(precinct_id, District)) |>
  slice_max(population, by = precinct_id)

# Drop population, write paf to file

