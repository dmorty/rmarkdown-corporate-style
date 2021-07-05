# ./R/corp-palette.R
# Defines font and a hypothetical corporate palette, and makes them ggplot2 defaults

corp_font <- "Helvetica Neue"

theme_set(theme_minimal(base_family = corp_font))

corp_palette <- c("#505370", "#368185", "#2781bb", "#416ea6", "#469fb3", "#9e5268")

update_geom_defaults("text",   list(family = corp_font, colour = corp_palette[1]))
scale_colour_discrete <- function(...) scale_colour_manual(..., values = corp_palette)
scale_fill_discrete <- function(...) scale_fill_manual(... , values = corp_palette)
