
#library(lubridate)

#get_chl_a_data<- function(start_date, date_end) {
### Define periode to interest 

start_date <- ymd("2017-01-08")
end_date   <- ymd("2017-01-18")
  
# day of the year 
yr         <- year(start_date) 
start_day  <- yday(start_date)
end_day    <- yday(end_date)

# variable of interest
variable <- "CHL_chlor_a" #"SST_sst"


# find correct name for file in ocean color site 
step <- 8 
first_day_start_file <- floor((start_day-1)/step)*step + 1
first_day_end_file <- floor((end_day-1)/step)*step + 1

files=seq(first_day_start_file,first_day_end_file,by=8)

url_base <- "https://oceandata.sci.gsfc.nasa.gov/cgi/getfile/A"

for(d in files) {
  url <- paste0(url_base,yr,formatC(d,width=3,flag=0,format = "d"),
                yr,formatC(d+7,width=3,flag=0,format = "d"),".L3m_8D_",variable,"4km.nc")
}
# download.files(url)
