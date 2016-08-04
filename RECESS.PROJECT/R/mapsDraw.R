
#' MAP SHOWING LOCATIONS
#'
#' @param region = the REGION to view on map
#'
#' @author kisya moses.
#'

eventsMap <- function(region = "Western"){
  dir <- paste("~/dataset1.csv", sep = "")
  dataset <- read.csv(dir)
  points <- data.frame(longitude = dataset$LONGITUDE,
                       latitude = dataset$LATITUDE,
                       description = paste("<b>",dataset$EVENT_DATE,"</b>:: ",dataset$NOTES),
                       REGION = dataset$ADMIN1)
  pointsRegion <- data.frame(subset(points,points$REGION == region))

  map <- leaflet::leaflet()
  map <- leaflet::addTiles(map)
  map <- leaflet::addMarkers(map,
                             lng = pointsRegion$longitude,
                             lat = pointsRegion$latitude,
                             popup = pointsRegion$description)

  htmlwidgets::saveWidget(map, "region_map.html", selfcontained = FALSE)

}#end function
