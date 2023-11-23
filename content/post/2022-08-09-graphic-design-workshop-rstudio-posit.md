---
title: '2-Day Workshop on "Graphic Design with ggplot2" at rstudio::conf 2022'
author: "Cédric"
date: 2022-08-09
image: img/banner/rstudiconf-workshop.jpg
twitterImg: img/banner/rstudiconf-workshop.jpg
layout: post
showtoc: false
description: "End of July, I had the honor to teach an in-person ggplot2 workshop at the rstudio::conf in Washington DC. All course resources are available on the course webpage featuring slides, hands-on R codes, recap notes, and exercises including prepared scripts and step-by-step solutions."
tags: ["DataViz", "ggplot2", "rstats", "workshop", "tutorial"]
editor_options:
  chunk_output_type: inline
---

<img src="https://raw.githubusercontent.com/rstudio-conf-2022/ggplot2-graphic-design/main/images/logo.png" style="float:right;padding: 0 0 0 10px;margin: 20px -10px 0 0 " fig-alt="Course Hex Logo" width="175">

**End of July, I had the honor to teach a <a href='https://www.rstudio.com/blog/rstudio-conf-2022-workshops/' style='font-weight:800;'>2-day, in-person workshop on "Graphic Design with ggplot2" at the rstudio::conf(2022)</a> in Washington DC. Invited by RStudio (now named <a href='https://posit.co/' style='font-weight:800;'>Posit</a>), I developed a new course that covers the most important steps and helpful tips to create visually appealing, engaging and complex graphics with ggplot2. The course focused on the main concepts of the grammar of graphics and used hands-on examples to explore ggplot2’s utility to create multi-layered, more complex graphs. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/' style='font-weight:800;'>All course resources are available as open-source material on the course page.</a>**

The course webpage as well ass the slidedecks and the exercises and solutions were developed with the new open-source scientific and technical publishing system <a href='https://quarto.org/' target="_blank">Quarto</a>. The new workshop development was a perfect opportunity to give it a try and the experience was overall wonderful—the <a href='https://revealjs.com/' target="_blank">reveal.js</a> integration for the slides works perfect and allows for a lot of customization. Thanks to Marco Sciaini for helping me setting up the course webpage which was, after learning about a few quirks, a smooth experience as well.

<img src="https://cedricscherer.com/img/rstudioconf-workshop/graphic-design-course-page.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://rstudio-conf-2022.github.io/ggplot2-graphic-design', 'blank');">
<figcaption>The <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design'>course webpage</a> which gives an overview of the course objectives and links to all session and the <a href='https://github.com/rstudio-conf-2022/ggplot2-graphic-design'>GitHub repository</a>.</figcaption>

<iframe class="slide-deck" src="https://rstudio-conf-2022.github.io/ggplot2-graphic-design/materials/01_introduction.html" height="420" width="747" style="border: 1px solid #2e3846;"></iframe>
<figcaption>The slide decks can be hosted as HTML files and thus embedded in the course pages.</figcaption>
  
The workshop is structured in 9 sessions, covering both ggplot2 techniques and general data visualization recommendations:

1. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d1-01_introduction.html' target="_blank">Introduction</a>
2. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d1-02_concepts_pt1.html' target="_blank">Concepts of the ggplot2 Package Pt. 1</a>
3. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d1-05_concepts_pt2.html' target="_blank">Concepts of the ggplot2 Package Pt. 2</a>
4. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d1-09_data_com.html' target="_blank">Data Communication</a>
5. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d2-01_lab_ann.html' target="_blank">Working with Labels & Annotations</a>
6. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d2-03_colorful_graphics.html' target="_blank">Colorful Graphics</a>
7. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d2-04_colors.html' target="_blank">Working with Colors</a>
8. <a href='Working with Layouts & Composition' target="_blank">Working with Layouts and Composition</a>
9. <a href='https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d2-08_project.html' target="_blank">Group Projects</a>


The session pages contain not only the slides but also hands-on R codes, recap notes, exercises including prepared scripts (either as Quarto or Rmarkdown reports) and step-by-step solutions.

<img src="https://cedricscherer.com/img/rstudioconf-workshop/session-example-colors.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://rstudio-conf-2022.github.io/ggplot2-graphic-design/modules/d2-04_colors.html', 'blank');">
<figcaption>The session pages feature slides, session outline, recap and exercises as well as links to the hands-on codes and solutions.</figcaption>

<img src="https://cedricscherer.com/img/rstudioconf-workshop/exercise-code-example-annotations.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://rstudio-conf-2022.github.io/ggplot2-graphic-design/materials/exercises/05_annotations_ex1.html', 'blank');">
<figcaption>The exercises are pre-written Quarto (or Rmarkdown) reports to allow for a quick start and the ability to keep a rendered version of the personal solution.</figcaption>

Here is an overview of all recaps:

#### Concepts of the `{ggplot2}` Package Pt. 1

-   **`{ggplot2}`** is a powerful library for reproducible graphic design
-   the components follow a consistent syntax
-   each ggplot needs at least **data**, some **aesthetics**, and a **layer**
-   we **set** constant propeties outside `aes()`
-   ... and **map** data-related properties inside `aes()`
-   local settings and mappings override global properties
-   grouping allows applying layers for subsets
-   we can store a ggplot object and extend it afterwards
-   we can change the appearance for all plots with `theme_set()` and `theme_update()`
  

#### Concepts of the `{ggplot2}` Package Pt. 2

-   `facet_*()` functions allow to create small multiples
-   `scale_*()` functions translate between aesthetics and properties
-   use `*_continuous()` for numerical data
-   ... and `*_discrete()` for categorical data
-   use `scale_color|fill_*()` to customize data-related colors
-   `coord_*()` functions interpret the positional aesthetics, e.g. create polar plots or work with spatial projections
-   be careful when adjusting axis limits:
    -   `scale_*_continuous(limits)` removes the data outside the range
    -   `coord_*(*lim)` keeps the data and zooms into the range
  

#### Data Communication

-   Visualizing data is helpful to gain insights and discover anomalies
-   The design process of data visualizations can be broken down to 4 levels:
    -   **Information**: understand the data and be accurate
    -   **Story**: be clear about the message of the visualization
    -   **Goal**: select charts that successfully transport the story
    -   **Visual form**: follow design rules and data visualization principles
  

#### Working with Annotations & Labels

-   style labels such as title, axis and legend texts with `theme()`
-   format data-related labels with the `labels` argument of `scale_*()`
-   adjust strip text with the `facet_*(labeller)` functionality
-   add data-related annotations with `geom_text|label()`
-   ... and data-unrelated annotations with `annotate()`
-   `annotation_custom(rasterGrob())` is a basic way to add images
-   `{ggtext}` allows to render labels with markdown and basic html
-   `{ggtext}` also allows to add dynamic linebreaks and images
-   `{ggrepel}` ensures clever placement of annotations
-   `ggforce::geom_mark_*()` provide a set of advanced annotations
  

#### Colorful Graphics

-   Pick the right palette type for your visualization
    -   use **sequential** to encode *numerical information with order*
    -   use **diverging** to encode *numerical information with a critical midpoint*
    -   use **qualitative** to encode *categorical information*
-   map the color with the highest contrast of a sequential palette to the most important value
-   for categories use a maximum of 6-8 colors
-   test for **color blindness** using a CVD simulator
-   check the **contrast** of your data and text colors
-   **avoid rainbow palettes!**
  

#### Working with Colors

-   use **categorical** palettes for **qualitative** data
    -  e.g. `scale_*_discrete()` and `scale_*_manual()` for custom options
    -  e.g. `scale_*_viridis_d` and `scale_*_brewer()` for pre-defined options
-   use **sequential or diverging** palettes for **quantitative** data
    -  e.g. `scale_*_gradient()` or `scale_*_gradient2()` for custom options
    -  e.g. `scale_*_viridis_c` and `scale_*_distiller()` for pre-defined options
-   various packages provide palettes incl. `scale_*` components
    - e.g. `{rcartocolors}`, `{scico}`, `{ggsci}`, `{ggthemes}`, `{nord}`
-   those and even more packages return palettes as vectors
    - modify and supply them to `scale_*_manual()` and `scale_*_gradientn()`
-   use **`after_scale`** to modify and recycle color scales 
  

#### Working with Layouts & Composition

-  **guides** are the combination of scales and legends
-  legends can be either modified with the `guide_*` function in `scale_*()` or `guides()`  and with the `theme()` component
qualitative
-  ... while quantitative guides are `colorbar`, `colorsteps` or `bins`
-  **`{patchwork}`** is the most modern and simplest way to compose plots
    -  use `+`, `/` and `|` to combine plots
    -  use `plot_layout()` to adjust the layout, widths and heights
    -  use `plot_annotation()` to add tags and general labels
    - use `inset_element()` to add inset graphics

