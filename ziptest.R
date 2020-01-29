setwd("C://Users/Simon/Documents/ziptest/")

zip_list <- list.files(pattern="*.ZIP$",all.files=T, full.names = T) # crear una lista de los archivos zip para convertir

for (i in 1:length(zip_list)){ # run a for loop through the list
  zip_file <- zip_list[i]
  print(zip_file)
  unzip(zip_file, exdir = substr(zip_file,1,nchar(zip_file)-4)) # exdir has in this case the same name as the zip file
}



