library(xml2)
library(magrittr)

###
# START ALPHABETICAL NUMBER FROM THIS MANY CHAPTERS
start_letters <- 11
###

files <- list.files("./_book", pattern = "\\.html$")

purrr::walk(files, function(file_name) {
x <- xml2::read_html(file.path("_book", file_name))
y <- xml_find_all(x, '//*[@class="chapter"]')
z <- y[xml_find_lgl(y,'not(number(substring(@data-level, 1, 1)+1))')]
z <- z[-1]
cntr <- 1
purrr::map(z, function(x) {
  chapter <- x %>% xml_attr("data-level") 
  if(stringr::str_sub(chapter, 1, 1) != LETTERS[cntr]) cntr <<- cntr + 1
  if (cntr < start_letters) {
  xml_text(x) <- chapter %>% stringr::str_replace(LETTERS[cntr], as.character(cntr))
  } else {
  xml_text(x) <- chapter %>% stringr::str_replace(LETTERS[cntr], LETTERS[cntr-start_letters+1])
}})

active_chapter <- xml_find_all(x, paste0('//*[@data-path="', file_name, '"]')) %>% 
  .[1] %>% xml_attr("data-level")

if (active_chapter %in% LETTERS) {
  if (which(active_chapter==LETTERS)<start_letters) {
    y <- xml_find_all(x, '//*[@class="header-section-number"]') %>% .[-1]
    purrr::walk(y, function(x) {
      xml_text(x) <- xml_text(x) %>% stringr::str_replace(active_chapter, as.character(which(active_chapter==LETTERS)))
    })
  } else {
    y <- xml_find_all(x, '//*[@class="header-section-number"]')
    xml_text(y[1]) <- xml_text(y[1]) %>% 
      stringr::str_replace("Seminar ", "") %>% 
      stringr::str_replace(as.character(which(active_chapter==LETTERS)), LETTERS[which(active_chapter==LETTERS)-start_letters+1])
    purrr::walk(y[-1], function(x) {
      xml_text(x) <- xml_text(x) %>% stringr::str_replace(active_chapter, LETTERS[which(active_chapter==LETTERS)-start_letters+1])
    })
    }
  
}

y <- xml_find_all(x, '//*[@class="active"]')
z <- y %>% xml_attr("data-level")

write_html(x, file.path("_book", file_name))
})
