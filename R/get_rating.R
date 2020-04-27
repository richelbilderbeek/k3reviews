get_rating <- function(name, filename) {
  testthat::expect_true(file.exists(filename))
  text <- readLines(filename, warn = FALSE)
  is_found_indices <- stringr::str_detect(text, pattern = paste0(name, "'s rating:.*"))
  if (sum(is_found_indices) == 0) return("Not found")
  if (sum(is_found_indices) == 2) return("Found twice")
  rating_text <- text[is_found_indices]
  rating <- stringr::str_match(
    string = rating_text, 
    pattern = paste0(name, "'s rating: (.*)/10")
  )[1,2]
  if (is.na(rating)) return("Unknown rating")
  if (rating == "?") return("No rating")
  as.numeric(rating)
}

