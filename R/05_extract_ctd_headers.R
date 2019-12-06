## Parameters

ctd_path <- "data/ace_ctd/" # folder containing the ctd data files
to_get <- c("date","eventnbr","latitude","longitude")  # list of the metadata to get. Should correspond to the names in the headers of the data files.
output_file <- "res/ace_ctd_metadata.csv"   # file in which the metadata of the ctd files will be written

##############

files_list <- list.files(ctd_path)
n_toget <- length(to_get)
n_files <- length(files_list)
output <- vector("list", n_toget)  #initialisation of the storage list for the data we want to get from headers


for (data_file in files_list) {
  header <- read_csv(paste0(ctd_path,data_file), col_names = "meta", n_max = 12, skip=5, col_types = paste0(c("c",rep('_/-',1))))
  
  for (elm in 1:n_toget) {
    wanted <- to_get[elm]
    wanted_row <- grep(pattern = str_to_upper(wanted),header$meta)  #index of the row containing the wanted data
    output[[elm]] <- c(output[[elm]],strsplit(header$meta[wanted_row], split = " = ")[[1]][2])
  }
}

###### data storage

clean_output <- data.frame(matrix(ncol = n_toget, nrow = n_files))    #empty data frame to fill
colnames(clean_output) <- to_get

for (i in 1:n_toget) {
  clean_output[[i]] <- output[[i]]
}

write_csv(clean_output, output_file, col_names=TRUE)
