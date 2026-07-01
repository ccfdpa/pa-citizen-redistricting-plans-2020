# Congressional Plans

This folder contains 7 block assignment files.

Five of the 464 MD 465 MD submissions incorrectly used the LRC block file, which split some Census blocks. The LRC assignments were converted to Census block assignments using [lrc_baf_to_census_baf.R](/lrc_baf_to_census_baf.R). The original submissions are here, and the converted files are in the pa-congressional folder. Split-block handling is noted below:

* **(a)** the plan assigned the split blocks to the same Congressional district, and the split blocks were rejoined to the parent Census block.
* **(b)** the plan divided a single split block among neighboring Congressional districts; the parts were rejoined by assigning all split blocks to the Congressional district that the largest part was assigned to.

| Plan | Source | Notes |
| --- | --- | --- |
| `464_MD_465_MD_voters_of_pa` | Court 464 MD / 465 MD | Superseded by `464_MD_465_MD_voters_of_pa(corrected).csv` in the pa-congressional folder; original kept here for completeness |
| `464_MD_465_MD_gressman` | Court 464 MD / 465 MD | Used LRC split blocks (a) |
| `464_MD_465_MD_house_democratic_caucus` | Court 464 MD / 465 MD | Used LRC split blocks (a); submitted without a header row, so a header (`GEOID20`, `District`) was added — this file is technically not the original court submission |
| `464_MD_465_MD_republican_legislator` | Court 464 MD / 465 MD | Used LRC split blocks (a) |
| `464_MD_465_MD_senate_democratic_caucus_map_1` | Court 464 MD / 465 MD | Used LRC split blocks (b) |
| `464_MD_465_MD_senate_democratic_caucus_map_2` | Court 464 MD / 465 MD | Used LRC split blocks (b) |
| `us_house_map_by_jc_dec-15-2021` | [LRC portal #765](https://www.redistricting.state.pa.us/comment/submission/765) | Incorrectly submitted to LRC. One block (420430248022055) with zero population was assigned to no district; it is surrounded by blocks assigned to District 11. Original preserved here; corrected file is in the pa-congressional folder |
