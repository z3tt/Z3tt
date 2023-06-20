---
URL: /2020/11/01/imdb-top-250-series-table-contest-rstudio/
title: What Do I Binge Next? A Detailed Overview of the Top 250 TV Shows
author: Cédric
date: "2020-11-01"
image: img/banner/imdb-southpark-artsy.png
twitterImg: img/banner/fly_RichardStrozynski.png
layout: post
description: "My contribution to the RStudio table contests visualizing relevant details of the top 250 TV shows as rated by IMDb users. I focused on displaying all the details I and my friends care about including in-line visualizations of rating trends and average runtime."
tags:
    - table
    - DataViz
    - R
    - gt
    - ggplot2
    - TV shows
    - IMDb
    - contest
showtoc: false
---

<a href="https://blog.rstudio.com/2020/12/23/winners-of-the-2020-rstudio-table-contest/"><span style='color:#28a87d;'><b>Update December 24<sup>th</sup> 2020:</b> My table made it into the <b>"Honourable Mentions"</b> section. Congrats to the winner Niels van der Velden and all the others that are mentioned!</span></a>

In consequence, I decided to visualize the top  250 TV shows according to IMDb users as a more helpful table then the [original one on IMDb](https://www.imdb.com/chart/toptv/) as [my contribution](https://community.rstudio.com/t/what-do-i-binge-next-an-overview-of-the-top-imdb-tv-shows-table-contest-submission/86409) to the ongoing [RStudio table contest](https://blog.rstudio.com/2020/09/15/announcing-the-2020-rstudio-table-contest/):

> Tables are a fantastic way to communicate lists of quantitative and qualitative information. Sometimes, tables can fall very short of their potential for greatness. But that was the past: we now have some excellent R packages at our disposal to generate well-designed and functional presentation tables. And because of this renaissance of table-making in R, we’re announcing a contest: The 2020 RStudio Table Contest!

<img src="https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_Top250_teaser.png" style="height: 100%; width: 100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/table-contest/IMDb_Top250.png', 'blank');"/>
<figcaption>Click on the preview to see the full table of all 250 TV shows.</figcaption>

##### What's shown?

The table shows relevant details of the top 250 TV shows as rated by IMDb users. I focused on displaying the details I and my friends care about: of course the ranking and overall rating but additionally the runtime per episode, genres, number of seasons and episodes, ID of the best episodes. But most importantly—the trend of ratings as the TV show progresses.

To visualize the runtime I decided to use a restrained, grey-toned, area-scaled circle. The normalized trends in episode ratings are visualized as stripes similar to the famous ["warming stripes" by Ed Hawkins](https://en.wikipedia.org/wiki/Warming_stripes):

![](/img/table-contest/southpark.png)
<figcaption>The “trending stripes” for 309 epsiodes of “Southpark”, covering 24 seasons in total.</figcaption>

In addition, a line indicates the average rating per season on a range from 1 to 10:

![](/img/table-contest/southpark_full.png)
<figcaption>The “trending stripes” of “Southpark”, including trends in average rating per season visualized as a step chart.</figcaption>

How does this help? Here are two more examples showing the dramatic (and completely deserved) fall of ratings for the last season of “Game of Thrones” as well as the brilliant  “Bojack Horseman” that got better and better over time:

![](/img/table-contest/got-bojack.png)
<figcaption>Two trending stripes illustrating  completely different courses of ratings as the series progresses.</figcaption>

While the line shows the absolute decrease or increase in rating across seasons, the colored stripes gives an idea how each episode performed relative to the series' average. Also, from the color intensity one can see that the worst episodes were far more off from the average rating than the best episodes in “Game of Thrones”, while there was not that much variation across episodes in “Bojack Horseman”.

The idea is built upon a personal project that I started in March 2020 after visualizing [IMDb ratings of "The Office" as contribution to #TidyTuesday](https://twitter.com/cedscherer/status/1242229041488433152) but I never had the drive to finish. Here is a visualization from back then that served as inspiration:

![](/img/table-contest/2019_02_TVsGoldenAge_rel100_rank.png)
<figcaption>Trends in season ratings for the top 100 of series comprising 3 to 12 seasons.</figcaption>

During the development of the table, I tried different versions showing either rating trends scaled across  or per show, absolute versus relative changes and  a version where each season and its average rating is indicated below the episode ratings:

![](/img/table-contest/snapshot_dev.png)
<figcaption>Screenshot of the development process of the trending stripes to show episode and season ratings across series.</figcaption>

##### Data Source and Preparation

The data is a mixture of scraped data using a modified[ Python script](ttps://github.com/WittmannF/imdb-tv-ratings/blob/master/IMDB_get_ratings.ipynb) (ranks, ratings, votes, year of release) and data downloaded from the [IMDb dataset interface](https://datasets.imdbws.com/) (title basics: original title, genre, runtime). The data was cleaned (e.g. correct wrong runtimes, title spellings etc.) and missing entries filled. (However, some series are returned as having 1 season only but have several actually and I didn't find a good workaround yet.)

##### R Packages Used

I used the [`{gt}` package](https://gt.rstudio.com/) which allows to generate static tables in R. It also allows adding [visualizations created with `{ggplot2}`](https://ggplot2.tidyverse.org/) as in-line plots such as simple sparkline or bar charts as demonstrated in [Thomas Mock](https://twitter.com/thomas_mock)'s great [`{gt}` tutorial](https://themockup.blog/posts/2020-09-04-10-table-rules-in-r/) that helped me along the way:

![](/img/table-contest/tables_thomas.png)
<figcaption>Two example tables with in-line ggplots from Thomas Mock's great tutorial series.</figcaption>

In addition, I used several `{tidyverse}` packages (`{dplyr}`, `{tidyr}`, `{readr}`, `{magrittr}`) for data preparation as well as `{reticulate}` o run the Python scrapping script, `{here}` for easy handling of paths, `{glue}` for string pasting and `{pkgconfig}` to deal with header names. The code to generate the table is [available on GitHub](https://github.com/Z3tt/Rstudio_TableContest_2020/blob/main/imdb_top_tvshows.Rmd).

##### Varieties

Since the Top 250 TV Shows table is quite long (by definition), I also created versions for the [Top 100](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_Top100.png) and [Top 50](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_Top50.png), respectively. I also found it interesting to look at particular genres in isolation and provide exemplary versions for the genres [Documentary](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_TopDocumentary.png), [Animation](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_TopAnimation.png), [Comedy](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_TopComedy.png), [Drama](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_TopDrama.png), and [Action](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_TopAction.png).

Here are is the full top 100 as well as all comedy series contained in the top 250:

![](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_Top100.png)
<figcaption>A variety showing the top 100 TV shows on IMDb users as of Nov 1<sup>st</sup> 2020.</figcaption>

![](https://raw.githubusercontent.com/Z3tt/Rstudio_TableContest_2020/main/output/IMDb_TopComedy.png)
<figcaption>A variety showing the top comedy TV shows contained in the top 250 TV shows as of Nov 1<sup>st</sup> 2020.</figcaption>

<hr>

All tables and the source codes are available on [GitHub](https://github.com/Z3tt/Rstudio_TableContest_2020/).
