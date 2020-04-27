get_richels_ratings <- function(filenames) {
  testthat::expect_true(all(file.exists(filenames)))
  richels_ratings <- rep(0, length(filenames))
  for (i in seq_along(filenames)) {
    richels_ratings[i] <- get_richels_rating(filenames[i])
  }
  richels_ratings
}

