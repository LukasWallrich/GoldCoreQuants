# Data visualisation

Being able to look at the data is a key step in data exploration, during the analysis and in the communication of results. R has a range of powerful tools to create graphs quickly, and then to develop them into a publication-ready format where helpful.

For an introduction to the Grammar of Graphics and ggplot2, the package that we will be using for visualisation, watch this video:

<iframe src=" https://www.youtube.com/embed/sk7TT5qM5Hw?rel=0&modestbranding=1&loop=1&playlist=sk7TT5qM5Hw " allowfullscreen width=80% height=350></iframe>

[Click here](https://drive.google.com/open?id=1UGp7own42PkPv-TLbX29sQUu2DfeaMUp) for the code used in the video


## ggplot2

We use the `ggplot2`-package because it offers a consistent way to create anything from simple exploratory plots to complex data visualisation. Each graph command needs certain parts:

* a call to the `ggplot`-function and the **data** as the first argument: `ggplot(gapminder, `
* a mapping of the **aesthetics**, i.e. of variables to visual elements. This uses the `aes`-function that is given to `ggplot` as the second argument: `aes(x=infant_mortality, y=fertility, col=continent))` (Note that two closing brackets are needed as this also completes the ggplot function call)
* a **geometry**, i.e. a type of chart, that is added with a plus-symbol and the function call, e.g., `+ geom_point()`
* optional elements such as labels that are included again with plus-symbols and function calls, e.g., `+ labs(title = "Association of infant mortality and fertility", subtitle="2010 data from gapminder.org")`

Multiple geometries can be layered on top of each other, for example to add trend lines to scatterplots. In that case, `aes()` functions can be included into the `geom_x()`-functions to make some of the mappings specific to certain geometries. This is done in the example below to color the points by continent without applying that aestethic to the line - if it was included in the main `aes()`-function, the plot would contain a separate coloured line for each continent. 

*Note:* Line breaks are completely up to you and can be used to make the code readable as long as the command does not appear complete too early - to keep it simple, there should always be an open bracket, a comma or a + before a line break within the command to create a ggplot-chart


```r
pacman::p_load(dslabs, dplyr, ggplot2)
gapminder2010 <- gapminder %>% filter(year==2010)

ggplot(gapminder2010, aes(x=infant_mortality, y=fertility)) +
  geom_point(aes(col=continent)) + geom_smooth() +
    ggtitle("Association of infant mortality and fertility", 
            subtitle="2010 data from gapminder.org")
```

```
## Warning: Removed 7 rows containing non-finite values (stat_smooth).
```

```
## Warning: Removed 7 rows containing missing values (geom_point).
```

<div class="figure" style="text-align: center">
<img src="03-data-visualisation_files/figure-html/ggplot-example-1.png" alt="A simple ggplot example" width="100%" />
<p class="caption">(\#fig:ggplot-example)A simple ggplot example</p>
</div>

## Opinionated visualisation

It is easy to find examples of misleading charts that should never have been published. However, even when all the elements of a chart are legitimately presented, the same data can still be used to suggest radically different conclusions. See the following example and follow the source link to read more about "opinionated" data visualisations. Apart from being critical when seeing charts, the take-away message from this is to be conscious of the power of small design choices - that is a power you should wield consciously when creating charts. 

<div class="figure" style="text-align: center">
<img src="./images/iraq-bloody-toll.png" alt="Same data, two messages (Source: &lt;a href=&quot;https://www.infoworld.com/article/3088166/why-how-to-lie-with-statistics-did-us-a-disservice.html&quot;&gt;infoworld.com&lt;/a&gt;)" width="100%" />
<p class="caption">(\#fig:two-messages)Same data, two messages (Source: <a href="https://www.infoworld.com/article/3088166/why-how-to-lie-with-statistics-did-us-a-disservice.html">infoworld.com</a>)</p>
</div>

## Further resources {#further-resources-visualisation}

* The [R Graphics Cookbook](https://r-graphics.org/){target="_blank"} by Winston Chang is available online with 150 "recipes" that cover everything from basic exploratory charts to colour-coded maps.
* The BBC graphics team has published their own [R Cookbook](https://bbc.github.io/rcookbook/){target="_blank"} with many tips for making charts that convey a clear message, as well as some custom functions for making clean publication-ready charts.
* Irizarry's *Introduction to Data Science* has a good chapter on [data visualisation principles](https://rafalab.github.io/dsbook/data-visualization-principles.html){target="_blank"}
  