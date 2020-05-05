test_that("use", {
  filenames <- c(
    get_song_path("FransLiedje.md"),
    get_song_path("EnIkDans.md"),
    get_song_path("Beroemd.md"),
    get_song_path("EyaHoya.md")
  )
  df <- get_ratings(filenames)
  expect_equal(nrow(df), 8)
  names(df)
})

test_that("use", {
  skip("Doubly rated reviews")
  readLines(get_song_path("HandjesDraaien.md"))
  expect_silent(
    get_ratings(get_song_path("HandjesDraaien.md"))
  )
  expect_silent(
    get_ratings(get_song_path("TeleRomeo.md"))
  )
  expect_silent(
    get_ratings(get_song_path("Toveren.md"))
  )
  expect_silent(
    get_ratings(get_song_path("Verliefd.md"))
  )
  expect_silent(
    get_ratings(get_song_path("YaYaYippee.md"))
  )
})
