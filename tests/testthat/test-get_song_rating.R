test_that("simple cases", {
  expect_equal(
    8,
    get_song_rating(
      song_filename = get_song_path("FransLiedje.md"),
      reviewer_name = "Richel",
      formation = "KKK"
    )
  )
  expect_equal(
    9,
    get_song_rating(
      song_filename = get_song_path("EnIkDans.md"),
      reviewer_name = "Richel",
      formation = "JKK"
    )
  )
})

test_that("No ratings", {
  expect_true(
    is.na(
      get_song_rating(
        song_filename = get_song_path("PuppyLove.md"),
        reviewer_name = "Richel",
        formation = "KKK"
      )
    )
  )
  expect_true(
    is.na(
      get_song_rating(
        song_filename = get_song_path("AlleBabys.md"),
        reviewer_name = "Richel",
        formation = "KKK"
      )
    )
  )
})

test_that("multiple formations", {
  expect_equal(
    9,
    get_song_rating(
      song_filename = get_song_path("Verliefd.md"),
      reviewer_name = "Richel",
      formation = "KKK"
    )
  )
  expect_true(
    is.na(
      get_song_rating(
        song_filename = get_song_path("Verliefd.md"),
        reviewer_name = "Richel",
        formation = "JKK"
      )
    )
  )
  expect_equal(
    8,
    get_song_rating(
      song_filename = get_song_path("Verliefd.md"),
      reviewer_name = "Richel",
      formation = "HKM"
    )
  )
  expect_true(
    is.na(
      get_song_rating(
        song_filename = get_song_path("Verliefd.md"),
        reviewer_name = "Mark",
        formation = "KKK"
      )
    )
  )
})
