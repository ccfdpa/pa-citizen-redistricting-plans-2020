library(tidyverse)
library(sf)

# setwd("pa-citizen-redistricting-plans-2020/")

# Convert single BAF to PAF
baf_to_paf = function(baf, crosswalk, 
                      baf_block_col = "GEOID20", 
                      district_col = "District", 
                      crosswalk_block_col = "GEOID20",
                      precinct_col = "VTD",
                      pop_col = "population"
                      ) {
  baf = baf |>
    inner_join(crosswalk, by = join_by(!!baf_block_col == !!crosswalk_block_col))
  
  paf = baf |>
    summarise(population = sum(!!sym(pop_col)), .by = c(!!precinct_col, !!district_col)) |>
    slice_max(population, by = !!precinct_col) |>
    select(!!precinct_col, !!district_col)
  
  # paf = baf |>
  #   summarise(population = sum(!!sym(pop_col)), .by = c({{ precinct_col }}, {{ district_col }})) |>
  #   slice_max(population, by = {{ precinct_col }}) |>
  #   select({{ precinct_col}}, {{ district_col}})
  
  return(paf)
}

# Convert entire directory of BAFs (all CSVs) to PAFs.
# Will only process CSVs with two columns, but does not
# expect specifc column names. If you have CSVs with two
# columns that are *not* BAFs, they should be removed.
baf_dir_to_paf_dir = function(source_dir, target_dir, crosswalk,
                    # baf_block_col = "GEOID20", 
                    # district_col = "District", 
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
    print(df_block_col)
    df_district_col = colnames(df)[2]
    print(df_district_col)
    
    paf = baf_to_paf(
      df, crosswalk,
      baf_block_col = colnames(df)[1],
      district_col = colnames(df)[2],
      crosswalk_block_col = crosswalk_block_col,
      precinct_col = precinct_col,
      pop_col = pop_col
    )

    colnames(paf) = c(output_precinct_col, output_district_col)
    
    # Write paf to file in target_dir
    write_csv(paf, paste0(target_dir, fn))

  }
}

# Download 2021 Certified Redistricting Data zip file from
# https://www.redistricting.state.pa.us/resources/GISData/Census/2021/2021-DataSet2-WithPrisoner/LRC%20Data%20Release%202%20-%20Geography.zip
# Unzip
# Load WP_Blocks.shp
fn = "path/to/your/data/WP_Blocks.shp"
crosswalk = st_read(fn)
crosswalk = crosswalk |>
  st_drop_geometry() |>
  as_tibble() |>
  mutate(
    block_id = paste0("42", FIPS, TRACT, BLOCK), 
    precinct_id = paste0("42", FIPS, VTD), 
    population = P0010001, 
    .keep = "none"
  )

source_dir = "original/pa-senate-baf/"
target_dir = "pa-senate/"
baf_dir_to_paf_dir(source_dir, target_dir, crosswalk,
                   crosswalk_block_col = "block_id", precinct_col = "precinct_id")

source_dir = "original/pa-house-baf/"
target_dir = "pa-house/"
baf_dir_to_paf_dir(source_dir, target_dir, crosswalk,
                   crosswalk_block_col = "block_id", precinct_col = "precinct_id")
