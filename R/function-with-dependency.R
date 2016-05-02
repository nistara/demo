#' Function with dependency
#'
#' This function depends upon another package (leaflet), and you need to include it with devtools. For more information on leaflet, visit their website:
#' https://rstudio.github.io/leaflet/
#' @keywords leaflet
#' @export


# Using leaflet in the function. Note how it's called below.
# If you don't already know leaflet, check it out at https://rstudio.github.io/leaflet/
quakes_leaflet <- function() {
  data(quakes)
  map <- leaflet::leaflet()
  map <- leaflet::addTiles(map)
  map <- leaflet::addCircleMarkers(map, data = quakes[1:20, ], ~long, ~lat, popup = ~as.character(mag), weight = 5)
  map
}





