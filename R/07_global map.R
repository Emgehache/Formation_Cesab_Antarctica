####################################################"
##
##  Map of ship track + animation
##
###################################################"


############
############ World map
############

track <- get_1hour_acetrack(year = 2017, months = c(1,2))

##Get data world

world <- ne_countries(scale = "medium", returnclass = "sf")   #gets the world map from naturalearth package


##Create orthographic projetion------------------------

prj <- paste(
  "+proj=ortho +lat_0=-50 +lon_0=140",
  "+x_0=0 +y_0=0",
  "+ellps=GRS80 +units=m +no_defs"
)

track_sel <- track %>% mutate(day = day(date_time),
                              hour= str_sub(date_time, 12,13),
                              month=month(date_time),
                              year=year(date_time)) %>%
  filter(month == 01 & day >= 20) %>% droplevels() %>%
  mutate(hoursum = seq(1,length(date_time), by=1),
         boat = emoji("ship") ) %>% droplevels()

#----------------------------------------------------------------

### Projection orthographic for track data

coordinates(track_sel)<-~longitude+latitude
class(track_sel)
proj4string(track_sel)<-CRS("+proj=longlat +datum=WGS84")

track_sel<-spTransform(track_sel, prj)

track_sel <- data.frame(track_sel)


#----------------------------------------------------



#plot
ggplot(data = world) +
  geom_sf(fill= "antiquewhite2") +
  
  geom_emoji(aes(x = longitude, y = latitude), emoji = "ship", data =track_sel, size = 0.2)+
  coord_sf(crs = prj)+
  xlab("")+
  ylab("")+
  theme_bw()




