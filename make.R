#################################################
#
# Make file for the Antarctica project of the Cesab formation
#
# Based on F. Guilhaumon's research compendium
#
#################################################

##################
# clean workspace
##################
rm(list = ls())

##################
# 00_setup.R
##################

#source("R/00_setup.R")
#à décommenter quand il y aura d'autres scripts d'analyse.

##################
# Knit the README
##################
rmarkdown::render("README.Rmd")

##################
# Knit the PAPER
##################
rmarkdown::render(file.path("manuscript","compte-rendu.Rmd"))
