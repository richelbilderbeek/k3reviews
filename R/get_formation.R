#' Get the formation for a song
#' @export
get_formation <- function(filename) {
  testthat::expect_true(file.exists(filename))
  text <- readLines(filename, warn = FALSE)
  is_found_indices <- stringr::str_detect(text, pattern = "Formation:.*")
  if (sum(is_found_indices) == 0) return("Not found")
  if (sum(is_found_indices) == 2) return("Found twice")
  formation_text <- text[is_found_indices]
  formation <- stringr::str_match(string = formation_text, pattern = "KKK|JKK|HKM")[1,1]
  if (is.na(formation)) return("Unknown formation")
  formation
}
