#' Get ratings of multiple song filenames
#' @inheritParams default_params_doc
#' @export
get_ratings <- function(song_filenames) {
  df_richel <- data.frame(
    filename = song_filenames,
    formation = get_formations(song_filenames),
    rating = get_richels_ratings(song_filenames),
    reviewer = "Richel"
  )
  df_mark <- data.frame(
    filename = song_filenames,
    formation = get_formations(song_filenames),
    rating = get_marks_ratings(song_filenames),
    reviewer = "Mark"
  )
  df <- rbind(df_richel, df_mark)
  df$filename <- as.character(df$filename)
  df$rating <- as.character(df$rating)
  df$formation <- as.character(df$formation)
  df$reviewer <- as.factor(df$reviewer)
  df
}

