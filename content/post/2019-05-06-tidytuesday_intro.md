---
URL: /2019/05/06/tidytuesday_intro/
title: Hello, TidyTuesday!
author: Cédric
date: "2019-05-06"
image: img/banner/milkyway_RichardStrozynski.jpg
twitterImg: img/banner/milkyway_RichardStrozynski.png
layout: post
description: "During my after-thesis-vacation, I managed to tick off two long-term todo's on my list - set up a homepage and to participate in the #TidyTuesday challenge!"
tags:
    - DataViz
    - TidyTuesday
    - ggplot2
showtoc: false
---

<p style="font-size:14px">Header image by <a href="https://www.instagram.com/richard.strozynski/?hl=en">Richard Strozynski</a></p>

**During my after-thesis-vacation, I managed to tick off two long-term todo's on my list - set up a homepage and to participate in the [#TidyTuesday challenge](https://github.com/rfordatascience/tidytuesday/blob/master/README.md) to strengthen my data science and visualization skills and share my work and code tricks with the amazing Rstats community on Twitter. The #TidyTuesday challenge is a excellent opportunity to do so!**

### What is it about?

The [R4DS ("R for Data Science") online learning community](https://twitter.com/r4dscommunity) founded by [Jesse Maegan](https://www.jessemaegan.com/) is a great opportunity to train skills related to data wrangling and visualization and forms a network of mentors and learners. One of the first projects born out of this collaboration is #TidyTuesday - **a weekly social data project that focusses on understanding how to summarize and arrange data to make meaningful charts with `{ggplot2}`, `{tidyr}`, `{dplyr}` and other tools in the [`{tidyverse}`](https://www.tidyverse.org/) ecosystem** founded by [Thomas Mock](https://thomasmock.netlify.com/). The intent is to provide a safe and supportive forum to practice their wrangling and data visualization skills.  

Every Tuesday, R enthusiasts from all over the world clean, wrangle, tidy and visualize a new data set and [share it on Twitter using the hashtag #TidyTuesday](https://twitter.com/hashtag/tidytuesday). I follow the challenges quite some time and I am amazed by the high-quality visualizations some contributors share on their Twitter (check for example the work of [David Smale](https://twitter.com/committedtotape/media), [Harro Cyranka](https://twitter.com/harrocyranka/media) and [Jake Kaupp](https://twitter.com/jakekaupp/media) to name a few) but I during the PhD Thesis I always felt bad starting such a fun project. Since I submitted my thesis a few weeks ago and since I was anyway running deeper and deeper down the `{tidyverse}` hole during the PhD project, using their packages for all nearly all steps from data processing to statistical modelling and plotting, I finally gave it a try!

### First Contribution: Week 17

Highly motivated I opened the [challenge of the current week (Week 17)](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-04-23) - and what a bummer, my first contribution had to focus on anime data, one of the least favorite genres in my life. So I decided to subset the data to the only anime I know by heart: the lovely crafted Studio Ghibli movies which my partner is a big fan of (I mean, we even have a Totoro drawing hanging in our flat...)!

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Finally time for <a href="https://twitter.com/hashtag/TidyTuesday?src=hash&amp;ref_src=twsrc%5Etfw">#TidyTuesday</a> after submitting the thesis 😎 I am not really following the <a href="https://twitter.com/hashtag/anime?src=hash&amp;ref_src=twsrc%5Etfw">#anime</a> genre so I picked the only anime I know by heart - <a href="https://twitter.com/StudioGhibli?ref_src=twsrc%5Etfw">@StudioGhibli</a>🐉<br>Code: <a href="https://t.co/laRPpWPPE7">https://t.co/laRPpWPPE7</a><br><a href="https://twitter.com/hashtag/rstats?src=hash&amp;ref_src=twsrc%5Etfw">#rstats</a> <a href="https://twitter.com/hashtag/r4ds?src=hash&amp;ref_src=twsrc%5Etfw">#r4ds</a> <a href="https://twitter.com/hashtag/dataviz?src=hash&amp;ref_src=twsrc%5Etfw">#dataviz</a> <a href="https://twitter.com/hashtag/ggplot2?src=hash&amp;ref_src=twsrc%5Etfw">#ggplot2</a> <a href="https://twitter.com/hashtag/tidyverse?src=hash&amp;ref_src=twsrc%5Etfw">#tidyverse</a> <a href="https://t.co/WURUB94ymz"><img src="https://raw.githubusercontent.com/z3tt/TidyTuesday/main/plots/2019_17/2019_17_animes.png"></a></p>&mdash; Cédric Scherer (@CedScherer) <a href="https://twitter.com/CedScherer/status/1120740037119946752?ref_src=twsrc%5Etfw">April 23, 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

### Catching Up: Week 14 and 16

From this moment on, I was addicted and picked two other datasets, one on [bike traffic in Seattle](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-04-02) (Week 14):

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Catching up with the folks of <a href="https://twitter.com/R4DScommunity?ref_src=twsrc%5Etfw">@R4DScommunity</a> and the <a href="https://twitter.com/hashtag/TidyTuesday?src=hash&amp;ref_src=twsrc%5Etfw">#TidyTuesday</a> 📊 and picking the 🍒of the previous challenges! Visualization of seasonal trends in 🚴‍♀️ traffic in Seattle based on time of the day, month, and weekday/weekend.<br><a href="https://twitter.com/hashtag/dataviz?src=hash&amp;ref_src=twsrc%5Etfw">#dataviz</a> <a href="https://twitter.com/hashtag/rstats?src=hash&amp;ref_src=twsrc%5Etfw">#rstats</a> <a href="https://twitter.com/hashtag/r4ds?src=hash&amp;ref_src=twsrc%5Etfw">#r4ds</a> <a href="https://twitter.com/hashtag/tidyverse?src=hash&amp;ref_src=twsrc%5Etfw">#tidyverse</a> <a href="https://twitter.com/hashtag/ggplot2?src=hash&amp;ref_src=twsrc%5Etfw">#ggplot2</a> <a href="https://t.co/agGfEoZtSR"><img src="https://raw.githubusercontent.com/z3tt/TidyTuesday/main/plots/2019_14/2019_14_SeattleBikes_month.png"></a></p>&mdash; Cédric Scherer (@CedScherer) <a href="https://twitter.com/CedScherer/status/1120992373302071296?ref_src=twsrc%5Etfw">April 24, 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

... and [several data sets](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-04-16) in that were part of the inspiring [article "Mistakes, we’ve drawn a few - Learning from our errors in data visualisation" by The Economist](https://medium.economist.com/mistakes-weve-drawn-a-few-8cdd8a42d368?gi=8b5700cad420) (Week 16):

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">I can&#39;t stop! 🤓 Another <a href="https://twitter.com/hashtag/TidyTuesday?src=hash&amp;ref_src=twsrc%5Etfw">#TidyTuesday</a> contribution to catch up - week 2019-16. I tried to improve a few of the &quot;mistakes that <a href="https://twitter.com/TheEconomist?ref_src=twsrc%5Etfw">@TheEconomist</a> has drawn&quot; 📊📈 Article by <a href="https://twitter.com/MissSarahLeo?ref_src=twsrc%5Etfw">@MissSarahLeo</a>: <a href="https://t.co/ufVhnMU94Z">https://t.co/ufVhnMU94Z</a><br><a href="https://twitter.com/hashtag/dataviz?src=hash&amp;ref_src=twsrc%5Etfw">#dataviz</a> <a href="https://twitter.com/hashtag/rstats?src=hash&amp;ref_src=twsrc%5Etfw">#rstats</a> <a href="https://twitter.com/hashtag/r4ds?src=hash&amp;ref_src=twsrc%5Etfw">#r4ds</a> <a href="https://twitter.com/hashtag/tidyverse?src=hash&amp;ref_src=twsrc%5Etfw">#tidyverse</a> <a href="https://twitter.com/hashtag/ggplot2?src=hash&amp;ref_src=twsrc%5Etfw">#ggplot2</a> <a href="https://t.co/jxUnYzqXR6"><img src="https://raw.githubusercontent.com/z3tt/TidyTuesday/main/plots/2019_16/2019_16_DataVizMistakes_light.png"></a></p>&mdash; Cédric Scherer (@CedScherer) <a href="https://twitter.com/CedScherer/status/1121753785339142145?ref_src=twsrc%5Etfw">April 26, 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

I decided to stick to the overall theme as a collection of data viz which I may put together as a poster of my highlights - or maybe not. At some point, however, I likely going to use a different theme or a theme which fits the data more each week.

### Latest Contribution: Week 18

And finally my contribution to the challenge last week with a data set from a [study of Winger et al. (2019)](https://royalsocietypublishing.org/doi/10.1098/rspb.2019.0364#d3e550) on [bird collisions in Chicago](https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-04-30) (Week 18):

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr"><a href="https://twitter.com/hashtag/TidyTuesday?src=hash&amp;ref_src=twsrc%5Etfw">#TidyTuesday</a> challenge 2019-18:  What drives collision risk in nocturnally migrating <a href="https://twitter.com/hashtag/passerine?src=hash&amp;ref_src=twsrc%5Etfw">#passerine</a> <a href="https://twitter.com/hashtag/birds?src=hash&amp;ref_src=twsrc%5Etfw">#birds</a>? 🏫🕊️<a href="https://twitter.com/hashtag/rstats?src=hash&amp;ref_src=twsrc%5Etfw"><br>#rstats</a> <a href="https://twitter.com/hashtag/dataviz?src=hash&amp;ref_src=twsrc%5Etfw">#dataviz</a> <a href="https://twitter.com/hashtag/tidyverse?src=hash&amp;ref_src=twsrc%5Etfw">#tidyverse</a> <a href="https://twitter.com/hashtag/r4ds?src=hash&amp;ref_src=twsrc%5Etfw">#r4ds</a> <a href="https://twitter.com/hashtag/ggplot2?src=hash&amp;ref_src=twsrc%5Etfw">#ggplot2</a> <a href="https://twitter.com/hashtag/birdmigration?src=hash&amp;ref_src=twsrc%5Etfw">#birdmigration</a> <a href="https://twitter.com/hashtag/Chicago?src=hash&amp;ref_src=twsrc%5Etfw">#Chicago</a> <br>Original article: <a href="https://t.co/eqSKr4eFZl">https://t.co/eqSKr4eFZl</a> <a href="https://t.co/A9wfmBdOl1"><img src="https://raw.githubusercontent.com/z3tt/TidyTuesday/main/plots/2019_18/2019_18_BirdCollisions.png"></a></p>&mdash; Cédric Scherer (@CedScherer) <a href="https://twitter.com/CedScherer/status/1123331096429641731?ref_src=twsrc%5Etfw">April 30, 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>


You can find all these and upcoming  #TidyTuesday contributions in the [Visualization section](https://www.cedricscherer.com/top/dataviz/) and the corresponding codes on [my GitHub page](https://github.com/Z3tt/TidyTuesday)! In future blog posts, I am going to share some thoughts on why I picked a given chart type, which color palettes I use and some tips and tricks of styling your ggplots - stay tuned 🤓
