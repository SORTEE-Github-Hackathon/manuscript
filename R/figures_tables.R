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
roles <- read_csv(here("R", "collaborator_roles.csv"))

roles_wide <-
  roles %>%
  tidyr::fill(Role, Description) %>% 
  pivot_wider(names_from = `GitHub Feature`, values_from = `Use Case`) %>% 
  select(Role, `GitHub repo`, README, Issue, Discussion, `Pull Request`, Fork, `GitHub Pages`)
  
  
roles_table <-
  roles_wide %>% 
  flextable() %>% 
  valign(j=1:7, valign = "top") %>% 
  add_header_row(values = c("", "GitHub Feature"),
                 colwidths = c(1, ncol(roles_wide) -1)) %>%
  theme_box() %>% 
  autofit()
roles_table

#TODO: make prettier

save_as_image(roles_table, here("content", "images", "roles_hires.pdf"))  
save_as_image(roles_table, here("content", "images", "roles.png"))  



