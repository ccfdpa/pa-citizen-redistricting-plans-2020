library(tidyverse)
library(sf)

# setwd("pa-citizen-redistricting-plans-2020/")

baf_to_paf = function(baf, crosswalk, 
                      baf_block_col = "GEOID20", 
                      district_col = "District", 
                      crosswalk_block_col = "GEOID20",
                      precinct_col = "VTD",
                      pop_col = "population"
                      ) {
  baf = baf |>
    inner_join(crosswalk, by = join_by({{ baf_block_col }} == {{ crosswalk_block_col }} ))
  
  paf = baf |>
    summarise(population = sum(!!sym(pop_col)), .by = c({{ precinct_col }}, {{ district_col }})) |>
    slice_max(population, by = {{ precinct_col }}) |>
    select({{ precinct_col}}, {{ district_col}})
  
  return(paf)
}

# Self-contained version
baf_dir_to_paf_dir = function(source_dir, target_dir, crosswalk,
                              crosswalk_block_col = "GEOID20",
                              precinct_col = "VTD",
                              pop_col = "population",
                              output_precinct_col = "GEOID20",
                              output_district_col = "District"
) {
  
  fns = list.files(source_dir, pattern = "*.csv")
  
  i = 0
  for (fn in fns) {
    i = i + 1
    print(i)
    print(fn)
    df = read_csv(paste0(source_dir, fn), col_types = "c")
    
    # Check that df has only two columns
    if (length(colnames(df)) != 2) next
    print(paste(fn, "passed check"))
    
    df_block_col = colnames(df)[1]
    df_district_col = colnames(df)[2]

    baf = df |>
      inner_join(crosswalk, by = join_by({{ df_block_col }} == {{ crosswalk_block_col }} ))
    
    paf = baf |>
      summarise(population = sum(!!sym(pop_col)), .by = c({{ precinct_col }}, {{ df_district_col }})) |>
      slice_max(population, by = {{ precinct_col }}) |>
      select({{ precinct_col}}, {{ df_district_col}})
    
    # Use colnames because can't dplyr rename to work
    colnames(paf) = c(output_precinct_col, output_district_col)
    
    # Write paf to file in target_dir
    write_csv(paf, paste0(target_dir, fn))

  }
}

crosswalk = st_read("~/Documents/Professional/Projects/Redistricting/data/PA 2021 Certified Redistricting Data/Data Set 2 with prisoner reallocation/WP_Blocks.shp")
crosswalk = crosswalk |>
  st_drop_geometry() |>
  as_tibble() |>
  mutate(
    block_id = paste0("42", FIPS, TRACT, BLOCK), 
    precinct_id = paste0("42", FIPS, VTD), 
    population = P0010001, 
    .keep = "none"
  )

# Test
tmp = baf_to_paf(baf, crosswalk, crosswalk_block_col = "block_id", precinct_col = "precinct_id")
rm(tmp)

source_dir = "original/pa-senate-baf/"
target_dir = "pa-senate/"
baf_dir_to_paf_dir(source_dir, target_dir, crosswalk,
                   crosswalk_block_col = "block_id", precinct_col = "precinct_id")

source_dir = "original/pa-house-baf/"
target_dir = "pa-house/"
baf_dir_to_paf_dir(source_dir, target_dir, crosswalk,
                   crosswalk_block_col = "block_id", precinct_col = "precinct_id")
