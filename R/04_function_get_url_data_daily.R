
#library(lubridate)
#library(ncdf4)

get_url_env_data_day <- function(start_date, end_date, variable){
  
  ### Define parameters of interest 
  start_date1 <- ymd(start_date)
  end_date1   <- ymd(end_date)
  # variable of interest
  variable <- variable # CHL_chlor_a #SST_sst
  
  # day of the year 
  yr         <- year(start_date1) 
  start_day  <- yday(start_date1)
  end_day    <- yday(end_date1)
  
  
  # find correct name for file in ocean color site 
  #step <- 8 
  #first_day_start_file <- floor((start_day-1)/step)*step + 1
  #first_day_end_file <- floor((end_day-1)/step)*step + 1
  
  files=seq(start_day,end_day)
  
  url_base <- "https://oceandata.sci.gsfc.nasa.gov/cgi/getfile/"
  
  for(d in files) {
    file_name <- paste0("A",yr,formatC(d,width=3,flag=0,format = "d"),
                        ".L3m_DAY_",variable,"_4km.nc")
    url <- paste0(url_base,file_name)
    if (!file.exists(paste0("./data/",file_name))){
      
      res <- tryCatch(download.file(url,
                                    destfile=paste0("./data/",file_name),
                                    method="auto"),
                      error=function(e) 1)
      # if(dat!=1) load(paste0("./data/",file_name))
    }
  } 
}
