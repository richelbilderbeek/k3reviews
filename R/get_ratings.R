#' Get ratings of multiple song filenames
#' @inheritParams default_params_doc
#' @examples
#' library(testthat)
#'
#' df <- get_ratings(get_song_path("10000Luchtballonnen.md"))
#' expect_true("filename" %in% names(df))
#' expect_true("formation" %in% names(df))
#' expect_true("rating" %in% names(df))
#' expect_true("reviewer" %in% names(df))
#' expect_equal(2, nrow(df))
#' @export
get_ratings <- function(song_filenames) {
  df <- tibble::tibble(
    filename = NULL,
    formation = NULL,
    rating = NULL,
    reviewer = NULL
  )
  for (song_index in seq_along(song_filenames)) {
    for (reviewer_name in c("Richel", "Mark")) {
      song_filename <- song_filenames[song_index]
      this_df <- get_rating(
        reviewer_name = reviewer_name,
        song_filename = song_filename
      )
      this_df$filename <- song_filename
      this_df$reviewer <- reviewer_name
      df <- rbind(df, this_df)
    }
  }
  df$filename <- as.character(df$filename)
  df$rating <- as.character(df$rating)
  df$formation <- as.character(df$formation)
  df$reviewer <- as.factor(df$reviewer)
  df
}

