#---------------------------------------------------------------------------#
# Nom : honey_map.R                                           			        #
# Description : Makes use of rayshader package for honey map                #
# Auteur: Pietro Violo                                                      #
# Date : 20 mai 2023                                                        #
# Modifications :                                                           #
#---------------------------------------------------------------------------#

rm(list=ls(all=TRUE))

#'* Libraries *

#devtools::install_github("tylermorganwall/rayvertex")
#devtools::install_github("tylermorganwall/rayshader")

library(rayvertex)
library(rgl)
library(tidyverse)
library(viridis)
library(broom)
library(mapproj)
library(urbnmapr)
library(rayshader)


#updateR()

#'* Data import and data wrangling *

g1 <- mtcars %>%  
  ggplot(aes(disp, mpg, color = cyl)) +
  geom_point(size = 2) +
  scale_color_continuous(limits = c(0,8))

# rayshader

g1 %>% plot_gg(
  height = 3,
  width = 3.5,
  multicore = T,
  pointcontract = 0.7,
  soliddepth = -200
)
