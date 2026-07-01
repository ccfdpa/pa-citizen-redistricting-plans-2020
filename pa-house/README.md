# Legislative House Plans

* Total Plans: 33
    * Plans originally submitted as precinct assignment files: 3
    * Plans submitted as block assignment files or DRA links: 22
    * Plans submitted as shapefiles or DistrictBuilder links: 8

All of the plans were sourced from the LRC website at <https://www.redistricting.state.pa.us/comment/search>. Precinct assignment files are stored here. Block assignment files are stored in the </original/pa-house-baf> folder, and have been converted to precinct assignment files using [baf_to_paf.R](/baf_to_paf.R).

Best estimate precinct assignment files have been made for shapefiles, utilizing the a file that created a point on each precinct. The assignment file was created by assigning those points to districts based on which district they intersected with on the shapefile.

## Original Precinct Assignment File Submissions to LRC

| Plan | LRC submission | Source map | Notes |
| --- | --- | --- | --- |
| `a_fair_pa_house_map_that_is_judicially_enforceable_by_rh_dec-1-2021` | [#628](https://www.redistricting.state.pa.us/comment/submission/628) | [DRA](https://davesredistricting.org/maps#viewmap::0e3bed34-e415-472c-87c9-41bf3080c76c) | Unassigned Lake Erie precinct → District 1 |
| `pa_house_by_srf_by_sf_jan-4-2022` | [#1657](https://www.redistricting.state.pa.us/comment/submission/1657) | [DRA](https://davesredistricting.org/maps#viewmap::7e1d45ab-da95-4762-8a28-8fd0136254c8) | — |
| `revision_to_lrc-house-preliminary_map_by_js_jan-12-2022` | [#3334](https://www.redistricting.state.pa.us/comment/submission/3334) | [DRA](https://davesredistricting.org/maps#viewmap::c11bbab8-8606-4860-a394-494316387c1e) | — |


## Block Assignment File Submissions to LRC

The LRC redistricts using whole precincts. However many citizen plans were only available as block assignment files. Some commenters uploaded BAFs directly to the LRC public comment portal. Some created plans in Dave's Redistricting App. Although DRA offers the option to download plans as PAFs, if the mapper split any precincts, the plan had a combination of GEOIDs for whole precincts, and GEOIDs for blocks in split precincts. This mixed geography file was unusable in our analysis software. We downladed BAFs and converted them to PAFs for our analysis.

| Plan | LRC submission | Source map | Notes |
| --- | --- | --- | --- |
| `concise_westmoreland_by_mb_jan-7-2022` | [#2220](https://www.redistricting.state.pa.us/comment/submission/2220) | [DRA](https://davesredistricting.org/maps#viewmap::73edef3f-f979-45a5-badf-5a044d3a3cdf) | — |
| `consolidated_lrc_testimony_solutions(all)_by_pr_jan-15-2022` | [#4288](https://www.redistricting.state.pa.us/comment/submission/4288) | [DRA](https://davesredistricting.org/maps#viewmap::1fe3194a-1068-4c59-ac51-2bfa735fa26b) | Unassigned Lake Erie precinct → District 1 |
| `do_not_split_mechanicsburg_borough_by_km_jan-18-2022` | [#5108](https://www.redistricting.state.pa.us/comment/submission/5108) | [DRA](https://davesredistricting.org/maps#viewmap::f95d5c12-3651-4f85-99a5-90de67f6debb) | — |
| `lancaster_county_metro_area_by_ed_dec-21-2021` | [#973](https://www.redistricting.state.pa.us/comment/submission/973) | — | — |
| `least_splitting_and_most_competitive_map_by_jm_dec-9-2021` | [#742](https://www.redistricting.state.pa.us/comment/submission/742) | [DRA](https://davesredistricting.org/maps#viewmap::dfbe7abc-8f4e-48a2-9cdb-86e7ebb2bacc) | — |
| `lrc_testimony_solutions_consolidated(all)_by_mw_jan-14-2022` | [#4121](https://www.redistricting.state.pa.us/comment/submission/4121) | [DRA](https://davesredistricting.org/maps#viewmap::1fe3194a-1068-4c59-ac51-2bfa735fa26b) | Unassigned Lake Erie precinct → District 1 |
| `lrc_testimony_solutions_submission_578_588_et.al_by_mw_jan-10-2022` | [#2766](https://www.redistricting.state.pa.us/comment/submission/2766) | [DRA](https://davesredistricting.org/maps#viewmap::18ced2df-957e-4d12-b611-de1dd5be0f8d) | — |
| `lrc_testimony_solutions_submission_670_675_et.al_by_mw_jan-9-2022` | [#2657](https://www.redistricting.state.pa.us/comment/submission/2657) | [DRA](https://davesredistricting.org/maps#viewmap::4694f0a9-2146-43a7-992e-b10634dd533e) | — |
| `lrc_testimony_solutions_submission_775_et.al._by_mw_jan-9-2022` | [#2623](https://www.redistricting.state.pa.us/comment/submission/2623) | [DRA](https://davesredistricting.org/maps#viewmap::f96358e0-c4a7-4578-b290-38488df73708) | — |
| `lrc_testimony_solutions_submission_777_by_mw_jan-8-2022` | [#2587](https://www.redistricting.state.pa.us/comment/submission/2587) | [DRA](https://davesredistricting.org/maps#viewmap::3b38487b-6039-4362-bdb3-9b7162690f1d) | — |
| `lrc_testimony_solutions_submission_807_by_mw_jan-9-2022` | [#2595](https://www.redistricting.state.pa.us/comment/submission/2595) | [DRA](https://davesredistricting.org/maps#viewmap::14774a30-67dd-4713-af4f-582bd6d7397c) | — |
| `lrc_testimony_solutions_submission_823_1047_et.al_by_mw_jan-11-2022` | [#3017](https://www.redistricting.state.pa.us/comment/submission/3017) | [DRA](https://davesredistricting.org/maps#viewmap::fd35d759-165a-4c2b-9619-4eb354fe06cc) | — |
| `lrc_testimony_solutions_submission_977_et.al._by_mw_jan-8-2022` | [#2546](https://www.redistricting.state.pa.us/comment/submission/2546) | [DRA](https://davesredistricting.org/maps#viewmap::670aff31-d208-4cb8-af89-02aad3232f50) | — |
| `lrc_testimony_solutions_submission_1175_by_mw_jan-8-2022` | [#2517](https://www.redistricting.state.pa.us/comment/submission/2517) | [DRA](https://davesredistricting.org/maps#viewmap::5e2992a0-6fab-4f16-b29c-5adf9347cab0) | — |
| `lrc_testimony_solutions_submissions_2766_3017by_mw_jan-11-2022` | [#3212](https://www.redistricting.state.pa.us/comment/submission/3212) | [DRA](https://davesredistricting.org/maps#viewmap::bf1eb831-5e12-4e31-a703-c5cbde67aea1) | — |
| `math-science_professors_exception_to_house_plan_by_sm_jan-18-2022` | [#5506](https://www.redistricting.state.pa.us/comment/submission/5506) | — | — |
| `pa_house_dist_77_82_171_proposed_map_by_bk_jan-16-2022` | [#4571](https://www.redistricting.state.pa.us/comment/submission/4571) | [DRA](https://davesredistricting.org/maps#viewmap::80b92ea7-0c05-4c6f-8489-01b874e3c016) | — |
| `preliminary_lrc_map-lancaster_50-96-41_edit_by_ar_dec-20-2021` | [#934](https://www.redistricting.state.pa.us/comment/submission/934) | [DRA](https://davesredistricting.org/maps#viewmap::17353986-529d-47f2-ace4-e512537f1dd7) | — |
| `proposed_revisions_for_the_lrc_house_map_by_ck_jan-6-2022` | [#1993](https://www.redistricting.state.pa.us/comment/submission/1993) | [DRA](https://davesredistricting.org/maps#viewmap::155bb35d-3ccc-45fb-85a7-92db68b9d211) | Unassigned Lake Erie precinct → District 1 |
| `revisions_to_proposed_state_house_districts_by_ay_jan-18-2022` | [#5412](https://www.redistricting.state.pa.us/comment/submission/5412) | [DRA](https://davesredistricting.org/maps#viewmap::8f9a0b20-1b90-4d99-a10d-721ab4ad8285) | — |
| `state_house_prioritizing_splitting_compactness_by_rc_aug-2-2021` | [#15](https://www.redistricting.state.pa.us/comment/submission/15) | — | — |
| `westmoreland_united_by_mk_jan-17-2022` | [#5081](https://www.redistricting.state.pa.us/comment/submission/5081) | — | — |


### Invalid Plans

One invalid BAF was submitted. It is retained in the folder [/original/pa-house-baf](/original/pa-house-baf), and is omitted in counts above.

| Plan | LRC submission | Source map | Notes |
| --- | --- | --- | --- |
| `kieran_francke_by_kf_nov-16-2021` | [#504](https://www.redistricting.state.pa.us/comment/submission/504) | [DRA](https://davesredistricting.org/maps#viewmap::5f6aaa70-7421-4d4c-8860-63ded8a8b003) | — |


## Shapefile Submissions to LRC

| Plan | LRC submission | Source map | Notes |
| --- | --- | --- | --- |
| `adjustments_to_preliminary_map_by_nr_dec-22-2021` | [#1003](https://www.redistricting.state.pa.us/comment/submission/1003) | [DistrictBuilder](https://app.districtbuilder.org/projects/fedef0c7-92d2-4d5f-ae99-72eba6524565) | — |
| `plan_b_modification_for_lancaster_county_by_nr_dec-31-2021` | [#1430](https://www.redistricting.state.pa.us/comment/submission/1430) | [DistrictBuilder](https://app.districtbuilder.org/projects/0765f9e7-22c7-4a50-a268-7e99481e67de) | — |
| `plan_c_modification_for_lancaster_county` | [#1434](https://www.redistricting.state.pa.us/comment/submission/1434) | [DistrictBuilder](https://app.districtbuilder.org/projects/6ebee32b-d60b-4758-bcc4-c081ec68ab0d) | — |
| `plan_d_lancaster_county_state_house_by_nr_jan-4-2022` | [#1582](https://www.redistricting.state.pa.us/comment/submission/1582) | [DistrictBuilder](https://app.districtbuilder.org/projects/eccec064-080d-4352-ae5b-20b9ffd99e17) | — |
| `plan_e_variation_for_lancaster_county_by_nathan_rybner` | [#5836](https://www.redistricting.state.pa.us/comment/submission/5836) | [DistrictBuilder](https://app.districtbuilder.org/projects/9d3fece6-1a29-481a-bae6-14115ec1f721) | — |
| `remedy_to_increase_compactness_in_luzerne_county_by_jn_jan-2-2022` | [#1491](https://www.redistricting.state.pa.us/comment/submission/1491) | — | — |
| `serious_map_by_n_dec-1-2021` | [#632](https://www.redistricting.state.pa.us/comment/submission/632) | [DistrictBuilder](https://app.districtbuilder.org/projects/ca09a417-33d2-4bbe-a34a-824f2ba04a3e) | — |
| `state_college_adjustmust_1_by_aw_jan-4-2022` | [#1667](https://www.redistricting.state.pa.us/comment/submission/1667) | — | — |


