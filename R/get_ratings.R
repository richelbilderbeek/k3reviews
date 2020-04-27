get_ratings <- function(filenames) {
  df_richel <- data.frame(
    filename = filenames, 
    formation = get_formations(filenames),
    rating = get_richels_ratings(filenames),
    reviewer = "Richel"
  )
  df_mark <- data.frame(
    filename = filenames, 
    formation = get_formations(filenames),
    rating = get_marks_ratings(filenames),
    reviewer = "Mark"
  )
  df <- rbind(df_richel, df_mark)
  df$filename <- as.character(df$filename)
  df$rating <- as.character(df$rating)
  df$formation <- as.character(df$formation)
  df$reviewer <- as.factor(df$reviewer)
  df
}

