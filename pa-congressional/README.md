# Congressional Plans

* Total Plans: 36
    * Citizen Submissions to House Republican Caucus Public Comment Portal: 19
    * Citizen Submissions to LRC: 3
    * Submissions to Court Case 464 MD 465 MD: 14 (1 file omitted due to corrections)

All of the plans submitted to the LRC and the House Republican Caucus public comment portal were in shapefile form. A best estimate block assignment file was created using a point-in-polygon operation.

All of the plans submitted to the 464 MD 465 MD court case were downloaded as block assignment files, either in a CSV or Excel spreadsheet. Files submitted as an Excel spreadsheet were saved as a CSV.

## Citizen Submissions to House Republican Caucus Public Comment Portal:

| Plan |
| --- |
| `bipartisan_minimal_variance_plan_by_brandon_bechtel_2021-11-22` |
| `ccfd_ruleset-equal_population_by_anne_hanna_2021-12-06` |
| `competitive_districts_mp_by_matthew_price_2021-12-03` |
| `congressional_no_muni_split_.02_pop_dev_by_ruth_yeiser_2021-11-30` |
| `democrats_favored_by_ej_reihl_2021-11-30` |
| `district_map_v.1_by_amanda_fogarty_2021-11-19` |
| `district_plan_2_by_zeb_harshbarger_2021-11-22` |
| `fair_compact_balanced_districts_plan_by_colin_pietropaolo_2021-11-18` |
| `holt_congressional_plan_version_0--0_person_deviation_by_amanda_holt_2021-11-19` |
| `holt_congressional_plan_version_1--13_person_deviation_by_amanda_holt_2021-11-16` |
| `map5_by_thomas_kutz_2021-11-23` |
| `mattpriceredistictplana_by_matthew_price_2021-12-03` |
| `pa_citizens_map_from_draw_the_lines_by_justin_villere_2021-11-24` |
| `pa_congressional_map_using_lacra_provisons_by_carol_kuniholm_2021-11-30` |
| `pa_us_house_redistrict_by_griffin_tripp_2021-11-22` |
| `pa1_by_kenneth_shirk_2021-11-13` |
| `plan_1-bipartisan_plan_by_nathan_rybner_2021-11-11` |
| `reduced_bias_variant_2_based_on_A.Holt_map_0_by_michael_waxenberg_2021-12-05` |
| `reduced_bias_variant_based_on_dtl_citizens_map_by_michael_waxenberg_2021-12-06` |


## Citizen Submissions to LRC

Incorrectly submitted to LRC, downloaded from <https://www.redistricting.state.pa.us/comment/search>.

| Plan | Submission |
| --- | --- |
| `pa_congressional_by_rn_sep-15-2021` | [#177](https://www.redistricting.state.pa.us/comment/submission/177) |
| `pa_congressional_map-community_representative_by_js_nov-20-2021` | [#548](https://www.redistricting.state.pa.us/comment/submission/548) |
| `us_house_map_by_jc_dec-15-2021` | [#765](https://www.redistricting.state.pa.us/comment/submission/765) |


## Submissions to Court Case 464 MD 465 MD

Downloaded from <https://www.pacourts.us/news-and-statistics/cases-of-public-interest/redistricting-cases-464-md-2021-and-465-md-2021>.

Five of the 464 MD 465 MD submissions incorrectly used the LRC block file, which split some Census blocks. See the [README in the original/pa-congressional-baf folder](../original/pa-congressional-baf/README.md) for information on how these files were processed, as well as the original files.

| Plan | Notes |
| --- | --- |
| `464_MD_465_MD_carter_plan` | Excel submission |
| `464_MD_465_MD_reschenthaler2` | — |
| `464_MD_465_MD_reschenthaler1` | — |
| `464_MD_465_MD_draw_the_lines` | — |
| `464_MD_465_MD_gov_wolf` | — |
| `464_MD_465_MD_gressman` | Used LRC split blocks; rejoined to parent Census block |
| `464_MD_465_MD_house_democratic_caucus` | Used LRC split blocks; header row added |
| `464_MD_465_MD_khalif_ali` | — |
| `464_MD_465_MD_republican_legislator` | Used LRC split blocks; rejoined to parent Census block |
| `464_MD_465_MD_senate_democratic_caucus_map_2` | Used LRC split blocks; Excel submission |
| `464_MD_465_MD_senate_democratic_caucus_map_1` | Used LRC split blocks; Excel submission |
| `464_MD_465_MD_voters_of_pa(corrected)` | Corrected resubmission; original in `original/pa-congressional-baf` |
| `464_MD_465_MD_ccfd` | — |
| `464_MD_465_MD_citizen_voters` | — |

