test_that("use", {
  expect_equal(
    8, get_rating("Richel", get_song_path("FransLiedje.md"))
  )
  expect_equal(
    9,
    get_rating("Richel", get_song_path("EnIkDans.md"))
  )
  expect_equal(
    "No rating",
    get_rating("Richel", get_song_path("PuppyLove.md"))
  )
  expect_equal(
    "No rating",
    get_rating("Richel", get_song_path("AlleBabys.md"))
  )
})
