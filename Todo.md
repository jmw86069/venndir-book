
# Venndir Book

## To Consider

* Add "How to Cite This Book"

```
@book{wardvenndir2025,
  title={Venndir},
  author={Ward, James M},
  year={2025},
  publisher={Ward},
  url={https://jmw86069.github.com/venndir-book}
}
```

* Clean up the cover image presentation in each format.
* Short biorxiv paper to cite for Venndir.
* How to install Venndir.


## Debug Rendering Crash

Section [advanced-signs-1c] rendering custom Unicode symbols by marquee.

* Restart RStudio before rendering (Ctrl-Shift-F10).
* Use "Arial" or "Times"
* Try rendering in R console, not within RStudio.
* Try previewing the chapter:
`bookdown::preview_chapter("04-customizations.Rmd", output_format="epub_book")`

## Todo from C's Edits

* Intro - be bold, describe the value. Add more
* Chapter 1
   * Expand the description of the Venn diagram.
   E.g. set A has (5 + 2) = 7 items total.
   Set B has (3 + 2) = 5 items total.
   * Add description of directional Venn.
   * Consider expanding to include a description of the Venndir legend.

## Short list

* Add "When and How to Use a Venn Diagram"

## Add Definitions / Conventions

* Describe how to use `expand_fraction`
* R code examples are shown in mono-spaced text, with light gray background
* Output from an R command is shown as mono-spaced text with a prefix `'#'`.

* set
* vector
* signed data
* incidence matrix
* signed incidence matrix
* concordance, discordance
* agreement, disagreement

* R
* R package / library (review R discussions about this terminology)
* data visualization
* intersection, union, subtraction, buffer region

## Citations to add

* MeElectron.png
https://www.reddit.com/r/physicsmemes/comments/v5adqq/you_and_i_arent_so_different/
r/physicsmemes 2022
u/Giotto_diBondone

* eulerGlyphs. "Please cite eulerGlyphs as follows:"

Luana Micallef, Pierre Dragicevic and Jean-Daniel Fekete (2012):
Assessing the Effect of Visualizations on Bayesian Reasoning through Crowdsourcing.
IEEE Transactions on Visualization and Computer Graphics, 18(12): 2536-2545.
http://www.eulerdiagrams.org/eulerGlyphs, http://www.aviz.fr/bayes

* eulerGlyphs - reference the original mammography study reference dataset.

* Standard two-Venn publication approach

https://pmc.ncbi.nlm.nih.gov/articles/PMC12063414/
Figure 6C. Two Venn diagrams:
"CMV-induced CRE target genes"
"CMV-repressed CRE target genes"
DEGs are not easily downloaded, they're in DOCX format tables. Skip.

* PRDM16
https://www.sciencedirect.com/science/article/pii/S0896627318303684#fig4
Figure 4, two Venn approach again.
"~/Down1.s2"

```
prdf <- jamba::readOpenxlsx("~/Downloads/1-s2.0-S0896627318303684-mmc2.xlsx", sheet=1:6, startRow=3)
jamba::sdim(prdf)
lapply(prdf[1:6], head, 4)
prl <- lapply(jamba::nameVectorN(prdf), function(iname){
   idf <- prdf[[iname]];
   igenes <- unique(idf[[2]])
   jamba::nameVector(rep(1, length(igenes)), igenes)
})
prsetlist <- list("PAX6+"=c(prl[[1]], prl[[2]]),
"TBR2+"=c(prl[[3]], prl[[4]])
)
```

```
heatdfs <- jamba::readOpenxlsx("~/Downloads/13059_2025_3595_MOESM4_ESM.xlsx", startRow=2)
lapply(heatdfs, jamba::middle, 5)

cmvdfs <- jamba::readOpenxlsx("~/Downloads/13059_2025_3595_MOESM5_ESM.xlsx", startRow=2)
lapply(cmvdfs, jamba::middle, 5)
```

## Todo 18jun2025

* Add section "How to re-center the Venndir".
* PARTIAL. Add `favicon.ico`. Confirm it works?
* Describe Markdown formatting, link to CommonMark.
* Add section describing `overlap_type`.
* Show how to use patchwork to assemble panels.
* Show how to add Google fonts to use in Venndir.

* Consider example adding new JamPolygon to `v@jps`, to highlight
one multi-overlap region with an outer border for example.

* DONE. Define custom global figure size
* DONE. Add R package citations


* DONE. Add section for advanced grid manipulations
* Show how to edit a `grid` attribute and plot the output.
* Consider editing item label positions using `grid` object editing?


