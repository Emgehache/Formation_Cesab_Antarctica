#library(ncdf4) # package for netcdf manipulation
#library(raster) # package for raster manipulation

transform_nc_to_rasterlayer <- function(day1, day2, variable, resolution) {
day <- c(day1:day2)
var <- variable #SST_sst #CHL_chlor_a
res <- resolution #8D #DAY
for(d in day) {
  file_name  <- paste0("./data/A20170",d,".L3m_",res,"_",var,"_4km.nc")
  SST_raster <- raster(file_name,
                          level=180,
                          varname= "sst")
  assign(paste("SST_raster_",d,sep = ""), SST_raster)
  
} 
} 

save.image(file = "SST_raster_day.RData")
