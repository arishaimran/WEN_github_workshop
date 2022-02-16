#### Packages ###


# Packages ----------------------------------------------------------------
(control + shift+R)

install.packages('remotes')
library(remotes)

install_github("allisonhorst/palmerpenguins")
library(palmerpenguins)

install.packages("tidyverse")
library(tidyverse)


# Session Info ------------------------------------------------------------

sessionInfo()

#R version 4.0.2 (2020-06-22)
# Platform: x86_64-apple-darwin17.0 (64-bit)
# Running under: macOS  10.16
# 
# Matrix products: default
# LAPACK: /Library/Frameworks/R.framework/Versions/4.0/Resources/lib/libRlapack.dylib
# 
# locale:
#   [1] en_CA.UTF-8/en_CA.UTF-8/en_CA.UTF-8/C/en_CA.UTF-8/en_CA.UTF-8
# 
# attached base packages:
#   [1] stats     graphics  grDevices utils     datasets  methods   base     
# 
# other attached packages:
#   [1] forcats_0.5.0   stringr_1.4.0   dplyr_1.0.5     purrr_0.3.4     readr_1.4.0     tidyr_1.1.2    
# [7] tibble_3.0.3    ggplot2_3.3.2   tidyverse_1.3.0 remotes_2.4.2  
# 
# loaded via a namespace (and not attached):
#   [1] Rcpp_1.0.5        cellranger_1.1.0  pillar_1.4.6      compiler_4.0.2    dbplyr_1.4.4     
# [6] prettyunits_1.1.1 tools_4.0.2       pkgbuild_1.2.0    lubridate_1.8.0   jsonlite_1.7.2   
# [11] lifecycle_1.0.0   gtable_0.3.0      pkgconfig_2.0.3   rlang_0.4.10      reprex_0.3.0     
# [16] cli_2.5.0         DBI_1.1.0         rstudioapi_0.13   curl_4.3          haven_2.3.1      
# [21] xml2_1.3.2        httr_1.4.2        withr_2.4.2       fs_1.5.0          hms_0.5.3        
# [26] generics_0.0.2    vctrs_0.3.6       rprojroot_1.3-2   grid_4.0.2        tidyselect_1.1.0 
# [31] glue_1.4.2        R6_2.4.1          processx_3.5.2    readxl_1.3.1      modelr_0.1.8     
# [36] callr_3.7.0       blob_1.2.1        magrittr_1.5      scales_1.1.1      backports_1.1.10 
# [41] ps_1.3.4          ellipsis_0.3.1    rvest_0.3.6       assertthat_0.2.1  colorspace_1.4-1 
# [46] stringi_1.5.3     munsell_0.5.0     broom_0.7.1       crayon_1.3.4 


# load data ---------------------------------------------------------------

data(penguins, package="palmerpenguins")

write.csv(penguins_raw,"data/penguins_raw.csv")
write.csv(penguins, "data/penguins.csv, row.names = FALSE")

pen.data <- read.csv("data/penguins.csv")


# data inspection ---------------------------------------------------------

str(pen.data)
colnames(pen.data)

head(pen.data)
tail(pen.data)


# pairwise correlation plot of numeric columns ---------------------------
pairs(pen.data[,c(3:6,8)])
?pairs

boxplot(pen.data$body_mass_g ~ pen.data$species)


# saving an image in base R ------------------------------------------------------------------





