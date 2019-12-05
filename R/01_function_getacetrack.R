###################################
###
###   Fonction get_1hour_acetrack
###   get FROM ZENODO track og the ship
###
###   
##################################



get_1hour_acetrack <- function(year, months) {
  
  ## Checks                         ----------
  if (missing(year)) { stop("Missing year") }
  if (!is.vector(months)) { stop("x must be a numeric vector.") }
  if (!is.numeric(months)) { stop("x must be a numeric vector.") }
  
  
  for (i in min(months):max(months)) {
    
    tryCatch({
      print(i)
    
    url <- paste0("https://zenodo.org/record/3483164/files/ace_cruise_track_1hour_",year,"-","0",i,".csv?download=1")
    
    track <- paste0("data/track",year,"0",i,".csv")
    download.file(url = url, destfile = track)
    track<- read.csv(file = track)
    
    assign(paste0("track",year,"_","0",i), track)
    
    
    
            }, error=function(e){})
    
    
  }
}


