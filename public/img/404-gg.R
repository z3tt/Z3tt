library(tidyverse)
library(extrafont)
library(viridis)

tibble(x = c(34, 100, 166) , y = rep(60, 3), a = c("4", "0", "4"), b = 1:3) |> 
  ggplot(aes(x, y)) + 
  geom_text(aes(label = a, color = b), size = 220, family = "Roboto Mono", fontface = "bold") +
  annotate("text", x = 100, y = 10, label = "Error: Can't find page in `.data`.", size = 18, family = "Roboto Mono") +
  scale_color_viridis(option = "inferno", begin = 0.15, end = 0.95, guide = F, direction = -1) +
  scale_x_continuous(limits = c(0, 200)) +  
  scale_y_continuous(limits = c(0, 100)) +
  theme_bw(base_size = 30) +
  theme(#plot.background = element_rect(fill = "grey20", color = "transparent"),
        axis.title = element_text(family = "Poppins", face = "bold"),
        axis.text = element_text(family = "Roboto Mono"))#,
        #axis.ticks = element_line(color = "grey92"),
        #panel.border = element_rect(color = "grey92"))

ggsave("./static/img/404-gg.png", width = 17, height = 10, dpi = 750)
