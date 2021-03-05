###################################################################################################################################
# Unzip Shapefile Function
# Author: Skyler Elmstrom
# Date: 2021-03-05
# R Package Requirements: sf package
# Description: This function is designed to download zipped shapefiles directly from GitHub or other Zip Shapefile download links,
# store them in a temporary directory, and load the shapefile as an sf object in R.
###################################################################################################################################

source(unzipShape <- function(InputZipShapefile){
  requireNamespace("sf", quietly = TRUE)
  dl.temp <- tempfile() # Create local temp file for zipped shapefile
  dl.temp2 <- tempfile() # Create a second local temp file to store unzipped shapefile
  download.file(InputZipShapefile, dl.temp, quiet=T) # Downloads zip file from InputShape
  unzip(zip = dl.temp, exdir = dl.temp2) # Unzips zip file
  shapefile.out <-list.files(dl.temp2, pattern = ".shp$",full.names=TRUE) # stores file path of files with .shp ext in dl.temp2
  sf::st_read(shapefile.out) # Reads shapefile as sf object
})
