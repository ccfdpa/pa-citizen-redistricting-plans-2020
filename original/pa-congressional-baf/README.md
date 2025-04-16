# Congressional Plans

This folder contains 6 block assignment files.

## Submissions to Court Case 464 MD 465 MD

1. 464_MD_465_MD_voters_of_pa was superseded by a corrected submission, which appears in the pa-congressional folder as 464_MD_465_MD_voters_of_pa(corrected).csv. The first submission is stored here for completeness.

Five of the 464 MD 465 MD submissions incorrectly used the LRC block file, which split some Census blocks. The LRC assignments were converted to Census block assignments using [lrc_baf_to_census_baf.R](/lrc_baf_to_census_baf.R). The original submissions are here, and the converted files are in the pa-congressional folder.

The files are:

1. 464_MD_465_MD_gressman.csv (a)
1. 464_MD_465_MD_house_democratic_caucus.csv (a)
1. 464_MD_465_MD_republican_legislator.csv (a)
1. 464_MD_465_MD_senate_democratic_caucus_map_1.csv (b)
1. 464_MD_465_MD_senate_democratic_caucus_map_2.csv (b)

Of these:

* Plans marked (a) assigned the split blocks to the same Congressional district, and the split blocks were rejoined to the parent Census block.
* Plans marked (b) divided a single split block among neighboring Congressional districts. The parts were rejoined by assigned all split blocks to the Congressional district that the largest part was assigned to.

Additionally, 464_MD_465_MD_house_democratic_caucus.csv was submitted without a header row. A header row (`GEOID20`, `District`) was added, so the file in this folder is technically not the original court submission.

## Citizen Submissions to LRC

Incorrectly submitted to LRC, downloaded from <https://www.redistricting.state.pa.us/comment/search>.

1. us_house_map_by_jc_dec-15-2021 - downloaded as a block assignment file at <https://www.redistricting.state.pa.us/comment/submission/765> (<https://app.districtbuilder.org/projects/bacb724e-66dd-4980-a43a-edfcd91a6636>). This map has one block (420430248022055) with zero population assigned to no district. It is surrounded by blocks assigned to district 11. The original file is preserved in this folder, and a corrected file is in the pa-congressional folder.

