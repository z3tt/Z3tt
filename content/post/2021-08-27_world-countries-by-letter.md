---
title: "The World's Countries Colored by Their First Letter"
author: "Cédric"
date: 2021-08-27
image: img/banner/world-by-letters-artsy.png
twitterImg: img/banner/world-by-letters-artsy.png
layout: post
showtoc: false
description: "While preparing the mapping section for a Pearson–O'Reilly training, I got the idea to visualize the first letter of each country. And got especially curious about how much landmass each letter covers. Turns out: A, C and R are covering the largest areas!"
tags: ["DataViz", "ggplot2", "design", "maps"]
editor_options:
  chunk_output_type: inline
---

**Next month, I am going to give a live training session for Pearson and O'Reilly called  “Hands-On Data Visualization with ggplot2”. For this course, I want to cover mapping with R and `{ggplot2}` for the first time. While searching for a cool variable to illustrate how to create [choropleth maps](https://www.data-to-viz.com/graph/choropleth.html), I came up with the idea to visualize name of each country. But not the full name—that would be too silly and not insightful at all—but the first letter of each country.**

While drafting the first map, it quickly became obvious that mapping color to all 26 letters (or better 25 letters since there is no country starting with X) is not helpful at all. A quick search showed that there are a few colorful maps, struggling with the same problem ([here](https://www.reddit.com/r/Maps/comments/jfudnt/map_of_the_world_painted_according_to_the_first/) and [here](https://www.reddit.com/r/mapporncirclejerk/comments/oujs8i/if_every_country_that_has_the_same_first_letter/)) or that do not permit to see the complete data by [aggregating rare letters](http://alphabetpassport.com/world.png).

So I quickly came up to use small multiples, which would allow for an easy identification of all countries starting with a particular letter and the landmass covered by these countries. Thanks to `{ggplot2}`’s facet functionality, it was super–easy to turn it into small multiples.


<img src="img/world-by-letters/letter_world_poster.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('img/world-by-letters/letter_world_poster.png', 'blank');"/>
<p><figcaption class="small" align="center" style="color:#8c8c8c;font-style:italic;">The final poster version with the colorful overview map and 25 small maps, one for each letter.</figcaption></p><br>

##### Project Type

* Personal Project

##### Motivation

* Finding a cool variable in the NaturalEarth data set to visualize.
* Curiosity: Which letter covers the largest area, which are rare?

##### Design Choices

* *Small multiples* to allow for direct access of single letters which allows also to add the area covered to each map.
* A *cyclical color palette*; of course, 25 categories are too many but with this approach one can at least identify the range a country falls into.  Color-vision deficiency problems are likely but not problematic thanks to the small multiples.
* I searched through a ton of fonts: I settled on [*Hatton*](https://pangrampangram.com/products/hatton) for the title and letters and [*Chivo*](https://www.omnibus-type.com/fonts/chivo/) with its tabular numbers for the areas and the caption.

##### Data Source

* [NaturalEarth](https://www.naturalearthdata.com/) for the country boundaries via the [`{rnaturalearth}` R package](https://docs.ropensci.org/rnaturalearthdata/)
* Country names from the [CIA World Factbook](https://www.cia.gov/the-world-factbook/), contained in the world data set

##### Tools

* Data: [`{rnaturalearth}`](https://docs.ropensci.org/rnaturalearthdata/)
* Data Preparation: [`{stringr}`](https://stringr.tidyverse.org/) and [`{sf}`](https://r-spatial.github.io/sf/)
* Graphics: [`{ggplot2}`](https://ggplot2.tidyverse.org/); [`{ggtext}`](https://wilkelab.org/ggtext/) for title and caption; [`{patchwork}`](https://patchwork.data-imaginist.com/) for plot composition
* Colors: [Tableau cyclic color palette](https://help.tableau.com/current/pro/desktop/en-us/formatting_create_custom_colors.htm) via the [`{ggthemes}`](https://jrnold.github.io/ggthemes/index.html)

##### Methods

* I had to choose one source for the names; after checking several naming conventions, I settled on those provided by the CIA World Factbook. Why? Because this was the easiest way to get rid of "Republic" and other prefixes and it has a pretty good coverage.
* For each country, I checked if a name is provided by the CIA world Factbook; if not, I used the sovereignty provided by NaturalEarth.
* For each country in the shape file, I extracted the first letter with the help of the [`{stringr}` R package](https://stringr.tidyverse.org/) from the tidyverse.
* For each letter I calculated the area covered with the help of the [`{sf}` package](https://r-spatial.github.io/sf/)
* Plotting was done completely in R (for a list of packages see "Tools").<br>

## Alternative Versions

##### Single Version of the Small Multiples

<img src="https://www.cedricscherer.com/img/world-by-letters/letter_world_facet_top.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/world-by-letters/letter_world_facet_top.png', 'blank');">

<img src="https://www.cedricscherer.com/img/world-by-letters/letter_world_facet_left.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/world-by-letters/letter_world_facet_left.png', 'blank');">


##### Single Version of the Overview Map

<img src="https://www.cedricscherer.com/img/world-by-letters/letter_world_v1.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/world-by-letters/letter_world_v1.png', 'blank');">

<img src="https://www.cedricscherer.com/img/world-by-letters/letter_world_v2.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/world-by-letters/letter_world_v2.png', 'blank');">


## How about the last letter?

[Victor](https://twitter.com/humeursdevictor) asked on Twitter if there is some interesting patterns when looking at the last letter of each country. I had no idea so I went ahead and mapped it. I had to make more assumptions here since several countries in the CIA World Factbook end e.g. with ", Republic of" or something wrapped into parentheses. I decided to remove these bits and pick the last letter of these adjusted CIA World Factbook names.

<img src="https://www.cedricscherer.com/img/world-by-letters/last_letter_world_poster.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/world-by-letters/last_letter_world_poster.png', 'blank');">

<img src="https://www.cedricscherer.com/img/world-by-letters/last_letter_world_v1.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/world-by-letters/last_letter_world_v1.png', 'blank');">

<img src="https://www.cedricscherer.com/img/world-by-letters/last_letter_world_facet_left.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/world-by-letters/last_letter_world_facet_left.png', 'blank');">
