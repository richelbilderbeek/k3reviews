test_that("use", {
  # Two formations
  # * Richel's rating: 9/10 (KKK) and 8/10 (HKM)
  expect_equal(
    9,
    get_rating_for_formation(
      reviewer_name = "Richel",
      song_filename = get_song_path("Verliefd.md"),
      formation = "KKK"
    )
  )
  expect_true(
    is.na(
      get_rating_for_formation(
        reviewer_name = "Richel",
        song_filename = get_song_path("Verliefd.md"),
        formation = "JKK"
      )
    )
  )
  expect_equal(
    8,
    get_rating_for_formation(
      reviewer_name = "Richel",
      song_filename = get_song_path("Verliefd.md"),
      formation = "HKM"
    )
  )
})
