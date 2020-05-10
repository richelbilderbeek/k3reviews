#' Get all the ratings from one song's filename
#' @inheritParams default_params_doc
#' @examples
#' library(testthat)
#'
#' df <- get_song_ratings(
#'   song_filename = get_song_path("10000Luchtballonnen.md")
#' )
#' expect_true("filename" %in% names(df))
#' expect_true("formation" %in% names(df))
#' expect_true("rating" %in% names(df))
#' expect_true("reviewer" %in% names(df))
#' @seealso use \link{get_song_rating} to get the ratings
#'   specifically for a reviewer and formation
#' @export
get_song_ratings <- function(
  song_filename
) {
  testthat::expect_true(file.exists(song_filename))

  df <- tibble::as.tibble(
    expand.grid(
      formation = c("KKK", "JKK", "HKM"),
      reviewer_name = c("Richel", "Mark")
    )
  )
  df$rating <- NA
  for (row_index in seq_len(nrow(df))) {
    df$rating[row_index] <- k3reviews::extract_rating(
      song_filename = song_filename,
      reviewer_name = df$reviewer_name[row_index],
      formation = df$formation[row_index]
    )
  }
  df
}

