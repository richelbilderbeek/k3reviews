test_that("use", {
  expect_equal(
    8, get_richels_rating(song_filename = get_song_path("FransLiedje.md"))
  )
  expect_equal(
    9,
    get_richels_rating(get_song_path("EnIkDans.md"))
  )
  expect_equal(
    7.5,
    get_richels_rating(get_song_path("AlsHetRegent.md"))
  )
  expect_equal(
    1,
    get_richels_rating(get_song_path("BlijvenStaan.md"))
  )
  expect_equal(
    "No rating",
    get_richels_rating(get_song_path("PuppyLove.md"))
  )
})
