library(tidyverse)
library(here)
df <- read_csv(here("R", "collaborative_uses.csv"), na = "N/A")

df


# big arrow ---------------------------------------------------------------

#this will look better if I draw a big color gradient arrow from individual to
#collaborative and stick that next to the table with `patchwork` or something.


# Table part --------------------------------------------------------------

library(gt)
library(glue)

#function to replace difficulty with lightning bolts

diff_to_lightning <- function(x) map_chr(x, ~rep("⚡️", .x) %>% glue_collapse())

table <- 
  df %>% 
  gt() %>% 
  text_transform(cells_body(difficulty), fn = diff_to_lightning) %>% 
  # make NAs blanks
  fmt_missing(example, missing_text = "") %>% 
  #hide color column, for now
  cols_hide(color) %>% 
  cols_align("left") %>% 
  #fix up column names
  cols_label(
    ways = "GitHub Use",
    difficulty = "Technical Difficulty",
    example = "Example"
  ) %>% 
  #add footer for difficulty legend
  tab_footnote(
    "⚡️ = Beginner ⚡️⚡️ = Intermediate ⚡️⚡️⚡️ = Advanced",
    locations = cells_column_labels(
      difficulty
    )
  ) %>% 
  #try just using the color column
  cols_unhide(color) %>% 
  # text_transform(cells_body(color),grDevices::colors)
  data_color(columns = color,
             colors = color)
  #would look better as a separate big arrow

gtsave(table, here("content", "images", "collaborative_use.png"))


# Stick em together -------------------------------------------------------

library(patchwork)
