ctd_meta <- read_csv(paste0('res/ace_ctd_metadata.csv'))

ctd_locations <-sf::st_as_sf(ctd_meta,
  coords = c("longitude", "latitude"),
  crs    = 4326
)

antarctica_plot() +
  geom_sf(data = ctd_locations)
