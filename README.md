# Citizen and Amici Redistricting Plans, Pennsylvania 2020

This repository collects all known redistricting plans submitted to official redistricting bodies and courts by citizens, advocacy groups, political actors, and other interested parties during the 2021 redistricting round (using 2020 Census data) in Pennsylvania. It includes plans for Congress (17 districts), the Pennsylvania State Senate (50 districts), and the Pennsylvania House of Representatives (203 districts).

The primary purpose of this repository is to support a [Concerned Citizens for Democracy](https://ccfdpa.org/) whitepaper on citizen paricipation in Pennsylvania redistricting. The secondary purpose is to provide researchers and advocates the benefit of our work in gathering these plans from multiple sources and preparing them for analysis.

## Redistricting in Pennsylvania

Pennsylvania is unusual in using two separate procedures for legislative and Congressional redistricting, and the two halves of the 2021 cycle offered very different opportunities for citizen participation. This section gives only enough background to explain where the plans in this repository come from; see the full [CCFD whitepaper](https://ccfdpa.org/) for the complete account.

**Legislative (PA House and Senate)** districts are drawn by the Legislative Reapportionment Commission (LRC), a bipartisan five-member commission. For the 2021 cycle the LRC held public hearings and operated a public comment website through which citizens could submit proposed plans as file uploads or as DistrictBuilder or Dave's Redistricting App (DRA) links. The LRC adopted the final maps on February 4, 2022, using Census P.L. 94-171 data adjusted for **prisoner reallocation** (counting incarcerated people at their last known address rather than at the prison).

**Congressional** districts are normally drawn through the ordinary legislative process. In 2021 the legislature and Governor Tom Wolf could not agree — the legislature's map was vetoed — and the Pennsylvania Supreme Court ultimately adopted the "Carter Plan" in *Carter v. Chapman* for use in the 2022 election. (Pennsylvania lost one seat after the 2020 Census, dropping from 18 to 17.) The legislature also ran its own public comment portal for Congressional maps, but it was less publicized and technically troubled, yielding only 19 submissions. Congressional redistricting used the **unadjusted** P.L. 94-171 data.

Because of these two processes, the plans here come from three sources (below), and legislative vs. Congressional plans rest on slightly different Census population data.

## Sources of Plan Submissions

The plans collected here come from three sources:

* The Legislative Reapportionment Commission public comment portal. Original source: <https://www.redistricting.state.pa.us/comment/search>
* The House Republican Caucus redistricting public comment portal. The URL for this portal has been allowed to lapse. For the moment, the plans remain available *if* you know the link to an exact plan, but this is not easily discoverable, and will probably not remain available indefinitely. Our repo may be the only record of these plans in their digital form (as opposed to map images which were entered into the public record).
* Filings by plaintiffs and amici in the *Carter v. Chapman* court case, decided by the Pennsylvania Supreme Court. Original source: <https://wwwsecure.pacourts.us/news-and-statistics/cases-of-public-interest/redistricting-cases-464-md-2021-and-465-md-2021>

## Redistricting Data

A redistricting plan is stored here as an **assignment file**: a plain-text (CSV) table listing a geographic identifier and the district each unit is assigned to. A complete plan assigns every unit to exactly one district.

* **Congressional** plans are **block assignment files (BAFs)**, keyed to 2020 Census block GEOIDs (`GEOID20`).
* **Legislative** (PA House and Senate) plans are **precinct assignment files (PAFs)**, keyed to voting-district (precinct) identifiers.

All identifiers use 2020 Census (P.L. 94-171) geography. The LRC's prisoner-adjusted files split some Census blocks along precinct lines; a few Congressional submissions mistakenly used these split blocks and were converted back to standard Census blocks (see [Supporting Scripts](#supporting-scripts) and the per-folder READMEs).

## File Organization

All known plans are collected as CSVs in three folders: pa-congressional, pa-senate, and pa-house. These files are block assignment files (for Congressional redistricting) or precinct assignment files (for Senate and House redistricting). Each folder contains a README which lists the plans in the folder as well as the source of the plan.

Not all plans were submitted as block/precinct assignment files, and some that were had anomalies that needed to be repaired. Any plan that was altered is preserved in its original form in the `original/` folder, grouped by subfolder based on the submission format. Each subfolder under `original/` likewise contains a README documenting the source files and any corrections.

## Supporting Scripts

* **`baf_to_paf.R`** — converts a block assignment file to a precinct (VTD) assignment file, assigning each precinct to the district holding the largest share of its population.
* **`lrc_baf_to_census_baf.R`** — rejoins the split Census blocks in the LRC's prisoner-adjusted block file to their parent standard Census blocks. It uses `lrc_split_blocks.csv`, an extract of the split blocks from the LRC's 339 MB shapefile (the script header explains how to regenerate it from the original LRC data).

## Credits

This repository supports a report initiated by Anya Dougherty as a capstone project in Temple University's Professional Science Master's in Geographic Information Systems, supervised by Temple professor and CCFD member Lee Hachadoorian. Anya gathered the plans from the sources described above and converted them to block/precinct assignment files, with the CCFD Data Science Team — Lee Hachadoorian, Anne Hanna, Bob Hess, Matt Munsey, and John Nagle — advising on technical and methodological issues and deciding collectively how to correct plans with minor errors.

[Concerned Citizens for Democracy (CCFD)](https://ccfdpa.org/) is a 501(c)(3) nonpartisan Pennsylvania nonprofit dedicated to ending partisan gerrymandering. This repository is released under the MIT License (see `LICENSE`).
