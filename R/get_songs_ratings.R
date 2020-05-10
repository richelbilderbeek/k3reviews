#' Get ratings of multiple song filenames
#' @inheritParams default_params_doc
#' @examples
#' library(testthat)
#'
#' df <- get_songs_ratings(
#'   song_filenames = c(
#'     get_song_path("10000Luchtballonnen.md"),
#'     get_song_path("10000Luchtballonnen.md")
#'   )
#' )
#' expect_true("filename" %in% names(df))
#' expect_true("formation" %in% names(df))
#' expect_true("rating" %in% names(df))
#' expect_true("reviewer" %in% names(df))
#' @export
get_songs_ratings <- function(song_filenames) {
  df <- tibble::tibble(
    filename = NULL,
    formation = NULL,
    rating = NULL,
    reviewer = NULL
  )
  for (song_filename in song_filenames) {
    this_df <- k3reviews::get_song_ratings(song_filename)
    this_df$filename <- song_filename
    df <- rbind(df, this_df)
  }
  df$filename <- as.character(df$filename)
  df$rating <- as.character(df$rating)
  df$formation <- as.character(df$formation)
  df$reviewer <- as.factor(df$reviewer)
  df
}

