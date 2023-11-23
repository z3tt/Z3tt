#------------------------------------------------------------------------------#
#                                                                              #
#       (Even More) Exciting Data Visualizations with ggplot2 Extensions       #
#                                                                              #
#                              Dr. Cedric Scherer                              #
#                     Berlin R Users // October 24, 2023                       #
#                                                                              #
#------------------------------------------------------------------------------#



## -----------------------------------------------------------------------------
pkgs <- c("ggplot2", "readr", "dplyr", "tibble", "tidyr", "lubridate",
          "scales", "ragg", "systemfonts", "ggpointdensity", "ggblend", 
          "ggdensity", "ggforce", "ggtext", "ggiraph", "remotes")

install.packages(setdiff(pkgs, rownames(installed.packages())))

remotes::install_github("AllanCameron/geomtextpath")


## -----------------------------------------------------------------------------
bikes <- readr::read_csv(
  "https://cedricscherer.com/data/london-bikes-custom.csv",
  col_types = "Dcfffilllddddc"
)


## -----------------------------------------------------------------------------
library(dplyr)

bikes_day <- filter(
  bikes, day_night == "day"
)

bikes_monthly <-
  bikes |> 
  filter(year == "2016") |> 
  mutate(month = lubridate::month(date, label = TRUE)) |>
  summarize(
    count = sum(count), 
    across(c(temp, humidity, wind_speed), mean),
    .by = c(month, day_night)
  )


## -----------------------------------------------------------------------------
library(ggplot2)

theme_set(theme_minimal(base_family = "Asap SemiCondensed", base_size = 20))

theme_update(
  plot.title.position = "plot",
  plot.title = element_text(size = 24),
  panel.grid.minor = element_blank()
)


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  geom_boxplot()


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  geom_violin()


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  geom_violin() +
  geom_boxplot(width = .2)


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_eye()


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_halfeye()


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_halfeye(.width = c(.5)) ## default: c(.66, .95)


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_halfeye(.width = c(0, 1), adjust = .5, shape = 23)


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = season, y = humidity, fill = day_night)) +
  ggdist::stat_halfeye(.width = 0, adjust = .5, slab_alpha = .5, shape = 21)


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_interval()


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_interval(.width = 1:4*.25, linewidth = 10) +
  scale_color_viridis_d(option = "mako", direction = -1, end = .9)


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_interval(.width = 1:4*.25) +
  ggdist::stat_dots(position = position_nudge(x = .05)) +
  scale_color_viridis_d(option = "mako", direction = -1, end = .9)


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = season, y = humidity)) +
  ggdist::stat_interval(.width = 1:4*.25) +
  ggdist::stat_halfeye(.width = 0, color = "white", position = position_nudge(x = .025)) +
  scale_color_viridis_d(option = "mako", direction = -1, end = .9)


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = season, y = humidity)) +
  ggdist::stat_interval(.width = 1:4*.25) +
  ggdist::stat_halfeye(aes(fill = day_night), slab_alpha = .3, shape = 21, .width = 0, color = "white", position = position_nudge(x = .025)) +
  scale_color_viridis_d(option = "mako", direction = -1, end = .9)


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = season, y = humidity)) +
  ggdist::stat_interval(.width = 1:4*.25) +
  ggdist::stat_halfeye(aes(fill = day_night), slab_alpha = .3, shape = 21, .width = 0, color = "white", position = position_nudge(x = .025)) +
  scale_color_grey(start = .9, end = .2) +
  scale_fill_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = season, y = humidity)) +
  ggdist::stat_ccdfinterval()


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = humidity, y = season)) +
  ggridges::geom_density_ridges()


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = season, fill = day_night)) +
  ggridges::geom_density_ridges(alpha = .5)


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = season, fill = day_night)) +
  ggridges::geom_density_ridges(alpha = .5, color = "white", scale = 1.5) +
  scale_fill_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
ggplot(bikes_day, aes(x = humidity, y = season, fill = stat(x))) +
  ggridges::geom_density_ridges_gradient(color = "white", scale = 1.5) +
  scale_fill_gradient(low = "#FFCE52", high = "#663399", guide = "none")


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = temp)) +
  geom_point(size = 3, alpha = .5)


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = temp)) +
  geom_point(size = 3, alpha = .1)


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = temp)) +
  ggpointdensity::geom_pointdensity(size = 2)


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = temp)) +
  ggpointdensity::geom_pointdensity(size = 2, adjust = .5) +
  scale_color_gradient(low = "#FFCE52", high = "#663399")


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = temp, color = day_night)) +
  geom_point(size = 5, alpha = .5) +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = temp, color = day_night)) +
  geom_point(size = 5, alpha = .5) |> ggblend::blend("multiply") +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
library(ggblend)

ggplot(bikes, aes(x = humidity, y = temp, color = day_night, partition = day_night)) +
  geom_point(size = 5, alpha = .5) * (blend("lighten") + blend("multiply", alpha = 0.5)) +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = humidity, y = temp, color = day_night)) +
  geom_point(alpha = .2, shape = 16, size = 2) +
  ggdensity::geom_hdr_lines() +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = temp, y = count, color = day_night)) +
  geom_point(alpha = .2, shape = 16, size = 2) +
  ggdensity::geom_hdr_lines() +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
ggplot(bikes, aes(x = temp, y = count, color = day_night)) +
  geom_point(alpha = .2, shape = 16, size = 2) +
  ggdensity::geom_hdr_lines(method = "mvnorm") +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"))


## -----------------------------------------------------------------------------
theme_update(legend.position = "top")

ggplot(bikes_monthly,
       aes(x = month, y = count, 
           color = day_night,
           group = day_night)) +
  geom_line(linewidth = 1) +
  scale_color_manual(
    values = c("#EFAC00", "#9C55E3")
  )


## -----------------------------------------------------------------------------
ggplot(bikes_monthly,
       aes(x = month, y = count, 
           color = day_night,
           group = day_night)) +
  geomtextpath::geom_textline(
    aes(label = day_night),
    linewidth = 1,
    family = "Asap SemiCondensed",
    fontface = "bold",
    size = 6.5
  ) +
  scale_color_manual(
    values = c("#EFAC00", "#9C55E3"),
    guide = "none"
  )


## -----------------------------------------------------------------------------
bikes_monthly |>
  mutate(day_night = if_else(
    day_night == "day", 
    "Day period (6am-6pm)", 
    "Night period (6pm-6am)"
  )) |> 
  ggplot(aes(x = month, y = count, 
             color = day_night,
             group = day_night)) +
  geomtextpath::geom_textline(
    aes(label = day_night),
    linewidth = 1,
    family = "Asap SemiCondensed",
    fontface = "bold",
    size = 6.5,
    vjust = -.5, 
    hjust = .05
  ) +
  scale_color_manual(
    values = c("#EFAC00", "#9C55E3"),
    guide = "none"
  )


## -----------------------------------------------------------------------------
g <- 
  ggplot(bikes,
       aes(x = temp, y = count,
           color = day_night)) +
  geom_point(size = 3, alpha = .4) +
  scale_color_manual(
    values = c("#EFAC00", "#9C55E3"),
    name = NULL
  )

g


## -----------------------------------------------------------------------------
g + 
  ggforce::geom_mark_rect(
    aes(label = "Tube Network Strikes 2015",
        filter = count > 40000)
  )


## -----------------------------------------------------------------------------
g + 
  ggforce::geom_mark_rect(
    aes(label = "Tube Network Strikes",
        filter = count > 40000),
    color = "black",
    label.family = "Asap SemiCondensed",
    label.fontsize = 18
  )


## -----------------------------------------------------------------------------
g +
  ggforce::geom_mark_rect(
    aes(label = "Tube Network Strikes 2015",
        filter = count > 40000),
    description = "Commuters had to deal with severe disruptions in public transport on July 9 and August 6",
    color = "black",
    label.family = "Asap SemiCondensed",
    label.fontsize = c(18, 14)
  )


## -----------------------------------------------------------------------------
g +
  ggforce::geom_mark_circle(
    aes(label = "Tube Network Strikes 2015",
        filter = count > 40000),
    description = "Commuters had to deal with severe disruptions in public transport on July 9 and August 6",
    color = "black",
    label.family = "Asap SemiCondensed",
    label.fontsize = c(18, 14)
  )


## -----------------------------------------------------------------------------
g +
  ggforce::geom_mark_hull(
    aes(label = "Tube Network Strikes 2015",
        filter = count > 40000),
    description = "Commuters had to deal with severe disruptions in public transport on July 9 and August 6",
    color = "black",
    label.family = "Asap SemiCondensed",
    label.fontsize = c(18, 14)
)


## -----------------------------------------------------------------------------
g +
  ggforce::geom_mark_hull(
    aes(label = "Tube Network Strikes 2015",
        filter = count > 40000),
    description = "Commuters had to deal with severe disruptions in public transport on July 9 and August 6",
    color = "black",
    label.family = "Asap SemiCondensed",
    label.fontsize = c(18, 14),
    expand = unit(8, "pt"),
    con.cap = unit(0, "pt"),
    label.buffer = unit(15, "pt"),
    con.type = "straight",
    label.fill = "transparent"
  )


## -----------------------------------------------------------------------------
g + 
  ggtitle("**TfL bike sharing trends by _period_**")


## -----------------------------------------------------------------------------
g +
  ggtitle("**TfL bike sharing trends by _period_**") +
  theme(
    plot.title = ggtext::element_markdown()
  ) 


## -----------------------------------------------------------------------------
g +
  ggtitle("<b style='font-size:25pt'>TfL</b> bike sharing trends by *<b style='color:#B48200;'>day</b>* and *<b style='color:#663399;'>night</b>*") +
  theme(
    plot.title = ggtext::element_markdown(),
    legend.position = "none"
  )


## -----------------------------------------------------------------------------
g +
  ggtitle("TfL bike sharing trends in London for the years 2015 and 2016 during day and night")


## -----------------------------------------------------------------------------
g +
  ggtitle("TfL bike sharing trends in London for the years 2015 and 2016 during day and night") +
  theme(
    plot.title =
      ggtext::element_textbox_simple()
  )


## -----------------------------------------------------------------------------
g +
  ggtitle("TfL bike sharing trends in London for the years 2015 and 2016 during day and night") +
  theme(
    plot.title = 
      ggtext::element_textbox_simple(
        margin = margin(t = 12, b = 12),
        lineheight = 1
      )
  )


## -----------------------------------------------------------------------------
g +
  ggtitle("TfL bike sharing trends in London for the years 2015 and 2016 during day and night") +
  theme(
    plot.title = 
      ggtext::element_textbox_simple(
        margin = margin(t = 12, b = 12),
        fill = "grey90",
        lineheight = 1
      )
  )


## -----------------------------------------------------------------------------
g +
  ggtitle("TfL bike sharing trends in London for the years 2015 and 2016 during day and night") +
  theme(
    plot.title = 
      ggtext::element_textbox_simple(
        margin = margin(t = 12, b = 12),
        padding = margin(rep(12, 4)),
        fill = "grey90",
        box.colour = "grey30",
        linetype = "13",
        r = unit(9, "pt"),
        halign = .5,
        lineheight = 1
      )
  )


## -----------------------------------------------------------------------------
g +
  ggtitle("TfL bike sharing trends in London for the years 2015 and 2016 during *<b style='color:#B48200;'>day</b>* and *<b style='color:#663399;'>night</b>*") +
  theme(
    plot.title = 
      ggtext::element_textbox_simple(
        margin = margin(t = 12, b = 12),
        padding = margin(rep(12, 4)),
        fill = "grey90",
        box.colour = "grey30",
        linetype = "13",
        r = unit(9, "pt"),
        halign = .5,
        lineheight = 1
      ),
    legend.position = "none"
  )


## -----------------------------------------------------------------------------
p1 <- 
  ggplot(bikes_monthly, aes(x = month, y = count, color = day_night, group = day_night)) +
  ggiraph::geom_line_interactive(aes(tooltip = day_night, data_id = day_night), linewidth = 1) +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"), guide = "none")

ggiraph::set_girafe_defaults(
  opts_zoom = ggiraph::opts_zoom(min = 1, max = 4),
  opts_toolbar = ggiraph::opts_toolbar(position = "bottomright")
)

ggiraph::girafe(
  ggobj = p1, width_svg = 12, height_svg = 7,
  options = list(
    ggiraph::opts_hover_inv(css = "opacity:0.3;"),
    ggiraph::opts_hover(css = "stroke-width:5;")
  )
)


## -----------------------------------------------------------------------------
p2 <- 
  ggplot(bikes, aes(x = temp, y = count, color = day_night)) +
  ggiraph::geom_point_interactive(aes(tooltip = date, data_id = date), size = 3, alpha = .7) +
  scale_color_manual(values = c("#EFAC00", "#9C55E3"), guide = "none") +
  ggtitle("TfL bike sharing trends by *<b style='color:#B48200;'>day</b>* and *<b style='color:#663399;'>night</b>*") +
  theme(plot.title = ggtext::element_markdown()) +
  ggforce::geom_mark_hull(
    aes(label = "Tube Network Strikes 2015", filter = count > 40000),
    description = "Commuters had to deal with severe disruptions in public transport on July 9 and August 6",
    color = "black", label.family = "Asap SemiCondensed", label.fontsize = c(18, 14)
  )

ggiraph::girafe(
  ggobj = p2, width_svg = 12, height_svg = 7,
  options = list(
    ggiraph::opts_tooltip(use_fill = TRUE), 
    ggiraph::opts_hover(css = "fill:black;stroke:black;stroke-width:8px;opacity:1;"),
    ggiraph::opts_hover_inv(css = "opacity:0.2;")
  )
)


## -----------------------------------------------------------------------------
## THAT'S IT, FOLKS! -----------------------------------------------------------
## -----------------------------------------------------------------------------