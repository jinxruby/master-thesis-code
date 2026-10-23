library(tidyverse)
library(DHARMa)
library(MASS)
library(mgcv)
library(ggeffects)
library(mgcViz)
library(devtools)

pwrasse <- readRDS("modelPW.rds")
babalone <- readRDS("modelBA.rds")
bwrasse <- readRDS("modelBW.rds")
urchin <- readRDS("modelSU.rds")

par(cex.axis = 0.7,  # axis tick label size
    cex.lab = 0.8,   # axis title size
    cex.main = 1.2)  # main title size

vis.gam(pwrasse, 
             view = c("total_mhw_intensity", "mhw_days"),  # the two variables in your tensor smooth
             theta = 45,  # horizontal rotation angle
             phi = 20,    # vertical rotation angle
             color = "heat",
             type = "response",
             xlab = "Total MHW Intensity",
             ylab = "Number of MHW Days",
             zlab = "Predicted Abundance",
             ticktype = "detailed",
             main = expression(italic("N. fucicola") ~ "- Purple Wrasse"))

vis.gam(bwrasse, 
        view = c("total_mhw_intensity", "mhw_days"),  # the two variables in your tensor smooth
        theta = 45,  # horizontal rotation angle
        phi = 20,    # vertical rotation angle
        color = "heat",
        type = "response",
        xlab = "Total MHW Intensity",
        ylab = "Number of MHW Days",
        zlab = "Predicted Abundance",
        ticktype = "detailed",
        main = expression(italic("N. tetricus") ~ "- Bluethroat Wrasse"))

vis.gam(urchin,
        view = c("total_mhw_intensity", "mhw_days"),  # the two variables in your tensor smooth
        theta = 45,  # horizontal rotation angle
        phi = 20,    # vertical rotation angle
        color = "heat",
        type = "response",
        xlab = "Total MHW Intensity",
        ylab = "Number of MHW Days",
        zlab = "Predicted Abundance",
        ticktype = "detailed",
        main = expression(italic("H. erythrogramma") ~ "- Shortspined Urchin"))

vis.gam(babalone, 
        view = c("total_mhw_intensity", "mhw_days"),  # the two variables in your tensor smooth
        theta = 45,  # horizontal rotation angle
        phi = 20,    # vertical rotation angle
        color = "heat",
        type = "response",
        xlab = "Total MHW Intensity",
        ylab = "Number of MHW Days",
        zlab = "Predicted Abundance",
        ticktype = "detailed",
        main = expression(italic("H. rubra") ~ "- Blacklip Abalone"))

par(cex.axis = 1, cex.lab = 1, cex.main = 1)
