##' Use this script for generating figures or tables.  Save outputs to
##' ../content/images using the `here()` package with `here("content", "images",
##' "<filename>")`.  Ideally save images as vector files (.pdf or .eps), but we
##' can always change that later.
##' 
# Load Packages -----------------------------------------------------------

library(tidyverse) #data wrangling and ggplot2
library(here) #for reproducible relative file paths
library(gt) #for HTML tables (which can be saved as .pdf)
library(flextable) #another possible table formatting package.  Can output to html, word, powerpoint, pdf.  Supports cell merging
library(patchwork) #for multi-panel figures, if necessary


# Box 2 - collaborator profiles -------------------------------------------

box2 <- read_csv(here("R", "collaborator_roles.csv"))
# box2_gt <- box2 %>%
#   tidyr::fill(Role) %>%
#   group_by(Role) %>%
#   gt() %>%
#   tab_stubhead("Role")
# gtsave(box2_gt, here("content", "images", "box2.pdf"))


box2_gt <-
  box2 %>%
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
save_as_image(box2_gt, here("content", "images", "box2.pdf"))  




