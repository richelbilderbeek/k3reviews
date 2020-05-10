#' Extract the rating from a song's filename
#' @inheritParams default_params_doc
#' @export
get_rating_for_formation <- function(
  reviewer_name,
  song_filename,
  formation
) {
  testthat::expect_true(file.exists(song_filename))
  k3reviews::check_formation(formation, na_is_ok = FALSE)
  text <- readLines(song_filename, warn = FALSE)

  # Find the line of text of the desired reviewer
  is_found_indices <- stringr::str_detect(
    text,
    pattern = paste0(reviewer_name, "'s rating:.*")
  )
  if (sum(is_found_indices) == 0) return("Not found")
  if (sum(is_found_indices) == 2) return("Found twice")
  rating_text <- text[is_found_indices]

  # Find the rating specific for this formation, if specified
  rating <- stringr::str_match(
    string = rating_text,
    pattern = paste0("(rating:|and) (.|...)/10 .", formation,".")
  )[1, 3]
  as.numeric(rating)
}

