library(ncdf4) # package for netcdf manipulation
library(raster) # package for raster manipulation

transform_nc_to_rasterlayer <- function(day1, day2) {
day <- c(day1:day2)
for(d in day) {
  file_name  <- paste0("./data/A20170",d,".L3m_DAY_SST_sst_4km.nc")
  SST_raster <- raster(file_name,
                          level=180,
                          varname= "sst")
  assign(paste("SST_raster_",d,sep = ""), SST_raster)
  
} 
} 

save.image(file = "SST_raster_day.RData")
