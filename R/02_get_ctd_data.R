#' @title Download ctd data from zenodo repo
#' @description This function will get ctd data from a data repository and unzip it to the data repos of the project 
#'
#' @param url the url of the directory where the ziped file is located
#' @param filename the name of the ziped file (without the zip extension)
#'
#' @return function returns a directory containing unzipped ctd files in the data directory
#'
#'
#'
#'
#' @examples
#' for data in https://zenodo.org/record/3247384/files/ace_ctd_CTD20190916CURRSGCMR.zip
#' url <- "https://zenodo.org/record/3247384/files/"  
#' filename <- "ace_ctd_CTD20190916CURRSGCMR"
#' get_ctd_file <- function(url, filename)
#' 
#'


get_ctd_file <- function(url, filename) {
  dest_folder <- file.path("data")
  #dir.create(dest_folder, showWarnings = FALSE)
  download.file(
    url = paste0(url, filename, ".zip"), 
    destfile = file.path(dest_folder, paste0(filename, ".zip"))
  )
  unzip(file.path(dest_folder, paste0(filename, ".zip")), exdir = dest_folder)
  file.remove(file.path(dest_folder, paste0(filename, ".zip")))
}
get_ctd_file(url, filename)
