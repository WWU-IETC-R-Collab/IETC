#' Unzip zipped shapefiles from a download web address such as a raw GitHub link
#'
#' @title IETC
#' @param InputZipShapefile Web address of a web-accessible zippped shapefile
#' @return sf object loaded from input shapefile
#' @export

unzipShape <- function(InputZipShapefile){
  if (!requireNamespace(c("sf"), quietly = TRUE)) {
    stop("Package \"sf\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  dl.temp <- tempfile()
  dl.temp2 <- tempfile()
  utils::download.file(InputZipShapefile, dl.temp, quiet=T)
  utils::unzip(zip = dl.temp, exdir = dl.temp2)
  shapefile.out <-list.files(dl.temp2, pattern = ".shp$",full.names=TRUE)
  sf::st_read(shapefile.out)
}
