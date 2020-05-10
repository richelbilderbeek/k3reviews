test_that("use", {
  expect_silent(get_song_path("10000Luchtballonnen.md"))
  expect_error(get_song_path("absent"))
})
