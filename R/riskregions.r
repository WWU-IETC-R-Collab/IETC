#' Loads IETC project risk regions as an sf object in WGS84
#'
#' @param data Accepts a string of either "USFE" or "SFB"
#' @examples riskregions <- riskregions("USFE")
#' @importFrom magrittr %>%
#' @export
riskregions = function(data) {
  if (missing(data)) {
    message("No data argument specified. Loading USFE risk regions...")
    sf::st_read(system.file("shape/RiskRegions_DWSC_Update_9292020.shp", package = "IETC"))
  }
  else if (data == "USFE") {
    message("Loading USFE risk regions...")
    sf::st_read(system.file("shape/RiskRegions_DWSC_Update_9292020.shp", package = "IETC"))
  }
  else {
    message("Incorrect data argument")
  }
}
