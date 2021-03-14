--- 
title: "Getting started with Quantitative Research Methods and R"
author: "Lukas Wallrich"
date: "Last updated: 2021-03-14"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "These are some of the course materials for the Goldsmiths' Core Quantitative Research Methods course. It is a living document that will be updated regularly."
favicon: "favicon.ico"
github-repo: "LukasWallrich/GoldCoreQuants"
urlcolor: blue
---

<!--

\newpage
\textcolor{red}{Please note that \textbf{the PDF version is a supplement with limited functionality} (e.g., no interactive exercises) - we recommend that you use the webpage as much as possible}.


-->






# Overview {-}

This guide supports the Core Quantitative Methods Course offered by the Goldsmiths' Graduate School. **It is a living document and currently focuses on R at the expense of broader considerations of quantitative research, but will grow over time - [please raise any issues and suggestions here](https://github.com/LukasWallrich/GoldCoreQuants/issues).** It does not follow the order of sessions in the course; instead, it is ordered in a way that might allow you to see connections and hopefully helps  to look things up more easily.

## Further sources

This guide does not aim to be comprehensive, but just to provide sufficient orientation. There are many fantastic free online resources that go further.

### Free online books

* Hadley Wickham, the leading brain behind the `tidyverse` packages, has co-authored [*R for Data Science*](https://r4ds.had.co.nz/index.html){target="_blank"} (with Garrett Grolemund). This book does not cover inferential statistics, but explains how to use R to process, describe and visualise data in line with the aproach taken in this course.
* The [*Learning statistics with R*](https://learningstatisticswithr.com/book/){target="_blank"} book by Danielle Navarro focuses on explaining the different statistical tests and their application in quite a lot of detail, including the underlying maths. It is written by a psychologist, and might therefore be particularly helpful for people from that discipline. 
*  [Statistical thinking for the 21st century](https://statsthinking21.github.io/statsthinking21-core-site/){target="_blank"} is a great modern book on statistics, which also offers this handy [R companion](https://statsthinking21.github.io/statsthinking21-R-site/index.html){target="_blank"} that covers most of what is needed for this course (though it is still a work-in-progress document).

### Our class exercises

We will work through most concepts in class exercises. They will appear week-by-week on Moodle, with the solutions released after class. However, you can also find a version of exercises and solutions [here](https://github.com/LukasWallrich/GoldCoreQuants-materials){target="_blank"}, which offers a better search of the content. The first time round, try the exercise without looking at the solution - but use this when you want to find something again.
  

### Paper/library books

* Charles Wheelan's *Naked Statistics: Stripping the Dread from the Data* is an easy-to-read and entertaining New York Times bestseller that introduces statistical thinking and some key concepts without distracting details. 
* Neil Burdess' *Starting Statistics: A short clear guide* covers the basic ground with more practical and technical detail.
* Also have a look at the **Module Guide** on the [learn.gold](https://learn.gold.ac.uk/){target="_blank"} Module Page that contains further recommendations, especially with regard to research methods.

### Other key resources

* The RStudio team created and collected a very helpful set of Cheat Sheets that cover the key elements of various R packages - have a look [here.](https://rstudio.com/resources/cheatsheets/){target="_blank"} For this course, the sheets on `dplyr` and `ggplot2` are the most important.
* [Stackoverflow](https://stackoverflow.com/questions/tagged/r){target="_blank"} is an online forum with a knewledgeable and welcoming support community. However, make sure to use Google and their search function first to check that your question hasn't already been answered and show what you already understand - if the same questions keep on getting asked or if the questions are very unclear, people volunteering their time to help can get a bit testy.

## Why R?

R is not the easiest statistical software to learn, but we are confident that it is the most useful. This [article](https://lindeloev.net/spss-is-dying/){target="_blank"} on why SPSS is dying provides some arguments for why that is the case, while Andy Fields (a leading stats teacher and textbook author) offers his case for learning R [here](https://padlet-uploads.storage.googleapis.com/290004173/0ce387ac71c38e2643953a2148c0cd81/why_r.html){target="_blank"}.
  
  
