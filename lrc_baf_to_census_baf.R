library(tidyverse)
library(sf)

LRC_BLOCK_COUNT = 337039

# setwd("pa-citizen-redistricting-plans-2020/")

# The LRC WP_Blocks.shp file is 339 MB. We have extracted a portion necessary
# to identify split blocks and rejoin them based on the largest block with the
# largest population. If you wish to verify our code, download 2021 DATA SET #1 
# (WITHOUT PRISONER REALLOCATION) available from the LRC website at 
# https://www.redistricting.state.pa.us/resources/GISData/Census/2021/2021-DataSet1-WithoutPrisoner/2021%20LRC%20Data%20Release%201b%20-%20Geography.zip
# Then uncomment the code below and change the DSN to point to the folder with 
# the downloaded shapefile. Alternatively, you can use the extract in our repo.

# lrc_split_blocks = st_read(dsn = "/vsizip/../ccfd-citizen-redistricting-plan-analysis/data/LRC_blocks.zip", layer = "WP_Blocks", as_tibble = TRUE) |> 
#   st_drop_geometry() |>
#   select(GEOID20, population = P0010001) |>
#   filter(str_ends(GEOID20, "[ABC]"))
# 
# write_csv(lrc_split_blocks, "lrc_split_blocks.csv")

lrc_split_blocks = read_csv("lrc_split_blocks.csv")

plans_dir = "original/pa-congressional-baf/"
target_dir = "pa-congressional/"
cong_lrc_plans = list.files(plans_dir, ".csv")

# Test plan, temporary
# plan = cong_lrc_plans[5]

for (plan in cong_lrc_plans) {

  fn = paste0(plans_dir, plan)
  df = read_csv(fn, col_types = "cn") |>
    rename(GEOID20 = 1, District = 2)
  
  # Only fix plans that used LRC blocks
  if (nrow(df) != LRC_BLOCK_COUNT) next
  
  print(paste("Will fix", plan))
  
  # Extract split blocks, drop letters at end
  df_split_blocks = df |>
    filter(str_ends(GEOID20, "[ABC]")) |>
    left_join(lrc_split_blocks, by = join_by(GEOID20)) |>
    mutate(GEOID20 = str_remove_all(GEOID20, "[ABC]"))

  # Calculate unique GEOIDs, calculate unique rows combining GEOIDs and
  # District assignment. If lengths are the same, all split blocks are assigned
  # to the same district
  rejoined_block_count = length(unique(df_split_blocks$GEOID20))
  block_district_assignments = df_split_blocks |> 
    select(GEOID20, District) |> 
    unique() |>
    nrow()
  
  if (rejoined_block_count == block_district_assignments) {
    # Split blocks are all assigned to the same district, just group and output
    df_output = df |>
      mutate(GEOID20 = str_remove_all(GEOID20, "[ABC]")) |>
      unique()
    
  } else {
    df_output = df_split_blocks |>
      # Select block with largest population for district assignment
      slice_max(population, by = GEOID20, with_ties = FALSE) |>
      # Drop population field
      select(GEOID20, District) |>
      # Add rejoined blocks to all non-split blocks
      bind_rows(filter(df, !str_ends(GEOID20, "[ABC]")))

  }
  
  # Write corrected file to target directory
  write_csv(df_output, paste0(target_dir, plan))
}

rm(df, df_split_blocks, df_output, rejoined_block_count, block_district_assignments, fn)