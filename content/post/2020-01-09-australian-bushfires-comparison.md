---
URL: /2020/01/09/australian-bushfires-comparison-europe-world/
title: Comparing the Extent of the Australian Bushfires 2019/20
author: Cédric
date: "2020-01-09"
image: img/banner/fire_MichaelBarth.jpg
twitterImg: img/banner/fire_MichaelBarth.png
layout: post
description: "The massive bushfires in Australia are in the news worldwide. The incredible extent of burnt land and plume of smoke is hard to imagine so I have compared the areas to countries in Europe and worldwide."
tags:
    - DataViz
    - nature
    - weather
    - climate change
    - maps
    - ggplot2
    - TidyTuesday
showtoc: false
---
<p style="font-size:14px">Header image by <a href="https://unsplash.com/photos/OjA6F3pSccw">Michael Barth via Unsplash</a></p>

**During a series of massive bushfires across Australia, large areas have been burned and the fires are still burning. The bushfire is one of the worst wildfires globally seen in decades. Although Australia always experiences a fire season during the summer, this time it has been worse than usually: [27 people died and more than 2,000 homes have been destroyed or damaged alone in the worst-hit state of New South Wales](https://edition.cnn.com/2020/01/01/australia/australia-fires-explainer-intl-hnk-scli/index.html). 800 million animals have been affected since bushfires in NSW have started with an estimate of one billion animals impacted nationally say [ecologists from Sydney University](https://sydney.edu.au/news-opinion/news/2020/01/03/a-statement-about-the-480-million-animals-killed-in-nsw-bushfire.html). Thick smoke is drifting over the Pacific Ocean towards New Zealand and the South American continent. The massive fires have been fuelled by dry organic matter caused by extraordinary high temperatures and a prolonged period of drought which created excellent fire conditions.**

### Extents of burnt land and plume of smoke in comparison to European countries

As of the 6th of January, the estimated area burnt in Australia was [63,000 square kilometres (~24,000 square miles)](https://www.bbc.com/news/world-australia-50951043)—an area as large as the Latvian country in Europe. The plume of smoke created by the bushfires covered [an area of 5.5 million square kilometer (2.1 million square miles)](https://www.independent.co.uk/news/world/australasia/australia-fires-latest-smoke-forecast-nsw-victoria-food-water-a9266846.html) and [can be seen from space](https://www.businessinsider.de/international/australia-wildfires-space-satellite-pictures-smoke-new-zealand-2020-1/?r=US&IR=T). This area is as large as the area of Denmark including Greenland and the Faroe Islands, France, Spain, Sweden, Norway, Germany, Finland, Poland & Italy together!

<img src="/img/dataviz-posts/2020_02_AustralianFires_blog.png" alt="map-burnt-land-smoke-europe" style="width:100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/tidytuesday/2020_02_AustralianFires_blog.png', 'blank');"/>
<figcaption>Extent of burnt land and smoke caused by the Australian bushfires in relation to European countries.</figcaption>


### How much of your country's area would have been burnt if the bushfires had raged there?

As of 8th of January, the land burnt increased to [107,000 square kilometres (41,300 square miles)](https://www.theguardian.com/australia-news/datablog/ng-interactive/2019/dec/07/how-big-are-the-fires-burning-on-the-east-coast-of-australia-interactive-map). To imagine how large the area is, it might be simpler to compare the area to a country you are familiar with:

<img src="/img/dataviz-posts/2020_02_AustralianFires_Global_blog.png" alt="map-burnt-land-world" style="width:100%; object-fit: contain" onclick="window.open('https://www.cedricscherer.com/img/tidytuesday/2020_02_AustralianFires_Global_blog.png', 'blank');"/>
<figcaption>Burnt area in relation to countries worldwide.</figcaption>

### How to help victims of Australia’s fires

The [NY Times lists several organizations](https://www.nytimes.com/2020/01/06/world/australia/help-australia-fires.html) that are currently helping to provide support, emergency grants, and housing. You can support them too by donating money or clothing and household goods.

### How to create the visualizations?

You can find the codes for both maps on my [GitHub profile](https://github.com/Z3tt/TidyTuesday/blob/master/R/2020_02_AustralianFires.Rmd).
