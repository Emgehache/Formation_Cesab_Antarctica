antarctica_plot <- function(){
# Plots the map of antarctica, using the orthographic projection
  
world <- ne_countries(scale = "medium", returnclass = "sf")   #gets the world map from naturalearth package

# Definition of projection -- documentation can be found here : https://proj.org/operations/projections/ortho.html
prj <- paste(
  "+proj=ortho +lat_0=-90 +lon_0=0",
  "+x_0=0 +y_0=0",
  "+ellps=GRS80 +units=m +no_defs"
)

#plot
ggplot(data = world) +
  geom_sf() +
  coord_sf(crs = prj)

}
