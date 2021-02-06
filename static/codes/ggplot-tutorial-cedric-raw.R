############################################################################
#                                                                          #
#        Code for "A ggplot2 Tutorial for Beautiful Plotting in R"         #
#             https://cedricscherer.netlify.app/2019/08/05/                #
#             a-ggplot2-tutorial-for-beautiful-plotting-in-r               #
#                                                                          #
#       Cédric Scherer (@CedScherer | cedricphilippscherer@gmail.com)      #
#                        Last Update: 2020-12-02                           #
#                                                                          #
############################################################################

## install CRAN packages
## install.packages(c("tidyverse", "colorspace", "corrr",  "cowplot",
##                    "ggdark", "ggforce", "ggrepel", "ggridges", "ggsci",
##                    "ggtext", "ggthemes", "grid", "gridExtra", "patchwork",
##                    "rcartocolor", "scico", "showtext", "shiny",
##                    "plotly", "highcharter", "echarts4r"))
## 
## install from GitHub since not on CRAN
## devtools::install_github("JohnCoene/charter")

chic <- readr::read_csv("https://raw.githubusercontent.com/Z3tt/R-Tutorials/master/ggplot2/chicago-nmmaps.csv")
tibble::glimpse(chic)
head(chic, 10)

#library(ggplot2)
library(tidyverse)

(g <- ggplot(chic, aes(x = date, y = temp)))

g + geom_point()

g + geom_line()

g + geom_line() + geom_point()

g + geom_point(color = "firebrick", shape = "diamond", size = 2)

g + geom_point(color = "firebrick", shape = "diamond", size = 2) +
  geom_line(color = "firebrick", linetype = "dotted", size = .3)

theme_set(theme_bw())

g + geom_point(color = "firebrick")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  xlab("Year") +
  ylab("Temperature (°F)")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = expression(paste("Temperature (", degree ~ F, ")"^"(Hey, why should we use metric units?!)")))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.title.x = element_text(vjust = 0, size = 15),
        axis.title.y = element_text(vjust = 2, size = 15))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.title.x = element_text(margin = margin(t = 10), size = 15),
        axis.title.y = element_text(margin = margin(r = 10), size = 15))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.title = element_text(size = 15, color = "firebrick", 
                                  face = "italic"))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.title.x = element_text(color = "sienna", size = 15),
        axis.title.y = element_text(color = "orangered", size = 15))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.title = element_text(color = "sienna", size = 15),
        axis.title.y = element_text(color = "orangered", size = 15))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.title = element_text(color = "sienna", size = 15, face = "bold"),
        axis.title.y = element_text(face = "bold.italic"))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.text = element_text(color = "dodgerblue", size = 12),
        axis.text.x = element_text(face = "italic"))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.text.x = element_text(angle = 50, vjust = 1, hjust = 1, size = 12))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.ticks.y = element_blank(),
        axis.text.y = element_blank())

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = NULL, y = "")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  ylim(c(0, 50))





library(tidyverse)

chic_high <- dplyr::filter(chic, temp > 25, o3 > 20)

ggplot(chic_high, aes(x = temp, y = o3)) +
  geom_point(color = "darkcyan") +
  labs(x = "Temperature higher than 25°F",
       y = "Ozone higher than 20 ppb") +
  expand_limits(x = 0, y = 0)

library(tidyverse)

chic_high <- dplyr::filter(chic, temp > 25, o3 > 20)

ggplot(chic_high, aes(x = temp, y = o3)) +
  geom_point(color = "darkcyan") +
  labs(x = "Temperature higher than 25°F",
       y = "Ozone higher than 20 ppb") +
  coord_cartesian(xlim = c(0, NA), ylim = c(0, NA))

ggplot(chic_high, aes(x = temp, y = o3)) +
  geom_point(color = "darkcyan") +
  labs(x = "Temperature higher than 25°F",
       y = "Ozone higher than 20 ppb") +
  expand_limits(x = 0, y = 0) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_continuous(expand = c(0, 0)) +
  coord_cartesian(clip = "off")

ggplot(chic, aes(x = temp, y = temp + rnorm(nrow(chic), sd = 20))) +
  geom_point(color = "sienna") +
  labs(x = "Temperature (°F)", y = "Temperature (°F) + random noise") +
  xlim(c(0, 100)) + ylim(c(0, 150)) +
  coord_fixed()

ggplot(chic, aes(x = temp, y = temp + rnorm(nrow(chic), sd = 20))) +
  geom_point(color = "sienna") +
  labs(x = "Temperature (°F)", y = "Temperature (°F) + random noise") +
  xlim(c(0, 100)) + ylim(c(0, 150)) +
  coord_fixed(ratio = 1/5)

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = NULL) +
  scale_y_continuous(label = function(x) {return(paste(x, "Degrees Fahrenheit"))})  

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  ggtitle("Temperatures in Chicago")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)",
       title = "Temperatures in Chicago",
       subtitle = "Seasonal pattern of daily temperatures from 1997 to 2001",
       caption = "Data: NMMAPS",
       tag = "Fig. 1")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)",
       title = "Temperatures in Chicago") +
  theme(plot.title = element_text(face = "bold",
                                  margin = margin(10, 0, 10, 0),
                                  size = 14))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +  
  labs(x = "Year", y = NULL,
       title = "Temperatures in Chicago",
       caption = "Data: NMMAPS") +
  theme(plot.title = element_text(hjust = 1, size = 16, face = "bold.italic"))

(g <- ggplot(chic, aes(x = date, y = temp)) +
    geom_point(color = "firebrick") +  
    scale_y_continuous(label = function(x) {return(paste(x, "Degrees Fahrenheit"))}) +
    labs(x = "Year", y = NULL,
         title = "Temperatures in Chicago between 1997 and 2001 in Degrees Fahrenheit",
         caption = "Data: NMMAPS") +
    theme(plot.title = element_text(size = 14, face = "bold.italic"),
          plot.caption = element_text(hjust = 0)))

g + theme(plot.title.position = "plot",
          plot.caption.position = "plot")

library(showtext)
font_add_google("Playfair Display", ## name of Google font
                "Playfair")  ## name that will be used in R
font_add_google("Bangers", "Bangers")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)",
       title = "Temperatures in Chicago",
       subtitle = "Daily temperatures in °F from 1997 to 2001") +
  theme(plot.title = element_text(family = "Bangers", hjust = .5, size = 25),
        plot.subtitle = element_text(family = "Playfair", hjust = .5, size = 15))

font_add_google("Roboto Condensed", "Roboto Condensed")
theme_set(theme_bw(base_size = 12, base_family = "Roboto Condensed"))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  ggtitle("Temperatures in Chicago\nfrom 1997 to 2001") +
  theme(plot.title = element_text(lineheight = .8, size = 16))

ggplot(chic,
       aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)")

ggplot(chic,
       aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.position = "none")

ggplot(chic,
       aes(x = date, y = temp,
           color = season, shape = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  guides(color = "none")

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.title = element_blank())

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  scale_color_discrete(name = NULL)

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  labs(color = NULL)

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.position = "top")

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)",
       color = NULL) +
  theme(legend.position = c(.15, .15),
        legend.background = element_rect(fill = "transparent"))

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.position = c(.5, .97),
        legend.background = element_rect(fill = "transparent")) +
  guides(color = guide_legend(direction = "horizontal"))

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.title = element_text(family = "Playfair",
                                    color = "chocolate",
                                    size = 14, face = "bold"))

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)",
       color = "Seasons\nindicated\nby colors:") +
  theme(legend.title = element_text(family = "Playfair",
                                    color = "chocolate",
                                    size = 14, face = "bold"))

## ggplot(chic, aes(x = date, y = temp, color = season))) +
##   geom_point() +
##   labs(x = "Year", y = "Temperature (°F)") +
##   theme(legend.title = element_text(family = "Playfair",
##                                     color = "chocolate",
##                                     size = 14, face = "bold")) +
##   scale_color_discrete(name = "Seasons\nindicated\nby colors:")

chic$season <- 
  factor(chic$season, 
         levels = c("Winter", "Spring", "Summer", "Autumn"))

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)")

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  scale_color_discrete("Seasons:", labels = c("Mar—May", "Jun—Aug",
                                              "Sep—Nov", "Dec—Feb")) +
  theme(legend.title = element_text(family = "Playfair",
                                    color = "chocolate",
                                    size = 14, face = 2))

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.key = element_rect(fill = "darkgoldenrod1"),
        legend.title = element_text(family = "Playfair",
                                    color = "chocolate",
                                    size = 14, face = 2)) +
  scale_color_discrete("Seasons:")

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.key = element_rect(fill = NA),
        legend.title = element_text(color = "chocolate",
                                    size = 14, face = 2)) +
  scale_color_discrete("Seasons:") +
  guides(color = guide_legend(override.aes = list(size = 6)))

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  geom_rug()

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  geom_rug(show.legend = FALSE)

ggplot(chic, aes(x = date, y = o3)) +
  geom_line(color = "gray") +
  geom_point(color = "darkorange2") +
  labs(x = "Year", y = "Ozone")

ggplot(chic, aes(x = date, y = o3)) +
  geom_line(aes(color = "line")) +
  geom_point(aes(color = "points")) +
  labs(x = "Year", y = "Ozone") +
  scale_color_discrete("Type:")

ggplot(chic, aes(x = date, y = o3)) +
  geom_line(aes(color = "line")) +  
  geom_point(aes(color = "points")) +
  labs(x = "Year", y = "Ozone") +
  scale_color_manual(name = NULL,
                     guide = "legend",
                     values = c("points" = "darkorange2",
                                "line" = "gray")) +
  guides(color = guide_legend(override.aes = list(linetype = c(1, 0),
                                                  shape = c(NA, 16))))

ggplot(chic,
       aes(x = date, y = temp, color = temp)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)", color = "Temperature (°F)")

ggplot(chic,
       aes(x = date, y = temp, color = temp)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)", color = "Temperature (°F)") +
  guides(color = guide_legend())

ggplot(chic,
       aes(x = date, y = temp, color = temp)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)", color = "Temperature (°F)") +
  guides(color = guide_bins())

ggplot(chic,
       aes(x = date, y = temp, color = temp)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)", color = "Temperature (°F)") +
  guides(color = guide_colorsteps())

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(panel.background = element_rect(fill = "gray90"),
        panel.grid.major = element_line(color = "gray10", size = .5),
        panel.grid.minor = element_line(color = "gray70", size = .25))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(panel.background = element_rect(fill = "gray90"),
        panel.grid.major = element_line(size = .5, linetype = "dashed"),
        panel.grid.minor = element_line(size = .25, linetype = "dotted"),
        panel.grid.major.x = element_line(color = "red1"),
        panel.grid.major.y = element_line(color = "blue1"),
        panel.grid.minor.x = element_line(color = "red4"),
        panel.grid.minor.y = element_line(color = "blue4"))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(panel.grid.minor = element_blank())

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(panel.grid = element_blank())

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  scale_y_continuous(breaks = seq(0, 100, 10),
                     minor_breaks = seq(0, 100, 2.5))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "#1D8565", size = 2) +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(panel.background = element_rect(fill = "#64D2AA",
                                        color = "#64D2AA", size = 2))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "#1D8565", size = 2) +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(panel.border = element_rect(fill = "#64D2AA99",
                                    color = "#64D2AA", size = 2))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(plot.background = element_rect(fill = "gray60",
                                       color = "gray30", size = 2))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(panel.background = element_rect(fill = NA),
        plot.background = element_rect(fill = "gray60",
                                       color = "gray30", size = 2))

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(plot.background = element_rect(fill = "gray60"),
        plot.margin = unit(c(1, 3, 1, 8), "cm"))

g <- ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "chartreuse4", alpha = .3) +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1))

g + facet_wrap(~ year, nrow = 1)

g + facet_wrap(~ year, nrow = 2)

g + facet_wrap(~ year, ncol = 3) + theme(axis.title.x = element_text(hjust = .15))

g + facet_wrap(~ year, nrow = 2, scales = "free")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "orangered", alpha = .3) +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1)) +
  labs(x = "Year", y = "Temperature (°F)") +
  facet_grid(year ~ season)

g + facet_wrap(year ~ season, nrow = 4, scales = "free_x")

g + facet_wrap(~ year, nrow = 1, scales = "free_x") +
  theme(strip.text = element_text(face = "bold", color = "chartreuse4",
                                  hjust = 0, size = 20),
        strip.background = element_rect(fill = "chartreuse3", linetype = "dotted"))

library(ggtext)
library(rlang)

element_textbox_highlight <- function(..., hi.labels = NULL, hi.fill = NULL,
                                      hi.col = NULL, hi.box.col = NULL, hi.family = NULL) {
  structure(
    c(element_textbox(...),
      list(hi.labels = hi.labels, hi.fill = hi.fill, hi.col = hi.col, hi.box.col = hi.box.col, hi.family = hi.family)
    ),
    class = c("element_textbox_highlight", "element_textbox", "element_text", "element")
  )
}

element_grob.element_textbox_highlight <- function(element, label = "", ...) {
  if (label %in% element$hi.labels) {
    element$fill <- element$hi.fill %||% element$fill
    element$colour <- element$hi.col %||% element$colour
    element$box.colour <- element$hi.box.col %||% element$box.colour
    element$family <- element$hi.family %||% element$family
  }
  NextMethod()
}

g + facet_wrap(year ~ season, nrow = 4, scales = "free_x") +
  theme(
    strip.background = element_blank(),
    strip.text = element_textbox_highlight(
      family = "Playfair", size = 12, face = "bold",
      fill = "white", box.color = "chartreuse4", color = "chartreuse4",
      halign = .5, linetype = 1, r = unit(5, "pt"), width = unit(1, "npc"),
      padding = margin(5, 0, 3, 0), margin = margin(0, 1, 3, 1),
      hi.labels = c("1997", "1998", "1999", "2000"),
      hi.fill = "chartreuse4", hi.box.col = "black", hi.col = "white"
    )
  )

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(aes(color = season == "Summer"), alpha = .3) +
  labs(x = "Year", y = "Temperature (°F)") +
  facet_wrap(~ season, nrow = 1) +
  scale_color_manual(values = c("gray40", "firebrick"), guide = "none") +
  theme(
    axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1),
    strip.background = element_blank(),
    strip.text = element_textbox_highlight(
      size = 12, face = "bold",
      fill = "white", box.color = "white", color = "gray40",
      halign = .5, linetype = 1, r = unit(0, "pt"), width = unit(1, "npc"),
      padding = margin(2, 0, 1, 0), margin = margin(0, 1, 3, 1),
      hi.labels = "Summer", hi.family = "Bangers",
      hi.fill = "firebrick", hi.box.col = "firebrick", hi.col = "white"
    )
  )

p1 <- ggplot(chic, aes(x = date, y = temp,
                       color = season)) +
  geom_point() +
  geom_rug() +
  labs(x = "Year", y = "Temperature (°F)")

p2 <- ggplot(chic, aes(x = date, y = o3)) +
  geom_line(color = "gray") +
  geom_point(color = "darkorange2") +
  labs(x = "Year", y = "Ozone")

library(patchwork)
p1 + p2

p1 / p2

(g + p2) / p1

library(cowplot)
plot_grid(plot_grid(g, p1), p2, ncol = 1)

library(gridExtra)
grid.arrange(g, p1, p2,
             layout_matrix = rbind(c(1, 2), c(3, 3)))

layout <- "
AABBBB#
AACCDDE
##CCDD#
##CC###
"

p2 + p1 + p1 + g + p2 +
  plot_layout(design = layout)

ggplot(chic, aes(year)) +
  geom_bar(aes(fill = season), color = "grey", size = 2) +
  labs(x = "Year", y = "Observations", fill = "Season:")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "steelblue", size = 2) +
  labs(x = "Year", y = "Temperature (°F)")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(shape = 21, size = 2, stroke = 1,
             color = "#3cc08f", fill = "#c08f3c") +
  labs(x = "Year", y = "Temperature (°F)")

(ga <- ggplot(chic, aes(x = date, y = temp, color = season)) +
    geom_point() +
    labs(x = "Year", y = "Temperature (°F)", color = NULL))

ga + scale_color_manual(values = c("dodgerblue4",
                                   "darkolivegreen4",
                                   "darkorchid3",
                                   "goldenrod1"))

ga + scale_color_brewer(palette = "Set1")

library(ggthemes)
ga + scale_color_tableau()

library(ggsci)
g1 <- ga + scale_color_aaas()
g2 <- ga + scale_color_npg()

library(patchwork)
(g1 + g2) * theme(legend.position = "top")

gb <- ggplot(chic, aes(x = date, y = temp, color = temp)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)", color = "Temperature (°F):")

gb + scale_color_continuous()

## gb + scale_color_gradient()

mid <- mean(chic$temp)  ## midpoint

gb + scale_color_gradient2(midpoint = mid)

gb + scale_color_gradient(low = "darkkhaki",
                          high = "darkgreen")

gb + scale_color_gradient2(midpoint = mid, low = "#dd8a0b",
                           mid = "grey92", high = "#32a676")

p1 <- gb + scale_color_viridis_c() + ggtitle("'viridis' (default)")
p2 <- gb + scale_color_viridis_c(option = "inferno") + ggtitle("'inferno'")
p3 <- gb + scale_color_viridis_c(option = "plasma") + ggtitle("'plasma'")
p4 <- gb + scale_color_viridis_c(option = "cividis") + ggtitle("'cividis'")

library(patchwork)
(p1 + p2 + p3 + p4) * theme(legend.position = "bottom")

ga + scale_color_viridis_d(guide = "none")

library(rcartocolor)
g1 <- gb + scale_color_carto_c(palette = "BurgYl")
g2 <- gb + scale_color_carto_c(palette = "Earth")

(g1 + g2) * theme(legend.position = "bottom")

library(scico)
g1 <- gb + scale_color_scico(palette = "berlin")
g2 <- gb + scale_color_scico(palette = "hawaii", direction = -1)

(g1 + g2) * theme(legend.position = "bottom")

library(ggdark)

ggplot(chic, aes(date, temp, color = temp)) +
  geom_point(size = 5) +
  geom_point(aes(color = temp,
                 color = after_scale(invert_color(color))),
             size = 2) +
  scale_color_scico(palette = "hawaii", guide = "none") +
  labs(x = "Year", y = "Temperature (°F)")

library(colorspace)

ggplot(chic, aes(date, temp)) +
  geom_boxplot(aes(color = season,
                   fill = after_scale(desaturate(lighten(color, .6), .6))),
               size = 1) +
  scale_color_brewer(palette = "Dark2", guide = "none") +
  labs(x = "Year", y = "Temperature (°F)")



library(ggthemes)

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  ggtitle("Ups and Downs of Chicago's Daily Temperatures") +
  theme_economist() +
  scale_color_economist(name = NULL)

library(dplyr)
chic_2000 <- filter(chic, year == 2000)

ggplot(chic_2000, aes(x = temp, y = o3)) +
  geom_point() +
  labs(x = "Temperature (°F)", y = "Ozone") +
  ggtitle("Temperature and Ozone Levels During the Year 2000 in Chicago") +
  theme_tufte()

library(hrbrthemes)

ggplot(chic, aes(x = temp, y = o3)) +
  geom_point(aes(color = dewpoint), show.legend = FALSE) +
  labs(x = "Temperature (°F)", y = "Ozone") +
  ggtitle("Temperature and Ozone Levels in Chicago")

update_geom_defaults("point", list(colour = "black"))

g <- ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "firebrick") +
  labs(x = "Year", y = "Temperature (°F)",
       title = "Temperatures in Chicago")

g + theme_bw(base_family = "Playfair")

g + theme_bw(base_size = 30, base_family = "Roboto Condensed")

g + theme_bw(base_line_size = 1, base_rect_size = 1)

theme_gray

theme_custom <- function (base_size = 12, base_family = "Roboto Condensed") {
  half_line <- base_size/2
  theme(
    line = element_line(color = "black", size = .5,
                        linetype = 1, lineend = "butt"),
    rect = element_rect(fill = "white", color = "black",
                        size = .5, linetype = 1),
    text = element_text(family = base_family, face = "plain",
                        color = "black", size = base_size,
                        lineheight = .9, hjust = .5, vjust = .5,
                        angle = 0, margin = margin(), debug = FALSE),
    axis.line = element_blank(),
    axis.line.x = NULL,
    axis.line.y = NULL,
    axis.text = element_text(size = base_size * 1.1, color = "gray30"),
    axis.text.x = element_text(margin = margin(t = .8 * half_line/2),
                               vjust = 1),
    axis.text.x.top = element_text(margin = margin(b = .8 * half_line/2),
                                   vjust = 0),
    axis.text.y = element_text(margin = margin(r = .8 * half_line/2),
                               hjust = 1),
    axis.text.y.right = element_text(margin = margin(l = .8 * half_line/2),
                                     hjust = 0),
    axis.ticks = element_line(color = "gray30", size = .7),
    axis.ticks.length = unit(half_line / 1.5, "pt"),
    axis.ticks.length.x = NULL,
    axis.ticks.length.x.top = NULL,
    axis.ticks.length.x.bottom = NULL,
    axis.ticks.length.y = NULL,
    axis.ticks.length.y.left = NULL,
    axis.ticks.length.y.right = NULL,
    axis.title.x = element_text(margin = margin(t = half_line),
                                vjust = 1, size = base_size * 1.3,
                                face = "bold"),
    axis.title.x.top = element_text(margin = margin(b = half_line),
                                    vjust = 0),
    axis.title.y = element_text(angle = 90, vjust = 1,
                                margin = margin(r = half_line),
                                size = base_size * 1.3, face = "bold"),
    axis.title.y.right = element_text(angle = -90, vjust = 0,
                                      margin = margin(l = half_line)),
    legend.background = element_rect(color = NA),
    legend.spacing = unit(.4, "cm"),
    legend.spacing.x = NULL,
    legend.spacing.y = NULL,
    legend.margin = margin(.2, .2, .2, .2, "cm"),
    legend.key = element_rect(fill = "gray95", color = "white"),
    legend.key.size = unit(1.2, "lines"),
    legend.key.height = NULL,
    legend.key.width = NULL,
    legend.text = element_text(size = rel(.8)),
    legend.text.align = NULL,
    legend.title = element_text(hjust = 0),
    legend.title.align = NULL,
    legend.position = "right",
    legend.direction = NULL,
    legend.justification = "center",
    legend.box = NULL,
    legend.box.margin = margin(0, 0, 0, 0, "cm"),
    legend.box.background = element_blank(),
    legend.box.spacing = unit(.4, "cm"),
    panel.background = element_rect(fill = "white", color = NA),
    panel.border = element_rect(color = "gray30",
                                fill = NA, size = .7),
    panel.grid.major = element_line(color = "gray90", size = 1),
    panel.grid.minor = element_line(color = "gray90", size = .5,
                                    linetype = "dashed"),
    panel.spacing = unit(base_size, "pt"),
    panel.spacing.x = NULL,
    panel.spacing.y = NULL,
    panel.ontop = FALSE,
    strip.background = element_rect(fill = "white", color = "gray30"),
    strip.text = element_text(color = "black", size = base_size),
    strip.text.x = element_text(margin = margin(t = half_line,
                                                b = half_line)),
    strip.text.y = element_text(angle = -90,
                                margin = margin(l = half_line,
                                                r = half_line)),
    strip.text.y.left = element_text(angle = 90),
    strip.placement = "inside",
    strip.placement.x = NULL,
    strip.placement.y = NULL,
    strip.switch.pad.grid = unit(0.1, "cm"),
    strip.switch.pad.wrap = unit(0.1, "cm"),
    plot.background = element_rect(color = NA),
    plot.title = element_text(size = base_size * 1.8, hjust = .5,
                              vjust = 1, face = "bold",
                              margin = margin(b = half_line * 1.2)),
    plot.title.position = "panel",
    plot.subtitle = element_text(size = base_size * 1.3,
                                 hjust = .5, vjust = 1,
                                 margin = margin(b = half_line * .9)),
    plot.caption = element_text(size = rel(0.9), hjust = 1, vjust = 1,
                                margin = margin(t = half_line * .9)),
    plot.caption.position = "panel",
    plot.tag = element_text(size = rel(1.2), hjust = .5, vjust = .5),
    plot.tag.position = "topleft",
    plot.margin = margin(base_size, base_size, base_size, base_size),
    complete = TRUE
  )
}

theme_set(theme_custom())

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() + labs(x = "Year", y = "Temperature (°F)") + guides(color = FALSE)

theme_custom <- theme_update(panel.background = element_rect(fill = "gray60"))

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point() + labs(x = "Year", y = "Temperature (°F)") + guides(color = FALSE)

theme_custom <- theme_update(panel.background = element_rect(fill = "white"),
                             panel.grid.major = element_line(size = .5),
                             panel.grid.minor = element_blank())

ggplot(chic, aes(x = date, y = temp, color = o3)) +
  geom_point() +
  geom_hline(yintercept = c(0, 73)) +
  labs(x = "Year", y = "Temperature (°F)")

g <- ggplot(chic, aes(x = temp, y = dewpoint)) +
  geom_point(color = "dodgerblue", alpha = .5) +
  labs(x = "Temperature (°F)", y = "Dewpoint")

g +
  geom_vline(aes(xintercept = median(temp)), size = 1.5,
             color = "firebrick", linetype = "dashed") +
  geom_hline(aes(yintercept = median(dewpoint)), size = 1.5,
             color = "firebrick", linetype = "dashed")

reg <- lm(dewpoint ~ temp, data = chic)

g +
  geom_abline(intercept = coefficients(reg)[1],
              slope = coefficients(reg)[2],
              color = "darkorange2", size = 1.5) +
  labs(title = paste0("y = ", round(coefficients(reg)[2], 2),
                      " * x + ", round(coefficients(reg)[1], 2)))

g +
  ## vertical line
  geom_linerange(aes(x = 50, ymin = 20, ymax = 55),
                 color = "steelblue", size = 2) +
  ## horizontal line
  geom_linerange(aes(xmin = -Inf, xmax = 25, y = 0),
                 color = "red", size = 1)

g +
  geom_segment(aes(x = 50, xend = 75,
                   y = 20, yend = 45),
               color = "purple", size = 2)

g +
  geom_curve(aes(x = 0, y = 60, xend = 75, yend = 0),
             size = 2, color = "tan") +
  geom_curve(aes(x = 0, y = 60, xend = 75, yend = 0),
             curvature = -0.7, angle = 45,
             color = "darkgoldenrod1", size = 1) +
  geom_curve(aes(x = 0, y = 60, xend = 75, yend = 0),
             curvature = 0, size = 1.5)

g +
  geom_curve(aes(x = 0, y = 60, xend = 75, yend = 0),
             size = 2, color = "tan",
             arrow = arrow(length = unit(0.07, "npc"))) +
  geom_curve(aes(x = 5, y = 55, xend = 70, yend = 5),
             curvature = -0.7, angle = 45,
             color = "darkgoldenrod1", size = 1,
             arrow = arrow(length = unit(0.03, "npc"),
                           type = "closed",
                           ends = "both"))

set.seed(2020)

library(dplyr)
sample <- chic %>%
  dplyr::group_by(season) %>%
  dplyr::sample_frac(0.01)

## code without pipes:
## sample <- sample_frac(group_by(chic, season), .01)

ggplot(sample, aes(x = date, y = temp, color = season)) +
  geom_point() +
  geom_label(aes(label = season), hjust = .5, vjust = -.5) +
  labs(x = "Year", y = "Temperature (°F)") +
  xlim(as.Date(c('1997-01-01', '2000-12-31'))) +
  ylim(c(0, 90)) +
  theme(legend.position = "none")

ggplot(sample, aes(x = date, y = temp, color = season)) +
  geom_point() +
  geom_text(aes(label = season), fontface = "bold", 
            hjust = .5, vjust = -.25) +
  labs(x = "Year", y = "Temperature (°F)") +
  xlim(as.Date(c('1997-01-01', '2000-12-31'))) +
  ylim(c(0, 90)) +
  theme(legend.position = "none")

library(ggrepel)

ggplot(sample, aes(x = date, y = temp, color = season)) +
  geom_point() +
  geom_label_repel(aes(label = season), fontface = "bold") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.position = "none")

ggplot(sample, aes(x = date, y = temp)) +
  geom_point(data = chic, size = .5) +
  geom_point(aes(color = season), size = 1.5) +
  geom_label_repel(aes(label = season, fill = season), 
                   color = "white", fontface = "bold",
                   segment.color = "grey30") +
  labs(x = "Year", y = "Temperature (°F)") +
  theme(legend.position = "none")

g <- 
  ggplot(chic, aes(x = temp, y = dewpoint)) +
  geom_point(alpha = .5) +
  labs(x = "Temperature (°F)", y = "Dewpoint")

g +
  geom_text(aes(x = 25, y = 60,
                label = "This is an useful annotation"))

g +
  geom_text(aes(x = 25, y = 60,
                label = "This is an useful annotation"),
            stat = "unique")

g + 
  geom_text(aes(x = 25, y = 60,
                label = "This is an useful annotation"),
            stat = "unique", family = "Bangers",
            size = 7, color = "darkcyan")

ann <- data.frame(
  o3 = 30,
  temp = 20,
  season = factor("Summer", levels = levels(chic$season)),
  label = "Here is enough space\nfor some annotations."
)

g <- 
  ggplot(chic, aes(x = o3, y = temp)) +
  geom_point() +
  labs(x = "Ozone", y = "Temperature (°F)")

g +
  geom_text(data = ann, aes(label = label),
            size = 7, fontface = "bold",
            family = "Roboto Condensed") +
  facet_wrap(~season)

g + 
  geom_text(aes(x = 23, y = 97, 
                label = "This is not an useful annotation"),
            size = 5, fontface = "bold") +
  scale_y_continuous(limits = c(NA, 100)) +
  facet_wrap(~season, scales = "free_x")

library(tidyverse)
(ann <-
    chic %>% 
    group_by(season) %>% 
    summarize(o3 = min(o3, na.rm = TRUE) + 
                (max(o3, na.rm = TRUE) - min(o3, na.rm = TRUE)) / 2))

ann

g + 
  geom_text(data = ann,
            aes(x = o3, y = 97, 
                label = "This is an useful annotation"), 
            size = 5, fontface = "bold") +
  scale_y_continuous(limits = c(NA, 100)) +
  facet_wrap(~season, scales = "free_x")

library(grid)
my_grob <- grobTree(textGrob("This text stays in place!",
                             x = .1, y = .9, hjust = 0,
                             gp = gpar(col = "black",
                                       fontsize = 15,
                                       fontface = "bold")))

g +
  annotation_custom(my_grob) +
  facet_wrap(~season, scales = "free_x") +
  scale_y_continuous(limits = c(NA, 100))

library(ggtext)

lab_md <- "This plot shows **temperature** in *°F* versus **ozone level** in *ppm*"

g + 
  geom_richtext(aes(x = 35, y = 3, label = lab_md),
                stat = "unique")

lab_html <- "&#9733; This plot shows <b style='color:red;'>temperature</b> in <i>°F</i> versus <b style='color:blue;'>ozone level</b>in <i>ppm</i> &#9733;"

g + 
  geom_richtext(aes(x = 33, y = 3, label = lab_html),
                stat = "unique")

g + 
  geom_richtext(aes(x = 10, y = 25, label = lab_md),
                stat = "unique", angle = 30, 
                color = "white", fill = "steelblue", 
                label.color = NA, hjust = 0, vjust = 0,
                family = "Playfair Display")

lab_long <- "**Lorem ipsum dolor**<br><i style='font-size:8pt;color:red;'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</i>"

g + 
  geom_textbox(aes(x = 40, y = 10, label = lab_long), 
               width = unit(15, "lines"), stat = "unique") 

ggplot(chic, aes(x = season, y = o3)) +
  geom_boxplot(fill = "indianred") +
  labs(x = "Season", y = "Ozone") +
  coord_flip()

ggplot(chic, aes(x = o3, y = season)) +
  geom_boxplot(fill = "indianred", orientation = "y") +
  labs(x = "Ozone", y = "Season")

ggplot(chic, aes(x = temp, y = o3)) +
  geom_point() +
  labs(x = "Temperature (°F)", y = "Ozone Level") +
  scale_x_continuous(breaks = seq(0, 80, by = 20)) +
  coord_fixed(ratio = 1)

ggplot(chic, aes(x = temp, y = o3)) +
  geom_point() +
  labs(x = "Temperature (°F)", y = "Ozone Level") +
  scale_x_continuous(breaks = seq(0, 80, by = 20)) +
  coord_fixed(ratio = 1/3) +
  theme(plot.background = element_rect(fill = "grey80"))

ggplot(chic, aes(x = date, y = temp, color = o3)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  scale_y_reverse()

## the default
ggplot(chic, aes(x = temp, y = season)) +
  geom_jitter(aes(color = season),
              orientation = "y", show.legend = FALSE) +
  labs(x = "Temperature (°F)", y = NULL)

library(forcats)

ggplot(chic, aes(x = temp, y = fct_rev(season))) +
  geom_jitter(aes(color = season),
              orientation = "y", show.legend = FALSE) +
  labs(x = "Temperature (°F)", y = NULL)

ggplot(chic, aes(x = date, y = temp, color = o3)) +
  geom_point() +
  labs(x = "Year", y = "Temperature (°F)") +
  scale_y_log10(lim = c(0.1, 100))

library(tidyverse)

chic %>%
  dplyr::group_by(season) %>%
  dplyr::summarize(o3 = median(o3)) %>%
  ggplot(aes(x = season, y = o3)) +
  geom_col(aes(fill = season), color = NA) +
  labs(x = "", y = "Median Ozone Level") +
  coord_polar() +
  guides(fill = FALSE)

chic_sum <-
  chic %>%
  dplyr::mutate(o3_avg = median(o3)) %>%
  dplyr::filter(o3 > o3_avg) %>%
  dplyr::mutate(n_all = n()) %>%
  dplyr::group_by(season) %>%
  dplyr::summarize(rel = n() / unique(n_all))

ggplot(chic_sum, aes(x = "", y = rel)) +
  geom_col(aes(fill = season), width = 1, color = NA) +
  labs(x = "", y = "Proportion of Days Exceeding\nthe Median Ozone Level") +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Set1", name = "Season:") +
  theme(axis.ticks = element_blank(),
        panel.grid = element_blank())

ggplot(chic_sum, aes(x = "", y = rel)) +
  geom_col(aes(fill = season), width = 1, color = NA) +
  labs(x = "", y = "Proportion of Days Exceeding\nthe Median Ozone Level") +
  #coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Set1", name = "Season:") +
  theme(axis.ticks = element_blank(),
        panel.grid = element_blank())

g <- 
  ggplot(chic, aes(x = season, y = o3,
                   color = season)) +
  labs(x = "Season", y = "Ozone") +
  scale_color_brewer(palette = "Dark2", guide = "none")

g + geom_boxplot()

g + geom_point()

g + geom_point(alpha = .1)

g + geom_jitter(width = .3, alpha = .5)

g + geom_violin(fill = "gray80", size = 1, alpha = .5)

g + geom_violin(fill = "gray80", size = 1, alpha = .5) +
  geom_jitter(alpha = .25, width = .3) +
  coord_flip()

library(ggforce)

g + geom_violin(fill = "gray80", size = 1, alpha = .5) +
  geom_sina(alpha = .25) +
  coord_flip()

g + geom_violin(aes(fill = season), size = 1, alpha = .5) +
  geom_boxplot(outlier.alpha = 0, coef = 0,
               color = "gray40", width = .2) +
  scale_fill_brewer(palette = "Dark2", guide = "none") +
  coord_flip()

ggplot(chic, aes(x = date, y = temp, 
                 color = season)) +
  geom_point(show.legend = FALSE) +
  geom_rug(show.legend = FALSE) +
  labs(x = "Year", y = "Temperature (°F)")

ggplot(chic, aes(x = date, y = temp, color = season)) +
  geom_point(show.legend = FALSE) +
  geom_rug(sides = "r", alpha = .3, show.legend = FALSE) +
  labs(x = "Year", y = "Temperature (°F)")

library(tidyverse)

corm <- 
  chic %>%
  select(death, temp, dewpoint, pm10, o3) %>% 
  corrr::correlate(diagonal = 1) %>%
  corrr::shave(upper = FALSE) 

corm

corm <- corm %>%
  pivot_longer(
    cols = -rowname, 
    names_to = "colname", 
    values_to = "corr"
  ) %>% 
  mutate(rowname = fct_inorder(rowname),
         colname = fct_inorder(colname))

corm

ggplot(corm, aes(rowname, fct_rev(colname), 
                 fill = corr)) + 
  geom_tile() + 
  geom_text(aes(label = round(corr, 2))) +
  coord_fixed() +
  labs(x = NULL, y = NULL)

ggplot(corm, aes(rowname, fct_rev(colname), 
                 fill = corr)) + 
  geom_tile() + 
  geom_text(aes(
    label = format(round(corr, 2), nsmall = 2),
    color = abs(corr) < .75
  )) +
  coord_fixed(expand = FALSE) +
  scale_color_manual(values = c("white", "black"), 
                     guide = "none") +
  scale_fill_distiller(
    palette = "PuOr", na.value = "white",
    direction = 1, limits = c(-1, 1)
  ) + 
  labs(x = NULL, y = NULL) +
  theme(panel.border = element_rect(color = NA, fill = NA),
        legend.position = c(.85, .8))

ggplot(chic, aes(temp, o3)) +
  geom_density_2d() +
  labs(x = "Temperature (°F)", x = "Ozone Level")

ggplot(chic, aes(temp, o3)) +
  geom_density_2d_filled(show.legend = FALSE) +
  coord_cartesian(expand = FALSE) +
  labs(x = "Temperature (°F)", x = "Ozone Level")

## interpolate data
library(akima)
fld <- with(chic, interp(x = temp, y = o3, z = dewpoint))

## prepare data in long format
library(reshape2)
df <- melt(fld$z, na.rm = TRUE)
names(df) <- c("x", "y", "Dewpoint")

g <- ggplot(data = df, aes(x = x, y = y, z = Dewpoint))  +
  labs(x = "Temperature (°F)", y = "Ozone Level", 
       color = "Dewpoint")

g + stat_contour(aes(color = ..level.., fill = Dewpoint))

g + geom_tile(aes(fill = Dewpoint)) +
  scale_fill_viridis_c(option = "inferno")

g + geom_tile(aes(fill = Dewpoint)) +
  stat_contour(color = "white", size = .7, bins = 5) +
  scale_fill_viridis_c()

ggplot(chic, aes(temp, o3)) +
  geom_hex() +
  scale_fill_distiller(palette = "YlOrRd", direction = 1) +
  labs(x = "Temperature (°F)", y = "Ozone Level")

ggplot(chic, aes(temp, o3)) +
  geom_hex(aes(color = ..count..)) +
  scale_fill_distiller(palette = "YlOrRd", direction = 1) +
  scale_color_distiller(palette = "YlOrRd", direction = 1) +
  labs(x = "Temperature (°F)", y = "Ozone Level")

ggplot(chic, aes(temp, o3)) +
  geom_hex(color = "grey") +
  scale_fill_distiller(palette = "YlOrRd", direction = 1) +
  labs(x = "Temperature (°F)", y = "Ozone Level")

ggplot(chic, aes(temp, o3, fill = ..density..)) +
  geom_hex(bins = 50, color = "grey") +
  scale_fill_distiller(palette = "YlOrRd", direction = 1) +
  labs(x = "Temperature (°F)", y = "Ozone Level")

ggplot(chic, aes(temp, o3, fill = ..density..)) +
  geom_bin2d(bins = 15, color = "grey") +
  scale_fill_distiller(palette = "YlOrRd", direction = 1) +
  labs(x = "Temperature (°F)", y = "Ozone Level")

library(ggridges)
ggplot(chic, aes(x = temp, y = factor(year))) +
  geom_density_ridges(fill = "gray90") +
  labs(x = "Temperature (°F)", y = "Year")

ggplot(chic, aes(x = temp, y = factor(year), fill = year)) +
  geom_density_ridges(alpha = .8, color = "white",
                      scale = 2.5, rel_min_height = .01) +
  labs(x = "Temperature (°F)", y = "Year") +
  guides(fill = FALSE) +
  theme_ridges()

ggplot(chic, aes(x = temp, y = season, fill = ..x..)) +
  geom_density_ridges_gradient(scale = .9, gradient_lwd = .5,
                               color = "black") +
  scale_fill_viridis_c(option = "plasma", name = "") +
  labs(x = "Temperature (°F)", y = "Season") +
  theme_ridges(font_family = "Roboto Condensed", grid = FALSE)

library(tidyverse)

## only plot extreme season using dplyr from the tidyverse
ggplot(data = filter(chic, season %in% c("Summer", "Winter")),
       aes(x = temp, y = year, fill = paste(year, season))) +
  geom_density_ridges(alpha = .7, rel_min_height = .01,
                      color = "white", from = -5, to = 95) +
  scale_fill_cyclical(breaks = c("1997 Summer", "1997 Winter"),
                      labels = c(`1997 Summer` = "Summer",
                                 `1997 Winter` = "Winter"),
                      values = c("tomato", "dodgerblue"),
                      name = "Season:", guide = "legend") +
  theme_ridges(grid = FALSE) +
  labs(x = "Temperature (°F)", y = "Year")

ggplot(chic, aes(x = temp, y = factor(year), fill = year)) +
  geom_density_ridges(stat = "binline", bins = 25, scale = .9,
                      draw_baseline = FALSE, show.legend = FALSE) +
  theme_minimal() +
  labs(x = "Temperature (°F)", y = "Season")

chic$o3run <- as.numeric(stats::filter(chic$o3, rep(1/30, 30), sides = 2))

ggplot(chic, aes(x = date, y = o3run)) +
  geom_line(color = "chocolate", lwd = .8) +
  labs(x = "Year", y = "Ozone")

ggplot(chic, aes(x = date, y = o3run)) +
  geom_ribbon(aes(ymin = 0, ymax = o3run), 
              fill = "orange", alpha = .4) +
  geom_line(color = "chocolate", lwd = .8) +
  labs(x = "Year", y = "Ozone")

ggplot(chic, aes(x = date, y = o3run)) +
  geom_area(color = "chocolate", lwd = .8, 
            fill = "orange", alpha = .4) +
  labs(x = "Year", y = "Ozone")

chic$mino3 <- chic$o3run - sd(chic$o3run, na.rm = TRUE)
chic$maxo3 <- chic$o3run + sd(chic$o3run, na.rm = TRUE)

ggplot(chic, aes(x = date, y = o3run)) +
  geom_ribbon(aes(ymin = mino3, ymax = maxo3), alpha = .5,
              fill = "darkseagreen3", color = "transparent") +
  geom_line(color = "aquamarine4", lwd = .7) +
  labs(x = "Year", y = "Ozone")

ggplot(chic, aes(x = date, y = temp)) +
  labs(x = "Year", y = "Temperature (°F)") +
  stat_smooth() +
  geom_point(color = "gray40", alpha = .5)

ggplot(chic, aes(x = temp, y = death)) +
  labs(x = "Temperature (°F)", y = "Deaths") +
  stat_smooth(method = "lm", se = FALSE, 
              color = "firebrick", size = 1.3) +
  geom_point(color = "gray40", alpha = .5)

ggplot(chic, aes(x = o3, y = temp))+
  labs(x = "Ozone Level", y = "Temperature (°F)") +
  geom_smooth(
    method = "lm",
    formula = y ~ x + I(x^2) + I(x^3) + I(x^4) + I(x^5),
    color = "black",
    fill = "firebrick"
  ) +
  geom_point(color = "gray40", alpha = .3) 

ggplot(chic, aes(x = o3, y = temp))+
  labs(x = "Ozone Level", y = "Temperature (°F)") +
  geom_smooth(stat = "smooth") + ## the default
  geom_point(color = "gray40", alpha = .3) 

ggplot(chic, aes(x = o3, y = temp))+
  labs(x = "Ozone Level", y = "Temperature (°F)") +
  stat_smooth(geom = "smooth") + ## the default
  geom_point(color = "gray40", alpha = .3) 

cols <- c("darkorange2", "firebrick", "dodgerblue3")

ggplot(chic, aes(x = date, y = temp)) +
  geom_point(color = "gray40", alpha = .3) +
  labs(x = "Year", y = "Temperature (°F)") +
  stat_smooth(aes(col = "1000"), 
              method = "gam", 
              formula = y ~ s(x, k = 1000),
              se = FALSE, size = 1.3) +
  stat_smooth(aes(col = "100"), 
              method = "gam", 
              formula = y ~ s(x, k = 100),
              se = FALSE, size = 1) +
  stat_smooth(aes(col = "10"),
              method = "gam", 
              formula = y ~ s(x, k = 10),
              se = FALSE, size = .8) +
  scale_color_manual(name = "k", values = cols)

## library(shiny)
## runExample("01_hello")

## runExample("04_mpg")

g <- ggplot(chic, aes(date, temp)) +
  geom_line(color = "grey") +
  geom_point(aes(color = season)) +
  scale_color_brewer(palette = "Dark2", guide = "none") +
  labs(x = NULL, y = "Temperature (°F)") +
  theme_bw()

g

library(plotly)

ggplotly(g)

library(ggiraph)

g <- ggplot(chic, aes(date, temp)) +
  geom_line(color = "grey") +
  geom_point_interactive(
    aes(color = season, tooltip = season, data_id = season)
  ) +
  scale_color_brewer(palette = "Dark2", guide = "none") +
  labs(x = NULL, y = "Temperature (°F)") +
  theme_bw()

girafe(ggobj = g)

library(highcharter)

hchart(chic, "scatter", hcaes(x = date, y = temp, group = season))

library(echarts4r)

chic %>% 
  e_charts(date) %>% 
  e_scatter(temp, symbol_size = 7) %>% 
  e_visual_map(temp) %>% 
  e_y_axis(name = "Temperature (°F)") %>% 
  e_legend(FALSE)

library(charter)

chic$date_num <- as.numeric(chic$date)
## doesn't work with class date

chart(data = chic, caes(date_num, temp)) %>%
  c_scatter(caes(color = season, group = season)) %>%
  c_colors(RColorBrewer::brewer.pal(4, name = "Dark2"))
