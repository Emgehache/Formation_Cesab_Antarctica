###################################################
##
##  Map of ship track + animation
##
###################################################


## Get raster

sst <- raster("data/A20170172017024.L3m_8D_SST_sst_4km.nc", level=180,
       varname= "sst")

chlora <- raster("data/A20170172017024.L3m_8D_CHL_chlor_a_4km.nc", level=180,
            varname= "chlor_a")


###Create a crop frame polygone extent
extent_pol <- c(114 ,170, -75, -35)


sst_crop <- crop(sst, extent_pol)

sstcrop_df <- sst_crop %>% as.data.frame(xy=T) %>% rename(SST = Sea.Surface.Temperature)


##Chlora

chlora_crop <- crop(chlora, extent_pol)

chloracrop_df <- chlora_crop %>% as.data.frame(xy=T) %>%
  rename(chlora = Chlorophyll.Concentration..OCI.Algorithm) %>%
  filter(chlora < 4)



###Anim plot SST
trackframesSST <- ggplot(data = track_sel) +
  geom_raster(aes(x =x, y = y, fill = SST), data = sstcrop_df)+
  geom_sf(data = world,fill= "antiquewhite2") +
  scale_fill_distiller(palette="Spectral", na.value=NA)+
  geom_sf(data = world,fill= "antiquewhite2") +
  ggimage :: geom_emoji(aes(x = longitude, y = latitude), image = "1f6a2", size = 0.05)+
  coord_sf(xlim = c(135, 165), ylim = c(-40, -70))+
  xlab("")+
  ylab("")+
  theme_bw()+
  transition_states(states = hoursum)


gganimate :: animate(trackframesSST,renderer = ffmpeg_renderer(), nframes = 350, fps = 30, duration = 20)

anim_save("anim_sst", animation = last_animation(), path = "res/")


###Anim plot chlora
trackframeschlora <- ggplot(data = track_sel) +
  geom_raster(aes(x =x, y = y, fill = chlora), data = chloracrop_df)+
  geom_sf(data = world,fill= "antiquewhite2") +
  scale_fill_distiller(palette="viridis", direction = 1, na.value=NA)+
  geom_sf(data = world,fill= "antiquewhite2") +
  ggimage :: geom_emoji(aes(x = longitude, y = latitude), image = "1f6a2", size = 0.05)+
  coord_sf(xlim = c(135, 165), ylim = c(-40, -70))+
  xlab("")+
  ylab("")+
  theme_bw()+
  transition_states(states = hoursum)

gganimate::animate(trackframeschlora,renderer = ffmpeg_renderer(), nframes = 350, fps = 30, duration = 20)

anim_save("anim_chlora", animation = last_animation(), path = "res/")
