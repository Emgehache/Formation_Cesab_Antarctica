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


# by lois
#Download CTD data files from zenodo and place them in the data/ace_data folder
source("R/02_get_ctd_data.R")
url <- "https://zenodo.org/record/3247384/files/"  
filename <- "ace_ctd_CTD20190916CURRSGCMR"
get_ctd_file(url, filename)

# by Cam  
# Download env data (sst) from MODIS website
source("R/04_function_get_url_data_daily.R")
get_url_env_data_day("2017-01-20", "2017-01-31", "SST_sst")

# Load and transform nc file to rasterlayers 
source("R/06_function_transform_sst_nc_to_raster.R")
transform_nc_to_rasterlayer(20,31)





