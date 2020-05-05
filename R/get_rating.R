#' Extract the rating from a song's filename
#' @inheritParams default_params_doc
#' @export
get_rating <- function(reviewer_name, song_filename) {
  testthat::expect_true(file.exists(song_filename))
  text <- readLines(song_filename, warn = FALSE)
  is_found_indices <- stringr::str_detect(
    text,
    pattern = paste0(reviewer_name, "'s rating:.*")
  )
  if (sum(is_found_indices) == 0) return("Not found")
  if (sum(is_found_indices) == 2) return("Found twice")
  rating_text <- text[is_found_indices]
  double_rating <- stringr::str_match(
    string = rating_text,
    pattern = paste0(reviewer_name, "'s rating: (.*)/10 .* and (.*)/10")
  )[1,1]
  if (!is.na(double_rating)) return("Rated for two formations")

  rating <- stringr::str_match(
    string = rating_text,
    pattern = paste0(reviewer_name, "'s rating: (.*)/10")
  )[1,2]
  if (is.na(rating)) return("Unknown rating")
  if (rating == "?") return("No rating")
  as.numeric(rating)
}

