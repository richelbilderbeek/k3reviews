get_marks_ratings <- function(filenames) {
  testthat::expect_true(all(file.exists(filenames)))
  marks_ratings <- rep(0, length(filenames))
  for (i in seq_along(filenames)) {
    marks_ratings[i] <- get_marks_rating(filenames[i])
  }
  marks_ratings
}

