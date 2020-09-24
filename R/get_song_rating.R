#' Get the rating from a song's filename
#' for a specific reviewer and formation
#' @inheritParams default_params_doc
#' @return a number if there is a rating given
#'   to that formation by that reviewer,
#'   else \link{NA}.
#' @examples
#'
#' song_filename <- get_song_path("Verliefd.md")
#' expect_equal(
#'   9,
#'   get_song_rating(
#'     reviewer_name = "Richel",
#'     song_filename = song_filename,
#'     formation = "KKK"
#'   )
#' )
#' 
#'   is.na(
#'     get_song_rating(
#'       reviewer_name = "Richel",
#'       song_filename = song_filename,
#'       formation = "JKK"
#'     )
#'   )
#' )
#' expect_equal(
#'   8,
#'   get_song_rating(
#'     reviewer_name = "Richel",
#'     song_filename = song_filename,
#'     formation = "HKM"
#'   )
#' )
#' 
#'   is.na(
#'     get_song_rating(
#'       reviewer_name = "Mark",
#'       song_filename = song_filename,
#'       formation = "KKK"
#'     )
#'   )
#' )
#' @export
get_song_rating <- function(
  song_filename,
  reviewer_name,
  formation
) {
  testthat::file.exists(song_filename))
  k3reviews::check_formation(formation, na_is_ok = FALSE)
  text <- readLines(song_filename, warn = FALSE)

  # Find the line of text of the desired reviewer
  is_found_indices <- stringr::str_detect(
    text,
    pattern = paste0(reviewer_name, "'s rating:.*")
  )
  if (sum(is_found_indices) != 1) return(NA)
  rating_text <- text[is_found_indices]

  # Find the rating specific for this formation, if specified
  rating <- stringr::str_match(
    string = rating_text,
    pattern = paste0("(rating:|and) (.|...)/10 .", formation, ".")
  )[1, 3]
  if (is.na(rating) || rating == "?") return(NA)
  as.numeric(rating)
}
