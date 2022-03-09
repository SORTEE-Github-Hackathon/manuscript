library(tidyverse)
library(here)
df <- read_csv(here("R", "collaborative_uses.csv"), na = "N/A")

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
  ) 

#   #try just using the color column
# table %>% 
#   cols_unhide(color) %>% 
#   data_color(columns = color,
#              colors = color)

gtsave(table, here("content", "images", "collaborative_use.png"))



# gradient ---------------------------------------------------------------

#this will look better if I draw a big color gradient from individual to
#collaborative and stick that next to the table with `patchwork` or something.

gradient <- ggplot(tibble(x = 1, y = 1:1000)) +
  geom_line(aes(x, y, color = y),
            size = 15) +
  scale_color_gradient(high = "#7fffbb", low = "#081d57") +
  annotate("label", x = 1, y = 1,
           fill = "#081d57",
           color = "white",
           label = "Highly Collaborative",
           label.padding = unit(0.5, "lines")) +
  annotate("label", x = 1, y = 1000,
           fill = "#7fffbb",
           color = "black",
           label = "Individual",
           label.padding = unit(0.5, "lines")) +
  theme_void() +
  theme(legend.position = "none")
gradient

# Stick 'em together -------------------------------------------------------

# library(patchwork)

# gradient + table
# apparently this doesn't work yet: https://github.com/thomasp85/patchwork/issues/203

