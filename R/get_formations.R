get_formations <- function(filenames) {
  testthat::expect_true(all(file.exists(filenames)))
  formations <- rep("", length(filenames))
  for (i in seq_along(filenames)) {
    formations[i] <- get_formation(filenames[i])
  }
  formations
}

