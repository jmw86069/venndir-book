# Citation work
#
# The steps required to generate proper bibtex entries for citations.
#
# assume this script is run from the base directory,
# where 'citations/' is a subdirectory

pak::pkg_install("rcrossref")

## Reddit Me-Electron post
# u/Giotto_diBondone. (2022, June 5). You and I aren't so different [Online forum post]. Reddit. https://www.reddit.com/r/physicsmemes/comments/v5adqq/you_and_i_arent_so_different/
electron_bibtex <- list(
reddit2022electron="@online{reddit2022electron,
  author    = {u/ScienceNerd42},
  title     = {You and I aren't so different},
  year      = {2022},
  month     = {June},
  day       = {5},
  url       = {https://www.reddit.com/r/physicsmemes/comments/v5adqq/you_and_i_arent_so_different/},
  note      = {Reddit post},
  urldate   = {2022-06-05}
}")

# update using DOIs
dois <- c(
   Salybekov_2021="10.3390/cells10123266",
   Seehawer_2024="10.1038/s41556-024-01446-3",
   Bisogno_2020="10.1126/sciadv.abc3851",
   Micallef_2012="10.1109/TVCG.2012.199",
   Baizabal_2018="10.1016/j.neuron.2018.04.033"
)
dois_tex <- rcrossref::cr_cn(dois, "bibtex")

all_bibtex <- c(dois_tex,
   electron_bibtex)

## Review to confirm, as needed
# all_bibtex

writeLines(unlist(all_bibtex), con="citations/papers.bib")

## Read to confirm, as needed
# readLines("citations/papers.bib")
