# book-specific code to include on every page

knitr::opts_chunk$set(
  tidy='styler', 
  tidy.opts=list(strict=FALSE, scope = "line_breaks")
)

video <- function(url) {
  paste('<iframe src="', url, '" allowfullscreen width=80% height=350></iframe>')
}

video_code <- function(code) {
  if (knitr::is_latex_output()) {
    return(paste0("\\textcolor{blue}{\\href{https://www.youtube.com/embed/", code, "?rel=0&modestbranding=1&loop=1&playlist=sk7TT5qM5Hw}{YouTube Link}}"))   
  }
  
  if (knitr::is_html_output()) {
    return(video(paste0("https://www.youtube.com/embed/", code, "?rel=0&modestbranding=1&loop=1&playlist=", code)))
}
}

local({r <- getOption("repos")
r["CRAN"] <- "https://cloud.r-project.org" 
options(repos=r)
})

if (!require("pacman")) install.packages("pacman")