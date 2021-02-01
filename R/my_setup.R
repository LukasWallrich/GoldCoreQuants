# book-specific code to include on every page

knitr::opts_chunk$set(
  tidy='styler', 
  tidy.opts=list(strict=FALSE, scope = "line_breaks")
)

video <- function(url) {
  paste('<iframe src="', url, '" allowfullscreen width=80% height=350></iframe>')
}

video_code <- function(code) {
  video(paste0("https://www.youtube.com/embed/", code, "?rel=0&modestbranding=1&loop=1&playlist=", code))
}

local({r <- getOption("repos")
r["CRAN"] <- "https://cloud.r-project.org" 
options(repos=r)
})

if (!require("pacman")) install.packages("pacman")