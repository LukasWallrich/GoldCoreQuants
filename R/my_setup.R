# book-specific code to include on every page

video <- function(url) {
  paste('<iframe src="', url, '" allowfullscreen width=80% height=350></iframe>')
}

video_code <- function(code) {
  video(paste0("https://www.youtube.com/embed/", code, "?rel=0&modestbranding=1&loop=1&playlist=", code))
}
