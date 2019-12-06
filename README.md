
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 🐠 🐟 Crossing the Southern Polar Front 🐟 🐠

Projet sur la campagne antarctique durant la formation “bonnes pratiques
pour une recherche reproductible en écologie numérique” organisée par le
Cesab 🌍 🌏 🐠.

## Authors

  - Camille Deslias
  - Mathieu de Goër de Herve
  - Ilan Perez
  - Loïs Maignien

## Script list

``` r
list.files(file.path("R"))
#>  [1] "00_setup.R"                              
#>  [2] "01_function_getacetrack.R"               
#>  [3] "02_get_ctd_data.R"                       
#>  [4] "03_function_get_url_data_weekly.R"       
#>  [5] "03_function_get_url_data.R"              
#>  [6] "04_function_get_url_data_daily.R"        
#>  [7] "05_extract_ctd_headers.R"                
#>  [8] "06_function_transform_sst_nc_to_raster.R"
#>  [9] "07_global map.R"                         
#> [10] "08_animation_map.R"                      
#> [11] "make_download.R"                         
#> [12] "plot_ctd_locations_temp.R"               
#> [13] "test_perso.R"                            
#> [14] "utils.R"
```

## Session info

``` r
sessionInfo()
#> R version 3.4.4 (2018-03-15)
#> Platform: x86_64-pc-linux-gnu (64-bit)
#> Running under: Ubuntu 18.04.3 LTS
#> 
#> Matrix products: default
#> BLAS: /usr/lib/x86_64-linux-gnu/atlas/libblas.so.3.10.3
#> LAPACK: /usr/lib/x86_64-linux-gnu/atlas/liblapack.so.3.10.3
#> 
#> locale:
#>  [1] LC_CTYPE=fr_FR.UTF-8       LC_NUMERIC=C              
#>  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=fr_FR.UTF-8    
#>  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=fr_FR.UTF-8   
#>  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
#>  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
#> [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] Rcpp_1.0.2       lubridate_1.7.4  emo_0.0.0.9000   digest_0.6.21   
#>  [5] crayon_1.3.4     assertthat_0.2.1 magrittr_1.5     evaluate_0.14   
#>  [9] rlang_0.4.2      stringi_1.4.3    rstudioapi_0.10  rmarkdown_1.18  
#> [13] tools_3.4.4      stringr_1.4.0    glue_1.3.1       purrr_0.3.3     
#> [17] xfun_0.9         yaml_2.2.0       compiler_3.4.4   htmltools_0.3.6 
#> [21] knitr_1.25
```

## Sources url

Cruise track:

    1-second resolution: https://doi.org/10.5281/zenodo.3260616
    1-minute resolution: https://doi.org/10.5281/zenodo.3483166
    1-hour resolution: https://doi.org/10.5281/zenodo.3483164

Meteorology data: <https://doi.org/10.5281/zenodo.3379590>

CTD data: <https://doi.org/10.5281/zenodo.3247384>

Many projects have now published datasets as well. Those that were
published through SPI can be found here:
<https://zenodo.org/communities/spi-ace/search?page=1&size=20>

Published data

    You are here:Home Published data

Datasets

All data published from ACE can be found here. More data will be
available over the coming months.

Other datasets have already been published elsewhere: Dataset name Link
/ DOI Acoustic recordings of whales from Sonobuoys
<doi:10.4225/15/59d5a05f6050f> Reconstructed non-linear surface from
WAMOS (marine radar) <doi:10.26179/5b8378b160b02> Unidirectional wave
spectra from WaMoS (marine radar) <doi:10.4225/15/5a17923429cb7> Aerosol
optical density
<https://aeronet.gsfc.nasa.gov/new_web/cruises_new/Ak_Treshnikov_16_17.html>
SOCCOM / Bio-ARGO float
<http://www.argodatamgt.org/Access-to-data/Argo-data-selection>,
platform codes: 5905069, 5905070, 5905072, 5905073 Benthic and
intertidal organism specimens <http://www.ozcam.org.au/> Seabird and
marine mammal observations <http://seabirds.saeon.ac.za/> Antarctic
springtail occurrence records 10.26180/5cd37a14de28b

Data publications

\`\`Leihy, R. I., Duffy, G. A., Nortje, E., & Chown, S. L. (2018). High
resolution temperature data for ecological research and management on
the Southern Ocean Islands. Scientific Data, 5, 180177.

Landwehr, S., Thurnherr, I., Cassar, N., Gysel-Beer, M., and Schmale,
J.: Using global reanalysis data to quantify and correct airflow
distortion bias in shipborne wind speed measurements, Atmos. Meas. Tech.
Discuss. in review, 2019.

  - Source chlorophyll data (8-day temporal resolution) - Ocean color
    <https://oceandata.sci.gsfc.nasa.gov/MODIS-Aqua/Mapped/8-Day/4km/chlor_a/2017/>
