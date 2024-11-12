library(tidyverse)
library(patchwork)


# load R objects ----------------------------------------------------------
load("nifH_niche_output_reproducibility.RData")

# Figure 1 ----------------------------------------------------------------

f1a + f1b + f_banda_season + f1d + 
  patchwork::plot_layout(ncol = 1, heights = c(1.5,1, .25, 1.25))+
  plot_annotation(tag_levels = "A")


# Figure 2 ----------------------------------------------------------------

f2

# Figure 3 ----------------------------------------------------------------



plot(mod, ellipse = TRUE, hull = FALSE, label.cex = 0.75, main =NULL, sub = NULL, 
     cex = 1.4, pch = c(15, 16), col = c("orange", "cyan4"))
legend(x = "top",  horiz = T, cex=1,       # Posición y tamaño
       legend = sort(unique(mod$group)), # Textos de la leyenda
       pch = c(15, 16), # Tipo de símbolo
       col = c("orange", "cyan4"))         # Color de símbolo

plot(ef, p.max = 0.001,col = "black") #In order to overlay the vectors of significant (p<0.005) environmental variables from envfit onto PCoA. 


# Figure 4 ----------------------------------------------------------------

((f4a_NP /
    f4a_propNH4 /
    f4a_T) | f4b) + 
  plot_layout(ncol = 2, widths = c(1.7, 2)) +
  plot_annotation(tag_levels = "A")


# Figure 5 ----------------------------------------------------------------

f5a + f5b + plot_layout(ncol = 1, heights = c(1, 0.80)) +
  plot_annotation(tag_levels = "A")

# Figure 6 ----------------------------------------------------------------

bandaseason +  
  ladeT + ladeNP + 
  ladeChl + ladepropNH4 + 
  bandaUD +
  plot_layout(ncol = 1, heights=c(.25, 1.5, 1.5, 1.5, 1.5, .25))


# Figure 7 ----------------------------------------------------------------
 #sketch

# Figure 8 ----------------------------------------------------------------

f8

