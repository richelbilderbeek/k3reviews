test_that("use", {
  expect_equal(
    8,
    get_song_ratings(
      song_filename = get_song_path("FransLiedje.md")
    )
  )
  expect_equal(
    9,
    get_song_ratings("Richel", get_song_path("EnIkDans.md"))
  )
  expect_equal(
    "No rating",
    get_song_ratings("Richel", get_song_path("PuppyLove.md"))
  )
  expect_equal(
    "No rating",
    get_song_ratings("Richel", get_song_path("AlleBabys.md"))
  )
  # Two formations
  # * Richel's rating: 9/10 (KKK) and 8/10 (HKM)
  expect_equal(
    9,
    get_song_ratings(
      reviewer_name = "Richel",
      song_filename = get_song_path("Verliefd.md")
    )
  )
  expect_equal(
    8,
    get_song_ratings(
      reviewer_name = "Richel",
      song_filename = get_song_path("Verliefd.md")
    )
  )

  skip("WIP")
  expect_silent(
    get_song_ratings("Richel", get_song_path("HandjesDraaien.md"))
  )
  expect_silent(
    get_song_ratings("Richel", get_song_path("Verliefd.md"))
  )
  expect_silent(
    get_song_ratings(
      reviewer_name = "Richel",
      song_filename = get_song_path("TeleRomeo.md")
    )
  )
  expect_silent(
    get_song_ratings("Richel", get_song_path("Toveren.md"))
  )
  expect_silent(
    get_song_ratings("Richel", get_song_path("YaYaYippee.md"))
  )
})
