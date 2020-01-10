### Project Overview

* [BioMove](#biomove)
* [NLMR (Neutral Landscape Models in R)](#nlmr)
* [Multidimensionality of Stability](#stability)
* [AFT (Animal Functional Type Approach)](#aft)
* [#TidyTuesday](#tidytuesday)


#### BioMove {#biomove}

The [DFG](https://www.dfg.de/en/funded_projects/current_projects_programmes/list/index.jsp?id=GRK) funded Research Training Group ['Integrating **Biodiversity Research** with **Movement Ecology** in dynamic agricultural landscapes (BioMove)'](https://www.biomove.org/) aims to:

1. link innovative individual research projects that overcome the apparent gap between movement ecology and biodiversity research, employing a joint conceptual framework;

2. strategically combine empirical, experimental and modelling approaches based in one common study area ([AgroScapeLab-Quillow](https://deims.org/270a41c4-33a8-4da6-9258-2ab10916f262), Brandenburg, Germany) of sufficient size to address questions of varying spatial scales;

3. pursue bottom-up and top-down approaches (i.e., study the influence of individual movement processes on biodiversity and infer movement mechanisms from biodiversity patterns, respectively) to better understand possible consequences of movement changes on biodiversity;

4. link impacts of land-use on resource availability, landscape structures and disturbance regimes to movement processes of organisms of different taxa to identify common factors that influence biodiversity patterns.

BioMove is a joint project of the [University of Potsdam](https://www.uni-potsdam.de/) together with [Freie Universität Berlin](https://www.fu-berlin.de/), [Leibniz Institute for Zoo and Wildlife Research (IZW)](http://www.izw-berlin.de/welcome.html) and [Leibniz Centre for Agricultural Landscape Research (ZALF)](http://www.zalf.de/en/Pages/ZALF.aspx) led by [Prof. Dr. Florian Jeltsch](https://www.uni-potsdam.de/ibb-vegnat/members/prof-dr-florian-jeltsch.html) that started in October 2015.


#### NLMR (Neutral Landscape Models in R) {#nlmr}

Neutral landscape models (NLMs) are algorithms which generate landscape patterns in the absence of biotic and abiotic processes. [With and King (1997)](https://doi.org/10.2307/3546007) outlined three uses for NLMs which were further highlighted by [Turner and Gardner (2015)](https://link.springer.com/book/10.1007%2F978-1-4939-2794-4):

1. coupling ecological models with NLMs to predict changes in ecological processes,
2. analyze the extent of structural deviation between real and neutral landscapes, and
3. development and testing of novel landscape metrics.

NLMs are often used for spatially explicit models to explore effects of changes in landscape structure on processes such as connectivity between suitable patches or disease spread. During the beginning of our PhD projects, Marco Sciaini and I were not happy about the possibilities to modify NLMs with the current software, especially in R that we use for the analyses of our simulations. This was the rise of the "Neutral Landscape Models in R" (NLMR) project (splitted into the two packages `{NLMR}` and `{landscapetools}`) under the main lead of Marco.

[`{NLMR}`](https://ropensci.github.io/NLMR/index.html) is an R package with a comprehensive collection of algorithms with which to simulate neutral landscape models (NLMs). In combination with [`{landscapetools}`](https://github.com/ropensci/landscapetools), a utility toolbox to modify simulated NLMs and other raster data, this suite of packages provides a utility toolbox which facilitates an easy workflow with simulated NLMs and other raster data. Both packages are reviewed by the amazing [rOpenSci](https://ropensci.org/) community and published in "Methods in Ecology and Evolution": [`NLMR` and `landscapetools`: An integrated environment for simulating and modifying neutral landscape models in R](https://doi.org/10.1111/2041-210X.13076).


#### Multidimensionality of Stability {#stability}

Ecosystems respond in various ways to disturbances and quantifying ecological stability therefore requires inspecting multiple stability properties, such as resistance, recovery, persistence and invariability. Correlations among these properties can reduce the dimensionality of stability, simplifying the study of environmental effects on ecosystems. In an important work, [Donohue et al. (2013)](https://doi.org/10.1111/ele.12086) showed that when disturbed by consumer removal, the dimensionality of stability increased in marine shore communities. However, it is unclear if such conclusions can be extrapolated to other kinds of disturbance. Integration of modelling and empirical studies is urgently needed, but impeded, according to our review, by the fact that a specific model type usually addresses a certain level of organization, and, respectively, can incorporate only mechanisms of resilience corresponding to this level. Additionally, processes corresponding to resilience mechanisms such as phenotypic plasticity and genetic variability can be incorporated in only one model class, the full-flex individual-based models. In this project we suggest that the individual-based framework, due to its flexibility, has a huge potential in integrating the processes covering mechanisms of resilience at all organization levels.

Using five process-based, spatially-explicit models we assessed how the intensity and the type of disturbance affect different stability metrics at the population and community levels [(Radchuk et al. 2019)](https://doi.org/10.1111/ele.13226). Our models are well tested and structurally realistic, and represent five different communities varying in species richness and the number of trophic levels. We tested the effect of three disturbance types (random, species‐specific, local) applied at four intensity levels and found that disturbance type but not intensity affected the dimensionality of stability and only at the population level. The dimensionality of stability also varied greatly among species and communities.


#### AFT (Animal Functional Type Approach) {#aft}

The need to transfer knowledge gained from single species to a more generalized approach has led to the development of categorization systems where species’ similarities in life strategies and traits are classified into ecological
groups like functional groups/types or guilds. While approaches in plant ecology undergo a steady improvement and refinement of methodologies, progression in animal ecology is lagging behind. Motivated by a [review led by Niels Blaum](https://link.springer.com/article/10.1007/s10531-011-9995-1), the aim of the AFT project is to initiate a further development of functional classification systems in animal ecology, comparable to recent developments in plant ecology.

In my Master's thesis I have used an animal functional type classification to investigate responses of birds to climatic and land use changes in semi-arid African savannas [using a trait-based and individual-based model](https://doi.org/10.1016/j.ecolmodel.2015.07.005). The functional types are characterized by different traits, in particular body mass, which is related to life-history traits (reproduction and mortality) and spatial scales (home range area and dispersal ability), as well as the use of vegetation structures for foraging and nesting, which is related to habitat quality and suitability. We tested the performance of the functional types in artificial landscapes varying in shrub:grass ratio and patchiness. We found that an increase in shrub encroachment and a decrease in habitat quality caused by land use mismanagement and climate change endangered all simulated bird functional types.

#### #TidyTuesday {#tidytuesday}

The [R4DS ("R for Data Science") online learning community](https://twitter.com/r4dscommunity) founded by [Jesse Maegan](https://www.jessemaegan.com/) is a great opportunity to train skills related to data wrangling and visualization and forms a network of mentors and learners. One of the first projects born out of this collaboration is [#TidyTuesday](https://github.com/rfordatascience/tidytuesday/blob/master/README.md), a weekly social data project founded by [Thomas Mock](https://thomasmock.netlify.com/) that focusses on understanding how to summarize and arrange data to make meaningful chttps://thomasmock.netlify.com/harts with `{ggplot2}`, `{tidyr}`, `{dplyr}` and other tools in the [`tidyverse`](https://www.tidyverse.org/) ecosystem.
Every Tuesday, R enthusiasts from all over the world clean, wrangle, tidy and visualize a new data set and [share it on Twitter using the hashtag #TidyTuesday](https://twitter.com/search?q=%23tidytuesday&src=typd). The intent is to provide a safe and supportive forum to practice their wrangling and data visualization skills.

Since 2019, I contribute to the #TidyTuesday to train my data science skills. It is so much fun to follow this project and to share ideas and codes - and of course to get inspired by the other contributions!
