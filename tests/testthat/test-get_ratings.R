test_that("use", {
  filenames <- c(
    get_song_path("FransLiedje.md"),
    get_song_path("EnIkDans.md"),
    get_song_path("Beroemd.md"),
    get_song_path("EyaHoya.md")
  )
  df <- get_ratings(filenames)
  expect_equal(nrow(df), 8)

})
