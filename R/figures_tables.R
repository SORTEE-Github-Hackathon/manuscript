##' Use this script for generating figures or tables.  Save outputs to
##' ../content/images using the `here()` package with `here("content", "images",
##' "<filename>")`.  Ideally save images as both a .png (for including into the
##' manuscript) and a high res .tiff or vector format like .pdf, .eps, or .svg
##' (for submission to journal).
##' 
# Load Packages -----------------------------------------------------------

library(tidyverse) #data wrangling and ggplot2
library(here) #for reproducible relative file paths
library(gt) #for HTML tables (which can be saved as .pdf)
library(flextable) #another possible table formatting package.  Can output to html, word, powerpoint, pdf.  Supports cell merging
library(patchwork) #for multi-panel figures, if necessary


# table 2 - collaborator profiles table -------------------------------------------
# edit text in .csv file
table2 <- read_csv(here("R", "collaborator_roles.csv"))

table2_gt <-
  table2 %>%
  tidyr::fill(Role, Description) %>% 
  flextable() %>% 
  merge_v(j = 1:2) %>% 
  valign(j=1:3, valign = "top") %>% 
  border_outer() %>% 
  border_inner_h() %>% 
  border_inner_v() %>% 
  fix_border_issues() %>% 
  autofit()
#TODO: make prettier
save_as_image(table2_gt, here("content", "images", "table2_hires.pdf"))  
save_as_image(table2_gt, here("content", "images", "table2.png"))  



